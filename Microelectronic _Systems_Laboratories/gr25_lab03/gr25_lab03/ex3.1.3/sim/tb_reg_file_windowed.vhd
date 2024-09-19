library IEEE;
use work.constants.all;
use IEEE.std_logic_1164.all;

entity TBFSM is
end TBFSM;

architecture TEST of TBFSM is
 
       signal call : std_logic := '0';
       signal clock : std_logic := '0';
       signal reset, enable, ret, fill, spill, mmu_ack, ra, rb, w : std_logic;
       signal CWPOUT, SWPOUT: std_logic_vector(log_port-1 downto 0);
       signal data_in, data_out_a, data_out_b : std_logic_vector(width-1 downto 0);
       signal add_w, add_r_a, add_r_b : std_logic_vector(address_ext_const-1 downto 0);

component register_file_windowed is
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
  cwp_out : out std_logic_vector(log_port_rf-1 downto 0); 
  swp_out : out std_logic_vector(log_port_rf-1 downto 0); 
  fill : out std_logic;   
  spill : out std_logic    
 );
end component;

begin 

reg_file_wind:register_file_windowed
generic map (width_word => width, M => mw, N  => nw, F_reg => fw, address_ext => address_ext_const, log_port_rf => log_port)
PORT MAP (data_in, data_out_a, data_out_b, add_r_a, add_r_b, add_w, ra, rb, w, clock, reset, enable, call, ret, mmu_ack, cwpout, swpout, fill, spill);
 
 reset<='0', '1' after 4 ns, '0' after 8 ns;
 mmu_ack <= '1';
 call<='1' after 10 ns, '0' after 12 ns,'1' after 20 ns, '0' after 22 ns, '1' after 36 ns,
 '0' after 38 ns, '1' after 52 ns, '0' after 54 ns, '1' after 82 ns, '0' after 84 ns, '1' after 88 ns, '0' after 90 ns;
 ret<='0', '1' after 66 ns, '0' after 68 ns, '1' after 98 ns, '0' after 100 ns, '1' after 114 ns,
 '0' after 116 ns, '1' after 130 ns, '0' after 132 ns;

 PCLOCK : process(CLocK)
 begin
  CLocK <= not(CLocK) after 1 ns; 
 end process;
 
end TEST;

