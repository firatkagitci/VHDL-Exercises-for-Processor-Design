
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACCUMULATOR_NBIT_ACC8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACCUMULATOR_NBIT_ACC8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity RCA_NBIT8_DW01_add_0 is

   port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (8 downto 0);  CO : out std_logic);

end RCA_NBIT8_DW01_add_0;

architecture SYN_rpl of RCA_NBIT8_DW01_add_0 is

   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, carry_1_port : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           SUM(8), S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B(6), CI => carry_6_port, CO => 
                           carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B(5), CI => carry_5_port, CO => 
                           carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B(4), CI => carry_4_port, CO => 
                           carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B(3), CI => carry_3_port, CO => 
                           carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B(2), CI => carry_2_port, CO => 
                           carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => carry_1_port, CO => 
                           carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B(0), CI => CI, CO => carry_1_port, S
                           => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_23 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_23;

architecture SYN_ARCH2 of ND2_23 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_22 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_22;

architecture SYN_ARCH2 of ND2_22 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_21 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_21;

architecture SYN_ARCH2 of ND2_21 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_20 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_20;

architecture SYN_ARCH2 of ND2_20 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_19 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_19;

architecture SYN_ARCH2 of ND2_19 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_18 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_18;

architecture SYN_ARCH2 of ND2_18 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_17 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_17;

architecture SYN_ARCH2 of ND2_17 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_16 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_16;

architecture SYN_ARCH2 of ND2_16 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_15 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_15;

architecture SYN_ARCH2 of ND2_15 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_14 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_14;

architecture SYN_ARCH2 of ND2_14 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_13 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_13;

architecture SYN_ARCH2 of ND2_13 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_12 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_12;

architecture SYN_ARCH2 of ND2_12 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_11 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_11;

architecture SYN_ARCH2 of ND2_11 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_10 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_10;

architecture SYN_ARCH2 of ND2_10 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_9 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_9;

architecture SYN_ARCH2 of ND2_9 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_8 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_8;

architecture SYN_ARCH2 of ND2_8 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_7 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_7;

architecture SYN_ARCH2 of ND2_7 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_6 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_6;

architecture SYN_ARCH2 of ND2_6 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_5 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_5;

architecture SYN_ARCH2 of ND2_5 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_4 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_4;

architecture SYN_ARCH2 of ND2_4 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_3 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_3;

architecture SYN_ARCH2 of ND2_3 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_2 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_2;

architecture SYN_ARCH2 of ND2_2 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_1 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_1;

architecture SYN_ARCH2 of ND2_1 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_7 is

   port( A : in std_logic;  Y : out std_logic);

end IV_7;

architecture SYN_BEHAVIORAL of IV_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_6 is

   port( A : in std_logic;  Y : out std_logic);

end IV_6;

architecture SYN_BEHAVIORAL of IV_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_5 is

   port( A : in std_logic;  Y : out std_logic);

end IV_5;

architecture SYN_BEHAVIORAL of IV_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_4 is

   port( A : in std_logic;  Y : out std_logic);

end IV_4;

architecture SYN_BEHAVIORAL of IV_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_3 is

   port( A : in std_logic;  Y : out std_logic);

end IV_3;

architecture SYN_BEHAVIORAL of IV_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_2 is

   port( A : in std_logic;  Y : out std_logic);

end IV_2;

architecture SYN_BEHAVIORAL of IV_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_1 is

   port( A : in std_logic;  Y : out std_logic);

end IV_1;

architecture SYN_BEHAVIORAL of IV_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_7 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_7;

architecture SYN_PLUTO of FD_7 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1003);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_6 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_6;

architecture SYN_PLUTO of FD_6 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1004 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1004);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_5 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_5;

architecture SYN_PLUTO of FD_5 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1005 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1005);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_4 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_4;

architecture SYN_PLUTO of FD_4 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1006 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1006);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_3 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_3;

architecture SYN_PLUTO of FD_3 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1007 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1007);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_2 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_2;

architecture SYN_PLUTO of FD_2 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1008 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1008);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_1 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_1;

architecture SYN_PLUTO of FD_1 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1009 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1009);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_7 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_7;

architecture SYN_STRUCTURAL of MUX21_7 is

   component ND2_19
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_20
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_21
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_7
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_7 port map( A => S, Y => SB);
   UND1 : ND2_21 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_20 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_19 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_6 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_6;

architecture SYN_STRUCTURAL of MUX21_6 is

   component ND2_16
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_17
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_18
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_6
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_6 port map( A => S, Y => SB);
   UND1 : ND2_18 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_17 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_16 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_5 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_5;

architecture SYN_STRUCTURAL of MUX21_5 is

   component ND2_13
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_14
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_15
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_5
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_5 port map( A => S, Y => SB);
   UND1 : ND2_15 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_14 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_13 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_4 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_4;

architecture SYN_STRUCTURAL of MUX21_4 is

   component ND2_10
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_11
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_12
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_4
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_4 port map( A => S, Y => SB);
   UND1 : ND2_12 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_11 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_10 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_3 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_3;

architecture SYN_STRUCTURAL of MUX21_3 is

   component ND2_7
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_8
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_9
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_3
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_3 port map( A => S, Y => SB);
   UND1 : ND2_9 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_8 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_7 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_2 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_2;

architecture SYN_STRUCTURAL of MUX21_2 is

   component ND2_4
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_5
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_6
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_2
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_2 port map( A => S, Y => SB);
   UND1 : ND2_6 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_5 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_4 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_1 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_1;

architecture SYN_STRUCTURAL of MUX21_1 is

   component ND2_1
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_2
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_3
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_1
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_1 port map( A => S, Y => SB);
   UND1 : ND2_3 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_2 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_1 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ND2_0 is

   port( A, B : in std_logic;  Y : out std_logic);

end ND2_0;

architecture SYN_ARCH2 of ND2_0 is

   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : NAND2_X1 port map( A1 => B, A2 => A, ZN => Y);

end SYN_ARCH2;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity IV_0 is

   port( A : in std_logic;  Y : out std_logic);

end IV_0;

architecture SYN_BEHAVIORAL of IV_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;

begin
   
   U1 : INV_X1 port map( A => A, ZN => Y);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_0 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_0;

architecture SYN_PLUTO of FD_0 is

   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n_1010 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => RESET, Q => Q, QN => 
                           n_1010);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_0 is

   port( A, B, S : in std_logic;  Y : out std_logic);

end MUX21_0;

architecture SYN_STRUCTURAL of MUX21_0 is

   component ND2_22
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_23
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component ND2_0
      port( A, B : in std_logic;  Y : out std_logic);
   end component;
   
   component IV_0
      port( A : in std_logic;  Y : out std_logic);
   end component;
   
   signal SB, Y1, Y2 : std_logic;

begin
   
   UIV : IV_0 port map( A => S, Y => SB);
   UND1 : ND2_0 port map( A => A, B => S, Y => Y1);
   UND2 : ND2_23 port map( A => B, B => SB, Y => Y2);
   UND3 : ND2_22 port map( A => Y1, B => Y2, Y => Y);

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity FD_GENERIC_NBIT8 is

   port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (7 downto 0));

end FD_GENERIC_NBIT8;

architecture SYN_PLUTO of FD_GENERIC_NBIT8 is

   component FD_1
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_2
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_3
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_4
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_5
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_6
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_7
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_0
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_z_0 : FD_0 port map( D => D(0), CK => CK, RESET => RESET, Q => Q(0));
   FD_z_1 : FD_7 port map( D => D(1), CK => CK, RESET => RESET, Q => Q(1));
   FD_z_2 : FD_6 port map( D => D(2), CK => CK, RESET => RESET, Q => Q(2));
   FD_z_3 : FD_5 port map( D => D(3), CK => CK, RESET => RESET, Q => Q(3));
   FD_z_4 : FD_4 port map( D => D(4), CK => CK, RESET => RESET, Q => Q(4));
   FD_z_5 : FD_3 port map( D => D(5), CK => CK, RESET => RESET, Q => Q(5));
   FD_z_6 : FD_2 port map( D => D(6), CK => CK, RESET => RESET, Q => Q(6));
   FD_z_7 : FD_1 port map( D => D(7), CK => CK, RESET => RESET, Q => Q(7));

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity RCA_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (7 downto 0);  Co : out std_logic);

end RCA_NBIT8;

architecture SYN_BEHAVIORAL of RCA_NBIT8 is

   component RCA_NBIT8_DW01_add_0
      port( A, B : in std_logic_vector (8 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (8 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1011 : std_logic;

begin
   
   n1 <= '0';
   r60 : RCA_NBIT8_DW01_add_0 port map( A(8) => n1, A(7) => A(7), A(6) => A(6),
                           A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2) => 
                           A(2), A(1) => A(1), A(0) => A(0), B(8) => n1, B(7) 
                           => B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), 
                           B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0) => 
                           B(0), CI => Ci, SUM(8) => Co, SUM(7) => S(7), SUM(6)
                           => S(6), SUM(5) => S(5), SUM(4) => S(4), SUM(3) => 
                           S(3), SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0)
                           , CO => n_1011);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity MUX21_GENERIC_NBIT8 is

   port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (7 downto 0));

end MUX21_GENERIC_NBIT8;

architecture SYN_STRUCTURAL of MUX21_GENERIC_NBIT8 is

   component MUX21_1
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_2
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_3
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_4
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_5
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_6
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_7
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;
   
   component MUX21_0
      port( A, B, S : in std_logic;  Y : out std_logic);
   end component;

begin
   
   m_i_0 : MUX21_0 port map( A => A(0), B => B(0), S => SEL, Y => Y(0));
   m_i_1 : MUX21_7 port map( A => A(1), B => B(1), S => SEL, Y => Y(1));
   m_i_2 : MUX21_6 port map( A => A(2), B => B(2), S => SEL, Y => Y(2));
   m_i_3 : MUX21_5 port map( A => A(3), B => B(3), S => SEL, Y => Y(3));
   m_i_4 : MUX21_4 port map( A => A(4), B => B(4), S => SEL, Y => Y(4));
   m_i_5 : MUX21_3 port map( A => A(5), B => B(5), S => SEL, Y => Y(5));
   m_i_6 : MUX21_2 port map( A => A(6), B => B(6), S => SEL, Y => Y(6));
   m_i_7 : MUX21_1 port map( A => A(7), B => B(7), S => SEL, Y => Y(7));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8_1.all;

entity ACCUMULATOR_NBIT_ACC8_1 is

   port( A, B : in std_logic_vector (7 downto 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (7 downto 0));

end ACCUMULATOR_NBIT_ACC8_1;

architecture SYN_STRUCTURAL of ACCUMULATOR_NBIT_ACC8_1 is

   component FD_GENERIC_NBIT8
      port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q
            : out std_logic_vector (7 downto 0));
   end component;
   
   component RCA_NBIT8
      port( A, B : in std_logic_vector (7 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (7 downto 0);  Co : out std_logic);
   end component;
   
   component MUX21_GENERIC_NBIT8
      port( A, B : in std_logic_vector (7 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (7 downto 0));
   end component;
   
   signal X_Logic0_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, Y_0_port, MUX_OUT_7_port, MUX_OUT_6_port, 
      MUX_OUT_5_port, MUX_OUT_4_port, MUX_OUT_3_port, MUX_OUT_2_port, 
      MUX_OUT_1_port, MUX_OUT_0_port, ADD_OUT_7_port, ADD_OUT_6_port, 
      ADD_OUT_5_port, ADD_OUT_4_port, ADD_OUT_3_port, ADD_OUT_2_port, 
      ADD_OUT_1_port, ADD_OUT_0_port, n_1012 : std_logic;

begin
   Y <= ( Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port );
   
   X_Logic0_port <= '0';
   MUX : MUX21_GENERIC_NBIT8 port map( A(7) => Y_7_port, A(6) => Y_6_port, A(5)
                           => Y_5_port, A(4) => Y_4_port, A(3) => Y_3_port, 
                           A(2) => Y_2_port, A(1) => Y_1_port, A(0) => Y_0_port
                           , B(7) => B(7), B(6) => B(6), B(5) => B(5), B(4) => 
                           B(4), B(3) => B(3), B(2) => B(2), B(1) => B(1), B(0)
                           => B(0), SEL => ACCUMULATE, Y(7) => MUX_OUT_7_port, 
                           Y(6) => MUX_OUT_6_port, Y(5) => MUX_OUT_5_port, Y(4)
                           => MUX_OUT_4_port, Y(3) => MUX_OUT_3_port, Y(2) => 
                           MUX_OUT_2_port, Y(1) => MUX_OUT_1_port, Y(0) => 
                           MUX_OUT_0_port);
   ADDER : RCA_NBIT8 port map( A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) 
                           => A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), 
                           A(0) => A(0), B(7) => MUX_OUT_7_port, B(6) => 
                           MUX_OUT_6_port, B(5) => MUX_OUT_5_port, B(4) => 
                           MUX_OUT_4_port, B(3) => MUX_OUT_3_port, B(2) => 
                           MUX_OUT_2_port, B(1) => MUX_OUT_1_port, B(0) => 
                           MUX_OUT_0_port, Ci => X_Logic0_port, S(7) => 
                           ADD_OUT_7_port, S(6) => ADD_OUT_6_port, S(5) => 
                           ADD_OUT_5_port, S(4) => ADD_OUT_4_port, S(3) => 
                           ADD_OUT_3_port, S(2) => ADD_OUT_2_port, S(1) => 
                           ADD_OUT_1_port, S(0) => ADD_OUT_0_port, Co => n_1012
                           );
   FF : FD_GENERIC_NBIT8 port map( D(7) => ADD_OUT_7_port, D(6) => 
                           ADD_OUT_6_port, D(5) => ADD_OUT_5_port, D(4) => 
                           ADD_OUT_4_port, D(3) => ADD_OUT_3_port, D(2) => 
                           ADD_OUT_2_port, D(1) => ADD_OUT_1_port, D(0) => 
                           ADD_OUT_0_port, CK => CLK, RESET => RST_n, Q(7) => 
                           Y_7_port, Q(6) => Y_6_port, Q(5) => Y_5_port, Q(4) 
                           => Y_4_port, Q(3) => Y_3_port, Q(2) => Y_2_port, 
                           Q(1) => Y_1_port, Q(0) => Y_0_port);

end SYN_STRUCTURAL;
