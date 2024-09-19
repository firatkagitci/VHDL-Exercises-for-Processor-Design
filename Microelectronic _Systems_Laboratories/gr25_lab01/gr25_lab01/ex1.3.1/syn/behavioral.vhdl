
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_MUX21_GENERIC_NBIT5 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_MUX21_GENERIC_NBIT5;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_MUX21_GENERIC_NBIT5.all;

entity MUX21_GENERIC_NBIT5 is

   port( A, B : in std_logic_vector (4 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (4 downto 0));

end MUX21_GENERIC_NBIT5;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT5 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U12 : MUX2_X1 port map( A => B(4), B => A(4), S => SEL, Z => Y(4));
   U13 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U14 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U15 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U16 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;
