
library IEEE;
use IEEE.std_logic_1164.all; 
use WORK.constants.all;  


entity  register_file_windowed is
 generic ( 
  width_word : integer := width;
  F_reg : integer := fw;    -- # of windows
  M : integer := mw;    -- # of global registers
  N : natural := nw;    -- # of registers in each IN-LOCAL-OUT window
  address_ext : integer := address_ext_const;
  log_port_rf : integer := log_port
 );
 port (
  -- 1 write port, 2 read ports
  data_in_port_w : in std_logic_vector(width_word-1 downto 0);
  data_out_port_a : out std_logic_vector(width_word-1 downto 0);
  data_out_port_b : out std_logic_vector(width_word-1 downto 0);
  address_port_read_one : in std_logic_vector(address_ext-1 downto 0);
  address_port_read_two : in std_logic_vector(address_ext-1 downto 0);
  address_port_write : in std_logic_vector(address_ext-1 downto 0);
  r_signal_port_a : in std_logic;
  r_signal_port_b : in std_logic;
  w_signal : in std_logic;
  --synchronous reset active high
  clock, reset, enable: in std_logic;
  -- Control signals
  call : in std_logic;    
  ret : in std_logic;    
  mmu_ack : in std_logic;    
  cwp_out : out std_logic_vector(log_port_rf-1 downto 0); --actually this is not a output of the RF_windowed, but we put here to see the behavior in the testbench
  swp_out : out std_logic_vector(log_port_rf-1 downto 0); 
  fill : out std_logic;   
  spill : out std_logic    
 );

end register_file_windowed;


architecture struct of register_file_windowed is

 component address_converter is
 generic ( 
  NBIT_WIDTH : integer := width;
  F : integer := fw;    -- # of windows
  M : integer := mw;    -- # of global registers
  N : natural := nw;    -- # of registers in each IN-LOCAL-OUT window
  depth : integer := depth_w;   -- # of registers in the physical RF = f*(2*n)+n+m
  address_width : integer := address_width_const; -- physical address
  address_ext : integer := address_ext_const  -- virtual address
 );
 port (
  -- Virtual addresses
  address_port_read_one : in std_logic_vector(address_ext-1 downto 0);
  address_port_read_two : in std_logic_vector(address_ext-1 downto 0);
  address_port_write : in std_logic_vector(address_ext-1 downto 0);
  cwp_in : in std_logic_vector( log_port-1 downto 0); -- register_management_unit will provide it
  -- Physical addresses
  address_port_read_one_out : out std_logic_vector(address_width-1 downto 0);
  address_port_read_two_out : out std_logic_vector(address_width-1 downto 0);
  address_port_write_out : out std_logic_vector(address_width-1 downto 0)
 );
 end component;
 
 component register_file is
GENERIC (NBIT: integer:= NumBit;
		NADDRESS: integer:= N_bit_address);
 port ( CLK: 		IN std_logic;
         RESET: 	IN std_logic;
	 ENABLE: 	IN std_logic;
	 RD1: 		IN std_logic;
	 RD2: 		IN std_logic;
	 WR: 		IN std_logic;
	 ADD_WR: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 ADD_RD1: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 ADD_RD2: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 DATAIN: 	IN std_logic_vector(NumBit-1 downto 0);
     OUT1: 		OUT std_logic_vector(NumBit-1 downto 0);
	 OUT2: 		OUT std_logic_vector(NumBit-1 downto 0));
 end component;

 component control_unit is
 port (
  clock, reset: in std_logic;
  call : in std_logic;    -- active high
  ret : in std_logic;    -- active high
  mmu_ack : in std_logic;    -- active high
  cwp_out : out std_logic_vector(log_port-1 downto 0); -- Cwp is used internally, this output is for the address converter
  swp_out : out std_logic_vector(log_port-1 downto 0); -- Swp is for memory management unit
  fill : out std_logic;    -- when high asks for a FILL operation
  spill : out std_logic    -- when high asks for a SPILL operation
 );
 end component;

 signal cwp_in : std_logic_vector( log_port-1 downto 0);
 signal address_port_read_one_out, address_port_read_two_out, address_port_write_out : std_logic_vector(address_width_const-1 downto 0);

 
begin

 AC : address_converter
 generic map( NBIT_WIDTH => width, F => F_reg, M => mw, N => nw, depth => depth_w, address_width => address_width_const, address_ext => address_ext_const)
 port map ( address_port_read_one => address_port_read_one, address_port_read_two => address_port_read_two, address_port_write => address_port_write, cwp_in => cwp_in, address_port_read_one_out => address_port_read_one_out, address_port_read_two_out => address_port_read_two_out, address_port_write_out => address_port_write_out);

 RF: register_file
 generic map(NBIT => NumBit, NADDRESS => N_bit_address)
 port map (DATAIN => data_in_port_w, OUT1 => data_out_port_a, OUT2 => data_out_port_b, ADD_RD1 => address_port_read_one_out, ADD_RD2 => address_port_read_two_out, ADD_WR => address_port_write_out, RD1 => r_signal_port_a, RD2 => r_signal_port_b, WR => w_signal, RESET => reset, CLK => clock, ENABLE => enable);
 
 CU: control_unit
 port map (clock => clock, reset => reset, call => call, ret => ret, mmu_ack => mmu_ack, cwp_out => cwp_in, swp_out => swp_out, fill => fill, spill => spill);
        
  cwp_out <= cwp_in;
end struct;

