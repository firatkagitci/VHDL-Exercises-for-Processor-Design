
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_adder_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_adder_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_7;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_7 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_6;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_6 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_5;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_5 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_4;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_4 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_3;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_3 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_2;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_2 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_1;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_1 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_15 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_15;

architecture SYN_BEHAVIORAL of RCA_NBIT4_15 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_14 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_14;

architecture SYN_BEHAVIORAL of RCA_NBIT4_14 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_13 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_13;

architecture SYN_BEHAVIORAL of RCA_NBIT4_13 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_12 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_12;

architecture SYN_BEHAVIORAL of RCA_NBIT4_12 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_11 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_11;

architecture SYN_BEHAVIORAL of RCA_NBIT4_11 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_10 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_10;

architecture SYN_BEHAVIORAL of RCA_NBIT4_10 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_9 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_9;

architecture SYN_BEHAVIORAL of RCA_NBIT4_9 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_8 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_8;

architecture SYN_BEHAVIORAL of RCA_NBIT4_8 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_7 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_7;

architecture SYN_BEHAVIORAL of RCA_NBIT4_7 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_6 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_6;

architecture SYN_BEHAVIORAL of RCA_NBIT4_6 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_5 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_5;

architecture SYN_BEHAVIORAL of RCA_NBIT4_5 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_4;

architecture SYN_BEHAVIORAL of RCA_NBIT4_4 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_3 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_3;

architecture SYN_BEHAVIORAL of RCA_NBIT4_3 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_2 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_2;

architecture SYN_BEHAVIORAL of RCA_NBIT4_2 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_1 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_1;

architecture SYN_BEHAVIORAL of RCA_NBIT4_1 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_7 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_7;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_7 is

   component MUX21_GENERIC_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_13
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_14
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1000, n_1001 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_14 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1000);
   ADDER_two : RCA_NBIT4_13 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1001);
   MUX : MUX21_GENERIC_NBIT4_7 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_6 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_6;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_6 is

   component MUX21_GENERIC_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_11
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_12
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1002, n_1003 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_12 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1002);
   ADDER_two : RCA_NBIT4_11 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1003);
   MUX : MUX21_GENERIC_NBIT4_6 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_5 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_5;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_5 is

   component MUX21_GENERIC_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_9
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_10
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1004, n_1005 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_10 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1004);
   ADDER_two : RCA_NBIT4_9 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1005);
   MUX : MUX21_GENERIC_NBIT4_5 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_4 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_4;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_4 is

   component MUX21_GENERIC_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_7
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_8
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1006, n_1007 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_8 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1006);
   ADDER_two : RCA_NBIT4_7 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1007);
   MUX : MUX21_GENERIC_NBIT4_4 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_3 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_3;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_3 is

   component MUX21_GENERIC_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_5
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_6
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1008, n_1009 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_6 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1008);
   ADDER_two : RCA_NBIT4_5 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1009);
   MUX : MUX21_GENERIC_NBIT4_3 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_2 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_2;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_2 is

   component MUX21_GENERIC_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_3
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1010, n_1011 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_4 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1010);
   ADDER_two : RCA_NBIT4_3 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1011);
   MUX : MUX21_GENERIC_NBIT4_2 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_1 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_1;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_1 is

   component MUX21_GENERIC_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_1
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_2
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1012, n_1013 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_2 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1012);
   ADDER_two : RCA_NBIT4_1 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1013);
   MUX : MUX21_GENERIC_NBIT4_1 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_26 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_26;

architecture SYN_BEHAVIORAL of PG_block_26 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_25 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_25;

architecture SYN_BEHAVIORAL of PG_block_25 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_24 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_24;

architecture SYN_BEHAVIORAL of PG_block_24 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_23 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_23;

architecture SYN_BEHAVIORAL of PG_block_23 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_22 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_22;

architecture SYN_BEHAVIORAL of PG_block_22 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_21 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_21;

architecture SYN_BEHAVIORAL of PG_block_21 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_20 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_20;

architecture SYN_BEHAVIORAL of PG_block_20 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_19 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_19;

architecture SYN_BEHAVIORAL of PG_block_19 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_18 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_18;

architecture SYN_BEHAVIORAL of PG_block_18 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_17 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_17;

architecture SYN_BEHAVIORAL of PG_block_17 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_16 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_16;

architecture SYN_BEHAVIORAL of PG_block_16 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_15 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_15;

architecture SYN_BEHAVIORAL of PG_block_15 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_14 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_14;

architecture SYN_BEHAVIORAL of PG_block_14 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_13 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_13;

architecture SYN_BEHAVIORAL of PG_block_13 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_12 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_12;

architecture SYN_BEHAVIORAL of PG_block_12 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_11 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_11;

architecture SYN_BEHAVIORAL of PG_block_11 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_10 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_10;

architecture SYN_BEHAVIORAL of PG_block_10 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_9 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_9;

architecture SYN_BEHAVIORAL of PG_block_9 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_8 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_8;

architecture SYN_BEHAVIORAL of PG_block_8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_7 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_7;

architecture SYN_BEHAVIORAL of PG_block_7 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_6 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_6;

architecture SYN_BEHAVIORAL of PG_block_6 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_5 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_5;

architecture SYN_BEHAVIORAL of PG_block_5 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_4 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_4;

architecture SYN_BEHAVIORAL of PG_block_4 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_3 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_3;

architecture SYN_BEHAVIORAL of PG_block_3 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_2 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_2;

architecture SYN_BEHAVIORAL of PG_block_2 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_1 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_1;

architecture SYN_BEHAVIORAL of PG_block_1 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_9 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_9;

architecture SYN_BEHAVIORAL of G_block_9 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_8 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_8;

architecture SYN_BEHAVIORAL of G_block_8 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_7 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_7;

architecture SYN_BEHAVIORAL of G_block_7 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_6 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_6;

architecture SYN_BEHAVIORAL of G_block_6 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_5 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_5;

architecture SYN_BEHAVIORAL of G_block_5 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_4 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_4;

architecture SYN_BEHAVIORAL of G_block_4 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_3 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_3;

architecture SYN_BEHAVIORAL of G_block_3 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_2 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_2;

architecture SYN_BEHAVIORAL of G_block_2 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_1 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_1;

architecture SYN_BEHAVIORAL of G_block_1 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4_0;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4_0 is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;

begin
   
   U1 : MUX2_X1 port map( A => B(3), B => A(3), S => SEL, Z => Y(3));
   U2 : MUX2_X1 port map( A => B(2), B => A(2), S => SEL, Z => Y(2));
   U3 : MUX2_X1 port map( A => B(1), B => A(1), S => SEL, Z => Y(1));
   U4 : MUX2_X1 port map( A => B(0), B => A(0), S => SEL, Z => Y(0));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4_0 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4_0;

architecture SYN_BEHAVIORAL of RCA_NBIT4_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal r60_carry_1_port, r60_carry_2_port, r60_carry_3_port : std_logic;

begin
   
   r60_U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => Ci, CO => 
                           r60_carry_1_port, S => S(0));
   r60_U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => r60_carry_1_port, CO 
                           => r60_carry_2_port, S => S(1));
   r60_U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => r60_carry_2_port, CO 
                           => r60_carry_3_port, S => S(2));
   r60_U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => r60_carry_3_port, CO 
                           => Co, S => S(3));

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4_0 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4_0;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4_0 is

   component MUX21_GENERIC_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4_15
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT4_0
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1014, n_1015 : std_logic;

begin
   
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';
   ADDER_one : RCA_NBIT4_0 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1014);
   ADDER_two : RCA_NBIT4_15 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), 
                           A(1) => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1015);
   MUX : MUX21_GENERIC_NBIT4_0 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block_0 is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block_0;

architecture SYN_BEHAVIORAL of PG_block_0 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => PG_OUT_G);
   U2 : AOI21_X1 port map( B1 => PG_IN_second_P, B2 => PG_IN_first_G, A => 
                           PG_IN_second_G, ZN => n1);
   U3 : AND2_X1 port map( A1 => PG_IN_first_P, A2 => PG_IN_second_P, ZN => 
                           PG_OUT_PG);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block_0 is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block_0;

architecture SYN_BEHAVIORAL of G_block_0 is

   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1 : std_logic;

begin
   
   U1 : INV_X1 port map( A => n1, ZN => G_OUT);
   U2 : AOI21_X1 port map( B1 => PG_IN_1, B2 => G_IN, A => PG_IN_2, ZN => n1);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity sum_generator_NBIT_GEN32_NBIT_GEN_BLOCK8 is

   port( ADD_1, ADD_2 : in std_logic_vector (31 downto 0);  Ci : in 
         std_logic_vector (7 downto 0);  SUM : out std_logic_vector (31 downto 
         0));

end sum_generator_NBIT_GEN32_NBIT_GEN_BLOCK8;

architecture SYN_STRUCTURAL of sum_generator_NBIT_GEN32_NBIT_GEN_BLOCK8 is

   component carry_select_block_NBIT4_1
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_2
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_3
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_4
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_5
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_6
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_7
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;
   
   component carry_select_block_NBIT4_0
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;

begin
   
   sum_gen_1 : carry_select_block_NBIT4_0 port map( INPUT_1(3) => ADD_1(3), 
                           INPUT_1(2) => ADD_1(2), INPUT_1(1) => ADD_1(1), 
                           INPUT_1(0) => ADD_1(0), INPUT_2(3) => ADD_2(3), 
                           INPUT_2(2) => ADD_2(2), INPUT_2(1) => ADD_2(1), 
                           INPUT_2(0) => ADD_2(0), Ci_sel => Ci(0), SUM(3) => 
                           SUM(3), SUM(2) => SUM(2), SUM(1) => SUM(1), SUM(0) 
                           => SUM(0));
   sum_gen_2 : carry_select_block_NBIT4_7 port map( INPUT_1(3) => ADD_1(7), 
                           INPUT_1(2) => ADD_1(6), INPUT_1(1) => ADD_1(5), 
                           INPUT_1(0) => ADD_1(4), INPUT_2(3) => ADD_2(7), 
                           INPUT_2(2) => ADD_2(6), INPUT_2(1) => ADD_2(5), 
                           INPUT_2(0) => ADD_2(4), Ci_sel => Ci(1), SUM(3) => 
                           SUM(7), SUM(2) => SUM(6), SUM(1) => SUM(5), SUM(0) 
                           => SUM(4));
   sum_gen_3 : carry_select_block_NBIT4_6 port map( INPUT_1(3) => ADD_1(11), 
                           INPUT_1(2) => ADD_1(10), INPUT_1(1) => ADD_1(9), 
                           INPUT_1(0) => ADD_1(8), INPUT_2(3) => ADD_2(11), 
                           INPUT_2(2) => ADD_2(10), INPUT_2(1) => ADD_2(9), 
                           INPUT_2(0) => ADD_2(8), Ci_sel => Ci(2), SUM(3) => 
                           SUM(11), SUM(2) => SUM(10), SUM(1) => SUM(9), SUM(0)
                           => SUM(8));
   sum_gen_4 : carry_select_block_NBIT4_5 port map( INPUT_1(3) => ADD_1(15), 
                           INPUT_1(2) => ADD_1(14), INPUT_1(1) => ADD_1(13), 
                           INPUT_1(0) => ADD_1(12), INPUT_2(3) => ADD_2(15), 
                           INPUT_2(2) => ADD_2(14), INPUT_2(1) => ADD_2(13), 
                           INPUT_2(0) => ADD_2(12), Ci_sel => Ci(3), SUM(3) => 
                           SUM(15), SUM(2) => SUM(14), SUM(1) => SUM(13), 
                           SUM(0) => SUM(12));
   sum_gen_5 : carry_select_block_NBIT4_4 port map( INPUT_1(3) => ADD_1(19), 
                           INPUT_1(2) => ADD_1(18), INPUT_1(1) => ADD_1(17), 
                           INPUT_1(0) => ADD_1(16), INPUT_2(3) => ADD_2(19), 
                           INPUT_2(2) => ADD_2(18), INPUT_2(1) => ADD_2(17), 
                           INPUT_2(0) => ADD_2(16), Ci_sel => Ci(4), SUM(3) => 
                           SUM(19), SUM(2) => SUM(18), SUM(1) => SUM(17), 
                           SUM(0) => SUM(16));
   sum_gen_6 : carry_select_block_NBIT4_3 port map( INPUT_1(3) => ADD_1(23), 
                           INPUT_1(2) => ADD_1(22), INPUT_1(1) => ADD_1(21), 
                           INPUT_1(0) => ADD_1(20), INPUT_2(3) => ADD_2(23), 
                           INPUT_2(2) => ADD_2(22), INPUT_2(1) => ADD_2(21), 
                           INPUT_2(0) => ADD_2(20), Ci_sel => Ci(5), SUM(3) => 
                           SUM(23), SUM(2) => SUM(22), SUM(1) => SUM(21), 
                           SUM(0) => SUM(20));
   sum_gen_7 : carry_select_block_NBIT4_2 port map( INPUT_1(3) => ADD_1(27), 
                           INPUT_1(2) => ADD_1(26), INPUT_1(1) => ADD_1(25), 
                           INPUT_1(0) => ADD_1(24), INPUT_2(3) => ADD_2(27), 
                           INPUT_2(2) => ADD_2(26), INPUT_2(1) => ADD_2(25), 
                           INPUT_2(0) => ADD_2(24), Ci_sel => Ci(6), SUM(3) => 
                           SUM(27), SUM(2) => SUM(26), SUM(1) => SUM(25), 
                           SUM(0) => SUM(24));
   sum_gen_8 : carry_select_block_NBIT4_1 port map( INPUT_1(3) => ADD_1(31), 
                           INPUT_1(2) => ADD_1(30), INPUT_1(1) => ADD_1(29), 
                           INPUT_1(0) => ADD_1(28), INPUT_2(3) => ADD_2(31), 
                           INPUT_2(2) => ADD_2(30), INPUT_2(1) => ADD_2(29), 
                           INPUT_2(0) => ADD_2(28), Ci_sel => Ci(7), SUM(3) => 
                           SUM(31), SUM(2) => SUM(30), SUM(1) => SUM(29), 
                           SUM(0) => SUM(28));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_generator_NBIT_GEN32_NBIT_Co8_N_ITERATION5 is

   port( ADD_1, ADD_2 : in std_logic_vector (31 downto 0);  Ci_carry_gen : in 
         std_logic;  Co : out std_logic_vector (8 downto 0));

end carry_generator_NBIT_GEN32_NBIT_Co8_N_ITERATION5;

architecture SYN_STRUCTURAL of carry_generator_NBIT_GEN32_NBIT_Co8_N_ITERATION5
   is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component PG_block_1
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_2
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_3
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_4
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_5
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_6
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_7
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_8
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_9
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_10
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_11
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_12
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_13
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_14
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_15
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_16
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_17
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_18
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_19
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_20
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_21
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_22
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_23
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_24
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_25
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_26
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component PG_block_0
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component G_block_1
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_2
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_3
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_4
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_5
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_6
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_7
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_8
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_9
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   component G_block_0
      port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);
   end component;
   
   signal Co_8_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, 
      Co_2_port, Co_1_port, G_matrix_15_15_port, G_matrix_15_14_port, 
      G_matrix_15_12_port, G_matrix_15_8_port, G_matrix_14_14_port, 
      G_matrix_13_13_port, G_matrix_13_12_port, G_matrix_12_12_port, 
      G_matrix_11_11_port, G_matrix_11_10_port, G_matrix_11_8_port, 
      G_matrix_10_10_port, G_matrix_9_9_port, G_matrix_9_8_port, 
      G_matrix_8_8_port, G_matrix_7_7_port, G_matrix_7_6_port, 
      G_matrix_7_4_port, G_matrix_6_6_port, G_matrix_5_5_port, 
      G_matrix_5_4_port, G_matrix_4_4_port, G_matrix_3_3_port, 
      G_matrix_3_2_port, G_matrix_2_2_port, G_matrix_2_0_port, 
      G_matrix_1_1_port, G_matrix_1_0_port, G_matrix_0_0_port, 
      G_matrix_31_31_port, G_matrix_31_30_port, G_matrix_31_28_port, 
      G_matrix_31_24_port, G_matrix_31_16_port, G_matrix_30_30_port, 
      G_matrix_29_29_port, G_matrix_29_28_port, G_matrix_28_28_port, 
      G_matrix_27_27_port, G_matrix_27_26_port, G_matrix_27_24_port, 
      G_matrix_27_16_port, G_matrix_26_26_port, G_matrix_25_25_port, 
      G_matrix_25_24_port, G_matrix_24_24_port, G_matrix_23_23_port, 
      G_matrix_23_22_port, G_matrix_23_20_port, G_matrix_23_16_port, 
      G_matrix_22_22_port, G_matrix_21_21_port, G_matrix_21_20_port, 
      G_matrix_20_20_port, G_matrix_19_19_port, G_matrix_19_18_port, 
      G_matrix_19_16_port, G_matrix_18_18_port, G_matrix_17_17_port, 
      G_matrix_17_16_port, G_matrix_16_16_port, PG_matrix_15_15_port, 
      PG_matrix_15_14_port, PG_matrix_15_12_port, PG_matrix_15_8_port, 
      PG_matrix_14_14_port, PG_matrix_13_13_port, PG_matrix_13_12_port, 
      PG_matrix_12_12_port, PG_matrix_11_11_port, PG_matrix_11_10_port, 
      PG_matrix_11_8_port, PG_matrix_10_10_port, PG_matrix_9_9_port, 
      PG_matrix_9_8_port, PG_matrix_8_8_port, PG_matrix_7_7_port, 
      PG_matrix_7_6_port, PG_matrix_7_4_port, PG_matrix_6_6_port, 
      PG_matrix_5_5_port, PG_matrix_5_4_port, PG_matrix_4_4_port, 
      PG_matrix_3_3_port, PG_matrix_3_2_port, PG_matrix_2_2_port, 
      PG_matrix_1_1_port, PG_matrix_0_0_port, PG_matrix_31_31_port, 
      PG_matrix_31_30_port, PG_matrix_31_28_port, PG_matrix_31_24_port, 
      PG_matrix_31_16_port, PG_matrix_30_30_port, PG_matrix_29_29_port, 
      PG_matrix_29_28_port, PG_matrix_28_28_port, PG_matrix_27_27_port, 
      PG_matrix_27_26_port, PG_matrix_27_24_port, PG_matrix_27_16_port, 
      PG_matrix_26_26_port, PG_matrix_25_25_port, PG_matrix_25_24_port, 
      PG_matrix_24_24_port, PG_matrix_23_23_port, PG_matrix_23_22_port, 
      PG_matrix_23_20_port, PG_matrix_23_16_port, PG_matrix_22_22_port, 
      PG_matrix_21_21_port, PG_matrix_21_20_port, PG_matrix_20_20_port, 
      PG_matrix_19_19_port, PG_matrix_19_18_port, PG_matrix_19_16_port, 
      PG_matrix_18_18_port, PG_matrix_17_17_port, PG_matrix_17_16_port, 
      PG_matrix_16_16_port : std_logic;

begin
   Co <= ( Co_8_port, Co_7_port, Co_6_port, Co_5_port, Co_4_port, Co_3_port, 
      Co_2_port, Co_1_port, Ci_carry_gen );
   
   G_block_0_inst : G_block_0 port map( PG_IN_1 => PG_matrix_0_0_port, PG_IN_2 
                           => G_matrix_0_0_port, G_IN => Ci_carry_gen, G_OUT =>
                           G_matrix_1_0_port);
   G_block_2_0 : G_block_9 port map( PG_IN_1 => PG_matrix_1_1_port, PG_IN_2 => 
                           G_matrix_1_1_port, G_IN => G_matrix_1_0_port, G_OUT 
                           => G_matrix_2_0_port);
   G_block_3_0 : G_block_8 port map( PG_IN_1 => PG_matrix_3_2_port, PG_IN_2 => 
                           G_matrix_3_2_port, G_IN => G_matrix_2_0_port, G_OUT 
                           => Co_1_port);
   G_block_7_1 : G_block_7 port map( PG_IN_1 => PG_matrix_7_4_port, PG_IN_2 => 
                           G_matrix_7_4_port, G_IN => Co_1_port, G_OUT => 
                           Co_2_port);
   G_block_cycle_2_1 : G_block_6 port map( PG_IN_1 => PG_matrix_11_8_port, 
                           PG_IN_2 => G_matrix_11_8_port, G_IN => Co_2_port, 
                           G_OUT => Co_3_port);
   G_block_cycle_2_2 : G_block_5 port map( PG_IN_1 => PG_matrix_15_8_port, 
                           PG_IN_2 => G_matrix_15_8_port, G_IN => Co_2_port, 
                           G_OUT => Co_4_port);
   G_block_cycle_3_1 : G_block_4 port map( PG_IN_1 => PG_matrix_19_16_port, 
                           PG_IN_2 => G_matrix_19_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_5_port);
   G_block_cycle_3_2 : G_block_3 port map( PG_IN_1 => PG_matrix_23_16_port, 
                           PG_IN_2 => G_matrix_23_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_6_port);
   G_block_cycle_3_3 : G_block_2 port map( PG_IN_1 => PG_matrix_27_16_port, 
                           PG_IN_2 => G_matrix_27_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_7_port);
   G_block_cycle_3_4 : G_block_1 port map( PG_IN_1 => PG_matrix_31_16_port, 
                           PG_IN_2 => G_matrix_31_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_8_port);
   pre_generation_0_1 : PG_block_0 port map( PG_IN_first_P => 
                           PG_matrix_2_2_port, PG_IN_second_P => 
                           PG_matrix_3_3_port, PG_IN_first_G => 
                           G_matrix_2_2_port, PG_IN_second_G => 
                           G_matrix_3_3_port, PG_OUT_G => G_matrix_3_2_port, 
                           PG_OUT_PG => PG_matrix_3_2_port);
   pre_generation_0_2 : PG_block_26 port map( PG_IN_first_P => 
                           PG_matrix_4_4_port, PG_IN_second_P => 
                           PG_matrix_5_5_port, PG_IN_first_G => 
                           G_matrix_4_4_port, PG_IN_second_G => 
                           G_matrix_5_5_port, PG_OUT_G => G_matrix_5_4_port, 
                           PG_OUT_PG => PG_matrix_5_4_port);
   pre_generation_0_3 : PG_block_25 port map( PG_IN_first_P => 
                           PG_matrix_6_6_port, PG_IN_second_P => 
                           PG_matrix_7_7_port, PG_IN_first_G => 
                           G_matrix_6_6_port, PG_IN_second_G => 
                           G_matrix_7_7_port, PG_OUT_G => G_matrix_7_6_port, 
                           PG_OUT_PG => PG_matrix_7_6_port);
   pre_generation_0_4 : PG_block_24 port map( PG_IN_first_P => 
                           PG_matrix_8_8_port, PG_IN_second_P => 
                           PG_matrix_9_9_port, PG_IN_first_G => 
                           G_matrix_8_8_port, PG_IN_second_G => 
                           G_matrix_9_9_port, PG_OUT_G => G_matrix_9_8_port, 
                           PG_OUT_PG => PG_matrix_9_8_port);
   pre_generation_0_5 : PG_block_23 port map( PG_IN_first_P => 
                           PG_matrix_10_10_port, PG_IN_second_P => 
                           PG_matrix_11_11_port, PG_IN_first_G => 
                           G_matrix_10_10_port, PG_IN_second_G => 
                           G_matrix_11_11_port, PG_OUT_G => G_matrix_11_10_port
                           , PG_OUT_PG => PG_matrix_11_10_port);
   pre_generation_0_6 : PG_block_22 port map( PG_IN_first_P => 
                           PG_matrix_12_12_port, PG_IN_second_P => 
                           PG_matrix_13_13_port, PG_IN_first_G => 
                           G_matrix_12_12_port, PG_IN_second_G => 
                           G_matrix_13_13_port, PG_OUT_G => G_matrix_13_12_port
                           , PG_OUT_PG => PG_matrix_13_12_port);
   pre_generation_0_7 : PG_block_21 port map( PG_IN_first_P => 
                           PG_matrix_14_14_port, PG_IN_second_P => 
                           PG_matrix_15_15_port, PG_IN_first_G => 
                           G_matrix_14_14_port, PG_IN_second_G => 
                           G_matrix_15_15_port, PG_OUT_G => G_matrix_15_14_port
                           , PG_OUT_PG => PG_matrix_15_14_port);
   pre_generation_0_8 : PG_block_20 port map( PG_IN_first_P => 
                           PG_matrix_16_16_port, PG_IN_second_P => 
                           PG_matrix_17_17_port, PG_IN_first_G => 
                           G_matrix_16_16_port, PG_IN_second_G => 
                           G_matrix_17_17_port, PG_OUT_G => G_matrix_17_16_port
                           , PG_OUT_PG => PG_matrix_17_16_port);
   pre_generation_0_9 : PG_block_19 port map( PG_IN_first_P => 
                           PG_matrix_18_18_port, PG_IN_second_P => 
                           PG_matrix_19_19_port, PG_IN_first_G => 
                           G_matrix_18_18_port, PG_IN_second_G => 
                           G_matrix_19_19_port, PG_OUT_G => G_matrix_19_18_port
                           , PG_OUT_PG => PG_matrix_19_18_port);
   pre_generation_0_10 : PG_block_18 port map( PG_IN_first_P => 
                           PG_matrix_20_20_port, PG_IN_second_P => 
                           PG_matrix_21_21_port, PG_IN_first_G => 
                           G_matrix_20_20_port, PG_IN_second_G => 
                           G_matrix_21_21_port, PG_OUT_G => G_matrix_21_20_port
                           , PG_OUT_PG => PG_matrix_21_20_port);
   pre_generation_0_11 : PG_block_17 port map( PG_IN_first_P => 
                           PG_matrix_22_22_port, PG_IN_second_P => 
                           PG_matrix_23_23_port, PG_IN_first_G => 
                           G_matrix_22_22_port, PG_IN_second_G => 
                           G_matrix_23_23_port, PG_OUT_G => G_matrix_23_22_port
                           , PG_OUT_PG => PG_matrix_23_22_port);
   pre_generation_0_12 : PG_block_16 port map( PG_IN_first_P => 
                           PG_matrix_24_24_port, PG_IN_second_P => 
                           PG_matrix_25_25_port, PG_IN_first_G => 
                           G_matrix_24_24_port, PG_IN_second_G => 
                           G_matrix_25_25_port, PG_OUT_G => G_matrix_25_24_port
                           , PG_OUT_PG => PG_matrix_25_24_port);
   pre_generation_0_13 : PG_block_15 port map( PG_IN_first_P => 
                           PG_matrix_26_26_port, PG_IN_second_P => 
                           PG_matrix_27_27_port, PG_IN_first_G => 
                           G_matrix_26_26_port, PG_IN_second_G => 
                           G_matrix_27_27_port, PG_OUT_G => G_matrix_27_26_port
                           , PG_OUT_PG => PG_matrix_27_26_port);
   pre_generation_0_14 : PG_block_14 port map( PG_IN_first_P => 
                           PG_matrix_28_28_port, PG_IN_second_P => 
                           PG_matrix_29_29_port, PG_IN_first_G => 
                           G_matrix_28_28_port, PG_IN_second_G => 
                           G_matrix_29_29_port, PG_OUT_G => G_matrix_29_28_port
                           , PG_OUT_PG => PG_matrix_29_28_port);
   pre_generation_0_15 : PG_block_13 port map( PG_IN_first_P => 
                           PG_matrix_30_30_port, PG_IN_second_P => 
                           PG_matrix_31_31_port, PG_IN_first_G => 
                           G_matrix_30_30_port, PG_IN_second_G => 
                           G_matrix_31_31_port, PG_OUT_G => G_matrix_31_30_port
                           , PG_OUT_PG => PG_matrix_31_30_port);
   pre_generation_1_0 : PG_block_12 port map( PG_IN_first_P => 
                           PG_matrix_5_4_port, PG_IN_second_P => 
                           PG_matrix_7_6_port, PG_IN_first_G => 
                           G_matrix_5_4_port, PG_IN_second_G => 
                           G_matrix_7_6_port, PG_OUT_G => G_matrix_7_4_port, 
                           PG_OUT_PG => PG_matrix_7_4_port);
   pre_generation_1_1 : PG_block_11 port map( PG_IN_first_P => 
                           PG_matrix_9_8_port, PG_IN_second_P => 
                           PG_matrix_11_10_port, PG_IN_first_G => 
                           G_matrix_9_8_port, PG_IN_second_G => 
                           G_matrix_11_10_port, PG_OUT_G => G_matrix_11_8_port,
                           PG_OUT_PG => PG_matrix_11_8_port);
   pre_generation_1_2 : PG_block_10 port map( PG_IN_first_P => 
                           PG_matrix_13_12_port, PG_IN_second_P => 
                           PG_matrix_15_14_port, PG_IN_first_G => 
                           G_matrix_13_12_port, PG_IN_second_G => 
                           G_matrix_15_14_port, PG_OUT_G => G_matrix_15_12_port
                           , PG_OUT_PG => PG_matrix_15_12_port);
   pre_generation_1_3 : PG_block_9 port map( PG_IN_first_P => 
                           PG_matrix_17_16_port, PG_IN_second_P => 
                           PG_matrix_19_18_port, PG_IN_first_G => 
                           G_matrix_17_16_port, PG_IN_second_G => 
                           G_matrix_19_18_port, PG_OUT_G => G_matrix_19_16_port
                           , PG_OUT_PG => PG_matrix_19_16_port);
   pre_generation_1_4 : PG_block_8 port map( PG_IN_first_P => 
                           PG_matrix_21_20_port, PG_IN_second_P => 
                           PG_matrix_23_22_port, PG_IN_first_G => 
                           G_matrix_21_20_port, PG_IN_second_G => 
                           G_matrix_23_22_port, PG_OUT_G => G_matrix_23_20_port
                           , PG_OUT_PG => PG_matrix_23_20_port);
   pre_generation_1_5 : PG_block_7 port map( PG_IN_first_P => 
                           PG_matrix_25_24_port, PG_IN_second_P => 
                           PG_matrix_27_26_port, PG_IN_first_G => 
                           G_matrix_25_24_port, PG_IN_second_G => 
                           G_matrix_27_26_port, PG_OUT_G => G_matrix_27_24_port
                           , PG_OUT_PG => PG_matrix_27_24_port);
   pre_generation_1_6 : PG_block_6 port map( PG_IN_first_P => 
                           PG_matrix_29_28_port, PG_IN_second_P => 
                           PG_matrix_31_30_port, PG_IN_first_G => 
                           G_matrix_29_28_port, PG_IN_second_G => 
                           G_matrix_31_30_port, PG_OUT_G => G_matrix_31_28_port
                           , PG_OUT_PG => PG_matrix_31_28_port);
   gen_2_0_0 : PG_block_5 port map( PG_IN_first_P => PG_matrix_11_8_port, 
                           PG_IN_second_P => PG_matrix_15_12_port, 
                           PG_IN_first_G => G_matrix_11_8_port, PG_IN_second_G 
                           => G_matrix_15_12_port, PG_OUT_G => 
                           G_matrix_15_8_port, PG_OUT_PG => PG_matrix_15_8_port
                           );
   gen_2_0_1 : PG_block_4 port map( PG_IN_first_P => PG_matrix_19_16_port, 
                           PG_IN_second_P => PG_matrix_23_20_port, 
                           PG_IN_first_G => G_matrix_19_16_port, PG_IN_second_G
                           => G_matrix_23_20_port, PG_OUT_G => 
                           G_matrix_23_16_port, PG_OUT_PG => 
                           PG_matrix_23_16_port);
   gen_2_0_2 : PG_block_3 port map( PG_IN_first_P => PG_matrix_27_24_port, 
                           PG_IN_second_P => PG_matrix_31_28_port, 
                           PG_IN_first_G => G_matrix_27_24_port, PG_IN_second_G
                           => G_matrix_31_28_port, PG_OUT_G => 
                           G_matrix_31_24_port, PG_OUT_PG => 
                           PG_matrix_31_24_port);
   PG_block_cycle_1_1_1 : PG_block_2 port map( PG_IN_first_P => 
                           PG_matrix_23_16_port, PG_IN_second_P => 
                           PG_matrix_27_24_port, PG_IN_first_G => 
                           G_matrix_23_16_port, PG_IN_second_G => 
                           G_matrix_27_24_port, PG_OUT_G => G_matrix_27_16_port
                           , PG_OUT_PG => PG_matrix_27_16_port);
   PG_block_cycle_1_1_2 : PG_block_1 port map( PG_IN_first_P => 
                           PG_matrix_23_16_port, PG_IN_second_P => 
                           PG_matrix_31_24_port, PG_IN_first_G => 
                           G_matrix_23_16_port, PG_IN_second_G => 
                           G_matrix_31_24_port, PG_OUT_G => G_matrix_31_16_port
                           , PG_OUT_PG => PG_matrix_31_16_port);
   U1 : XOR2_X1 port map( A => ADD_2(9), B => ADD_1(9), Z => PG_matrix_9_9_port
                           );
   U2 : XOR2_X1 port map( A => ADD_2(8), B => ADD_1(8), Z => PG_matrix_8_8_port
                           );
   U3 : XOR2_X1 port map( A => ADD_2(7), B => ADD_1(7), Z => PG_matrix_7_7_port
                           );
   U4 : XOR2_X1 port map( A => ADD_2(6), B => ADD_1(6), Z => PG_matrix_6_6_port
                           );
   U5 : XOR2_X1 port map( A => ADD_2(5), B => ADD_1(5), Z => PG_matrix_5_5_port
                           );
   U6 : XOR2_X1 port map( A => ADD_2(4), B => ADD_1(4), Z => PG_matrix_4_4_port
                           );
   U7 : XOR2_X1 port map( A => ADD_2(3), B => ADD_1(3), Z => PG_matrix_3_3_port
                           );
   U8 : XOR2_X1 port map( A => ADD_2(31), B => ADD_1(31), Z => 
                           PG_matrix_31_31_port);
   U9 : XOR2_X1 port map( A => ADD_2(30), B => ADD_1(30), Z => 
                           PG_matrix_30_30_port);
   U10 : XOR2_X1 port map( A => ADD_2(2), B => ADD_1(2), Z => 
                           PG_matrix_2_2_port);
   U11 : XOR2_X1 port map( A => ADD_2(29), B => ADD_1(29), Z => 
                           PG_matrix_29_29_port);
   U12 : XOR2_X1 port map( A => ADD_2(28), B => ADD_1(28), Z => 
                           PG_matrix_28_28_port);
   U13 : XOR2_X1 port map( A => ADD_2(27), B => ADD_1(27), Z => 
                           PG_matrix_27_27_port);
   U14 : XOR2_X1 port map( A => ADD_2(26), B => ADD_1(26), Z => 
                           PG_matrix_26_26_port);
   U15 : XOR2_X1 port map( A => ADD_2(25), B => ADD_1(25), Z => 
                           PG_matrix_25_25_port);
   U16 : XOR2_X1 port map( A => ADD_2(24), B => ADD_1(24), Z => 
                           PG_matrix_24_24_port);
   U17 : XOR2_X1 port map( A => ADD_2(23), B => ADD_1(23), Z => 
                           PG_matrix_23_23_port);
   U18 : XOR2_X1 port map( A => ADD_2(22), B => ADD_1(22), Z => 
                           PG_matrix_22_22_port);
   U19 : XOR2_X1 port map( A => ADD_2(21), B => ADD_1(21), Z => 
                           PG_matrix_21_21_port);
   U20 : XOR2_X1 port map( A => ADD_2(20), B => ADD_1(20), Z => 
                           PG_matrix_20_20_port);
   U21 : XOR2_X1 port map( A => ADD_2(1), B => ADD_1(1), Z => 
                           PG_matrix_1_1_port);
   U22 : XOR2_X1 port map( A => ADD_2(19), B => ADD_1(19), Z => 
                           PG_matrix_19_19_port);
   U23 : XOR2_X1 port map( A => ADD_2(18), B => ADD_1(18), Z => 
                           PG_matrix_18_18_port);
   U24 : XOR2_X1 port map( A => ADD_2(17), B => ADD_1(17), Z => 
                           PG_matrix_17_17_port);
   U25 : XOR2_X1 port map( A => ADD_2(16), B => ADD_1(16), Z => 
                           PG_matrix_16_16_port);
   U26 : XOR2_X1 port map( A => ADD_2(15), B => ADD_1(15), Z => 
                           PG_matrix_15_15_port);
   U27 : XOR2_X1 port map( A => ADD_2(14), B => ADD_1(14), Z => 
                           PG_matrix_14_14_port);
   U28 : XOR2_X1 port map( A => ADD_2(13), B => ADD_1(13), Z => 
                           PG_matrix_13_13_port);
   U29 : XOR2_X1 port map( A => ADD_2(12), B => ADD_1(12), Z => 
                           PG_matrix_12_12_port);
   U30 : XOR2_X1 port map( A => ADD_2(11), B => ADD_1(11), Z => 
                           PG_matrix_11_11_port);
   U31 : XOR2_X1 port map( A => ADD_2(10), B => ADD_1(10), Z => 
                           PG_matrix_10_10_port);
   U32 : XOR2_X1 port map( A => ADD_2(0), B => ADD_1(0), Z => 
                           PG_matrix_0_0_port);
   U33 : AND2_X1 port map( A1 => ADD_2(9), A2 => ADD_1(9), ZN => 
                           G_matrix_9_9_port);
   U34 : AND2_X1 port map( A1 => ADD_2(8), A2 => ADD_1(8), ZN => 
                           G_matrix_8_8_port);
   U35 : AND2_X1 port map( A1 => ADD_2(7), A2 => ADD_1(7), ZN => 
                           G_matrix_7_7_port);
   U36 : AND2_X1 port map( A1 => ADD_2(6), A2 => ADD_1(6), ZN => 
                           G_matrix_6_6_port);
   U37 : AND2_X1 port map( A1 => ADD_2(5), A2 => ADD_1(5), ZN => 
                           G_matrix_5_5_port);
   U38 : AND2_X1 port map( A1 => ADD_2(4), A2 => ADD_1(4), ZN => 
                           G_matrix_4_4_port);
   U39 : AND2_X1 port map( A1 => ADD_2(3), A2 => ADD_1(3), ZN => 
                           G_matrix_3_3_port);
   U40 : AND2_X1 port map( A1 => ADD_2(31), A2 => ADD_1(31), ZN => 
                           G_matrix_31_31_port);
   U41 : AND2_X1 port map( A1 => ADD_2(30), A2 => ADD_1(30), ZN => 
                           G_matrix_30_30_port);
   U42 : AND2_X1 port map( A1 => ADD_2(2), A2 => ADD_1(2), ZN => 
                           G_matrix_2_2_port);
   U43 : AND2_X1 port map( A1 => ADD_2(29), A2 => ADD_1(29), ZN => 
                           G_matrix_29_29_port);
   U44 : AND2_X1 port map( A1 => ADD_2(28), A2 => ADD_1(28), ZN => 
                           G_matrix_28_28_port);
   U45 : AND2_X1 port map( A1 => ADD_2(27), A2 => ADD_1(27), ZN => 
                           G_matrix_27_27_port);
   U46 : AND2_X1 port map( A1 => ADD_2(26), A2 => ADD_1(26), ZN => 
                           G_matrix_26_26_port);
   U47 : AND2_X1 port map( A1 => ADD_2(25), A2 => ADD_1(25), ZN => 
                           G_matrix_25_25_port);
   U48 : AND2_X1 port map( A1 => ADD_2(24), A2 => ADD_1(24), ZN => 
                           G_matrix_24_24_port);
   U49 : AND2_X1 port map( A1 => ADD_2(23), A2 => ADD_1(23), ZN => 
                           G_matrix_23_23_port);
   U50 : AND2_X1 port map( A1 => ADD_2(22), A2 => ADD_1(22), ZN => 
                           G_matrix_22_22_port);
   U51 : AND2_X1 port map( A1 => ADD_2(21), A2 => ADD_1(21), ZN => 
                           G_matrix_21_21_port);
   U52 : AND2_X1 port map( A1 => ADD_2(20), A2 => ADD_1(20), ZN => 
                           G_matrix_20_20_port);
   U53 : AND2_X1 port map( A1 => ADD_2(1), A2 => ADD_1(1), ZN => 
                           G_matrix_1_1_port);
   U54 : AND2_X1 port map( A1 => ADD_2(19), A2 => ADD_1(19), ZN => 
                           G_matrix_19_19_port);
   U55 : AND2_X1 port map( A1 => ADD_2(18), A2 => ADD_1(18), ZN => 
                           G_matrix_18_18_port);
   U56 : AND2_X1 port map( A1 => ADD_2(17), A2 => ADD_1(17), ZN => 
                           G_matrix_17_17_port);
   U57 : AND2_X1 port map( A1 => ADD_2(16), A2 => ADD_1(16), ZN => 
                           G_matrix_16_16_port);
   U58 : AND2_X1 port map( A1 => ADD_2(15), A2 => ADD_1(15), ZN => 
                           G_matrix_15_15_port);
   U59 : AND2_X1 port map( A1 => ADD_2(14), A2 => ADD_1(14), ZN => 
                           G_matrix_14_14_port);
   U60 : AND2_X1 port map( A1 => ADD_2(13), A2 => ADD_1(13), ZN => 
                           G_matrix_13_13_port);
   U61 : AND2_X1 port map( A1 => ADD_2(12), A2 => ADD_1(12), ZN => 
                           G_matrix_12_12_port);
   U62 : AND2_X1 port map( A1 => ADD_2(11), A2 => ADD_1(11), ZN => 
                           G_matrix_11_11_port);
   U63 : AND2_X1 port map( A1 => ADD_2(10), A2 => ADD_1(10), ZN => 
                           G_matrix_10_10_port);
   U64 : AND2_X1 port map( A1 => ADD_2(0), A2 => ADD_1(0), ZN => 
                           G_matrix_0_0_port);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity P4_adder_NBIT32 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (31 downto 0);  C_in : in 
         std_logic;  SUM : out std_logic_vector (31 downto 0);  C_out : out 
         std_logic);

end P4_adder_NBIT32;

architecture SYN_STRUCTURAL of P4_adder_NBIT32 is

   component sum_generator_NBIT_GEN32_NBIT_GEN_BLOCK8
      port( ADD_1, ADD_2 : in std_logic_vector (31 downto 0);  Ci : in 
            std_logic_vector (7 downto 0);  SUM : out std_logic_vector (31 
            downto 0));
   end component;
   
   component carry_generator_NBIT_GEN32_NBIT_Co8_N_ITERATION5
      port( ADD_1, ADD_2 : in std_logic_vector (31 downto 0);  Ci_carry_gen : 
            in std_logic;  Co : out std_logic_vector (8 downto 0));
   end component;
   
   signal Carry_from_carry_gen_7_port, Carry_from_carry_gen_6_port, 
      Carry_from_carry_gen_5_port, Carry_from_carry_gen_4_port, 
      Carry_from_carry_gen_3_port, Carry_from_carry_gen_2_port, 
      Carry_from_carry_gen_1_port, Carry_from_carry_gen_0_port : std_logic;

begin
   
   Carry_gen : carry_generator_NBIT_GEN32_NBIT_Co8_N_ITERATION5 port map( 
                           ADD_1(31) => INPUT_1(31), ADD_1(30) => INPUT_1(30), 
                           ADD_1(29) => INPUT_1(29), ADD_1(28) => INPUT_1(28), 
                           ADD_1(27) => INPUT_1(27), ADD_1(26) => INPUT_1(26), 
                           ADD_1(25) => INPUT_1(25), ADD_1(24) => INPUT_1(24), 
                           ADD_1(23) => INPUT_1(23), ADD_1(22) => INPUT_1(22), 
                           ADD_1(21) => INPUT_1(21), ADD_1(20) => INPUT_1(20), 
                           ADD_1(19) => INPUT_1(19), ADD_1(18) => INPUT_1(18), 
                           ADD_1(17) => INPUT_1(17), ADD_1(16) => INPUT_1(16), 
                           ADD_1(15) => INPUT_1(15), ADD_1(14) => INPUT_1(14), 
                           ADD_1(13) => INPUT_1(13), ADD_1(12) => INPUT_1(12), 
                           ADD_1(11) => INPUT_1(11), ADD_1(10) => INPUT_1(10), 
                           ADD_1(9) => INPUT_1(9), ADD_1(8) => INPUT_1(8), 
                           ADD_1(7) => INPUT_1(7), ADD_1(6) => INPUT_1(6), 
                           ADD_1(5) => INPUT_1(5), ADD_1(4) => INPUT_1(4), 
                           ADD_1(3) => INPUT_1(3), ADD_1(2) => INPUT_1(2), 
                           ADD_1(1) => INPUT_1(1), ADD_1(0) => INPUT_1(0), 
                           ADD_2(31) => INPUT_2(31), ADD_2(30) => INPUT_2(30), 
                           ADD_2(29) => INPUT_2(29), ADD_2(28) => INPUT_2(28), 
                           ADD_2(27) => INPUT_2(27), ADD_2(26) => INPUT_2(26), 
                           ADD_2(25) => INPUT_2(25), ADD_2(24) => INPUT_2(24), 
                           ADD_2(23) => INPUT_2(23), ADD_2(22) => INPUT_2(22), 
                           ADD_2(21) => INPUT_2(21), ADD_2(20) => INPUT_2(20), 
                           ADD_2(19) => INPUT_2(19), ADD_2(18) => INPUT_2(18), 
                           ADD_2(17) => INPUT_2(17), ADD_2(16) => INPUT_2(16), 
                           ADD_2(15) => INPUT_2(15), ADD_2(14) => INPUT_2(14), 
                           ADD_2(13) => INPUT_2(13), ADD_2(12) => INPUT_2(12), 
                           ADD_2(11) => INPUT_2(11), ADD_2(10) => INPUT_2(10), 
                           ADD_2(9) => INPUT_2(9), ADD_2(8) => INPUT_2(8), 
                           ADD_2(7) => INPUT_2(7), ADD_2(6) => INPUT_2(6), 
                           ADD_2(5) => INPUT_2(5), ADD_2(4) => INPUT_2(4), 
                           ADD_2(3) => INPUT_2(3), ADD_2(2) => INPUT_2(2), 
                           ADD_2(1) => INPUT_2(1), ADD_2(0) => INPUT_2(0), 
                           Ci_carry_gen => C_in, Co(8) => C_out, Co(7) => 
                           Carry_from_carry_gen_7_port, Co(6) => 
                           Carry_from_carry_gen_6_port, Co(5) => 
                           Carry_from_carry_gen_5_port, Co(4) => 
                           Carry_from_carry_gen_4_port, Co(3) => 
                           Carry_from_carry_gen_3_port, Co(2) => 
                           Carry_from_carry_gen_2_port, Co(1) => 
                           Carry_from_carry_gen_1_port, Co(0) => 
                           Carry_from_carry_gen_0_port);
   Sum_gen : sum_generator_NBIT_GEN32_NBIT_GEN_BLOCK8 port map( ADD_1(31) => 
                           INPUT_1(31), ADD_1(30) => INPUT_1(30), ADD_1(29) => 
                           INPUT_1(29), ADD_1(28) => INPUT_1(28), ADD_1(27) => 
                           INPUT_1(27), ADD_1(26) => INPUT_1(26), ADD_1(25) => 
                           INPUT_1(25), ADD_1(24) => INPUT_1(24), ADD_1(23) => 
                           INPUT_1(23), ADD_1(22) => INPUT_1(22), ADD_1(21) => 
                           INPUT_1(21), ADD_1(20) => INPUT_1(20), ADD_1(19) => 
                           INPUT_1(19), ADD_1(18) => INPUT_1(18), ADD_1(17) => 
                           INPUT_1(17), ADD_1(16) => INPUT_1(16), ADD_1(15) => 
                           INPUT_1(15), ADD_1(14) => INPUT_1(14), ADD_1(13) => 
                           INPUT_1(13), ADD_1(12) => INPUT_1(12), ADD_1(11) => 
                           INPUT_1(11), ADD_1(10) => INPUT_1(10), ADD_1(9) => 
                           INPUT_1(9), ADD_1(8) => INPUT_1(8), ADD_1(7) => 
                           INPUT_1(7), ADD_1(6) => INPUT_1(6), ADD_1(5) => 
                           INPUT_1(5), ADD_1(4) => INPUT_1(4), ADD_1(3) => 
                           INPUT_1(3), ADD_1(2) => INPUT_1(2), ADD_1(1) => 
                           INPUT_1(1), ADD_1(0) => INPUT_1(0), ADD_2(31) => 
                           INPUT_2(31), ADD_2(30) => INPUT_2(30), ADD_2(29) => 
                           INPUT_2(29), ADD_2(28) => INPUT_2(28), ADD_2(27) => 
                           INPUT_2(27), ADD_2(26) => INPUT_2(26), ADD_2(25) => 
                           INPUT_2(25), ADD_2(24) => INPUT_2(24), ADD_2(23) => 
                           INPUT_2(23), ADD_2(22) => INPUT_2(22), ADD_2(21) => 
                           INPUT_2(21), ADD_2(20) => INPUT_2(20), ADD_2(19) => 
                           INPUT_2(19), ADD_2(18) => INPUT_2(18), ADD_2(17) => 
                           INPUT_2(17), ADD_2(16) => INPUT_2(16), ADD_2(15) => 
                           INPUT_2(15), ADD_2(14) => INPUT_2(14), ADD_2(13) => 
                           INPUT_2(13), ADD_2(12) => INPUT_2(12), ADD_2(11) => 
                           INPUT_2(11), ADD_2(10) => INPUT_2(10), ADD_2(9) => 
                           INPUT_2(9), ADD_2(8) => INPUT_2(8), ADD_2(7) => 
                           INPUT_2(7), ADD_2(6) => INPUT_2(6), ADD_2(5) => 
                           INPUT_2(5), ADD_2(4) => INPUT_2(4), ADD_2(3) => 
                           INPUT_2(3), ADD_2(2) => INPUT_2(2), ADD_2(1) => 
                           INPUT_2(1), ADD_2(0) => INPUT_2(0), Ci(7) => 
                           Carry_from_carry_gen_7_port, Ci(6) => 
                           Carry_from_carry_gen_6_port, Ci(5) => 
                           Carry_from_carry_gen_5_port, Ci(4) => 
                           Carry_from_carry_gen_4_port, Ci(3) => 
                           Carry_from_carry_gen_3_port, Ci(2) => 
                           Carry_from_carry_gen_2_port, Ci(1) => 
                           Carry_from_carry_gen_1_port, Ci(0) => 
                           Carry_from_carry_gen_0_port, SUM(31) => SUM(31), 
                           SUM(30) => SUM(30), SUM(29) => SUM(29), SUM(28) => 
                           SUM(28), SUM(27) => SUM(27), SUM(26) => SUM(26), 
                           SUM(25) => SUM(25), SUM(24) => SUM(24), SUM(23) => 
                           SUM(23), SUM(22) => SUM(22), SUM(21) => SUM(21), 
                           SUM(20) => SUM(20), SUM(19) => SUM(19), SUM(18) => 
                           SUM(18), SUM(17) => SUM(17), SUM(16) => SUM(16), 
                           SUM(15) => SUM(15), SUM(14) => SUM(14), SUM(13) => 
                           SUM(13), SUM(12) => SUM(12), SUM(11) => SUM(11), 
                           SUM(10) => SUM(10), SUM(9) => SUM(9), SUM(8) => 
                           SUM(8), SUM(7) => SUM(7), SUM(6) => SUM(6), SUM(5) 
                           => SUM(5), SUM(4) => SUM(4), SUM(3) => SUM(3), 
                           SUM(2) => SUM(2), SUM(1) => SUM(1), SUM(0) => SUM(0)
                           );

end SYN_STRUCTURAL;
