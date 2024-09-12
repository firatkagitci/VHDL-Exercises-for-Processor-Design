library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
--use IEEE.std_logic_arith.all;
use work.constants.all;

entity address_converter is
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
end address_converter;

architecture Behavioral of address_converter is
 signal address_port_read_one_out_signal: std_logic_vector(address_width_const-1 downto 0);
 signal address_port_read_two_out_signal: std_logic_vector(address_width_const-1 downto 0);
 signal address_port_write_out_signal: std_logic_vector(address_width_const-1 downto 0);


begin

 address_conversion : process (address_port_read_one,address_port_read_two,address_port_write, cwp_in)
 
 variable cwp : integer;
 variable add_rd_one : integer;
 variable add_rd_two : integer;
 variable add_wr : integer;

  begin
   cwp := to_integer(unsigned(cwp_in));
   add_rd_one := to_integer(unsigned(address_port_read_one));
   add_rd_two := to_integer(unsigned(address_port_read_two));
   add_wr := to_integer(unsigned(address_port_write));

   -- PHYSICAL ADDRESS = VIRTUAL ADDRESS + CWP*(LOCAL+IN_OUT);

   if(to_integer(unsigned(address_port_read_one)) < mw) then -- if the address is referred to the global register (if the CPU needs a data stored in global registers)
            -- we assumed that the globals are the first M registers
    address_port_read_one_out <= address_port_read_one_out_signal;
   else    -- translate the address sent by CPU on n bits (where n is the size of the window not considering the global)
    address_port_read_one_out <= std_logic_vector(to_unsigned(cwp*(2*nw)+add_rd_one, address_port_read_one_out'length));   
   end if;

   if(to_integer(unsigned(address_port_read_two)) < mw) then
    address_port_read_two_out <= address_port_read_two_out_signal;
   else 
    address_port_read_two_out <= std_logic_vector(to_unsigned(cwp*(2*nw)+add_rd_two, address_port_read_two_out'length));
   end if;
   
   if(to_integer(unsigned(address_port_write)) < mw) then
    address_port_write_out <= address_port_write_out_signal;
   else 
    address_port_write_out <= std_logic_vector(to_unsigned(cwp*(2*nw)+add_wr, address_port_write_out'length));
   end if;
 end process;

address_port_read_one_out_signal <= std_logic_vector(resize(unsigned(address_port_read_one), address_port_read_one_out'length));
address_port_read_two_out_signal <= std_logic_vector(resize(unsigned(address_port_read_two), address_port_read_two_out'length));
address_port_write_out_signal <= std_logic_vector(resize(unsigned(address_port_write), address_port_write_out'length));


end Behavioral;
