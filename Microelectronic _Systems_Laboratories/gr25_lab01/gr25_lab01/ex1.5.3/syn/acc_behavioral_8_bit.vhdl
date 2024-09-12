
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ACCUMULATOR_NBIT_ACC8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_ACCUMULATOR_NBIT_ACC8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8.all;

entity ACCUMULATOR_NBIT_ACC8_DW01_add_0 is

   port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (7 downto 0);  CO : out std_logic);

end ACCUMULATOR_NBIT_ACC8_DW01_add_0;

architecture SYN_rpl of ACCUMULATOR_NBIT_ACC8_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, n1, n_1002 : std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           n_1002, S => SUM(7));
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
   U1_1 : FA_X1 port map( A => A(1), B => B(1), CI => n1, CO => carry_2_port, S
                           => SUM(1));
   U1 : AND2_X1 port map( A1 => B(0), A2 => A(0), ZN => n1);
   U2 : XOR2_X1 port map( A => B(0), B => A(0), Z => SUM(0));

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ACCUMULATOR_NBIT_ACC8.all;

entity ACCUMULATOR_NBIT_ACC8 is

   port( A, B : in std_logic_vector (7 downto 0);  CLK, RST_n, ACCUMULATE : in 
         std_logic;  Y : out std_logic_vector (7 downto 0));

end ACCUMULATOR_NBIT_ACC8;

architecture SYN_BEHAVIORAL of ACCUMULATOR_NBIT_ACC8 is

   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component ACCUMULATOR_NBIT_ACC8_DW01_add_0
      port( A, B : in std_logic_vector (7 downto 0);  CI : in std_logic;  SUM :
            out std_logic_vector (7 downto 0);  CO : out std_logic);
   end component;
   
   component DFF_X1
      port( D, CK : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port, ADD_OUT_7_port, ADD_OUT_6_port, ADD_OUT_5_port, ADD_OUT_4_port,
      ADD_OUT_3_port, ADD_OUT_2_port, ADD_OUT_1_port, ADD_OUT_0_port, N4, N5, 
      N6, N7, N8, N9, N10, N11, n1, n20, n21, n22, n23, n24, n25, n26, n27, 
      n_1003, n_1004, n_1005, n_1006, n_1007, n_1008, n_1009, n_1010, n_1011 : 
      std_logic;

begin
   Y <= ( Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, Y_2_port, Y_1_port,
      Y_0_port );
   
   n1 <= '0';
   REG_OUT_reg_0_inst : DFF_X1 port map( D => N4, CK => CLK, Q => Y_0_port, QN 
                           => n_1003);
   REG_OUT_reg_1_inst : DFF_X1 port map( D => N5, CK => CLK, Q => Y_1_port, QN 
                           => n_1004);
   REG_OUT_reg_2_inst : DFF_X1 port map( D => N6, CK => CLK, Q => Y_2_port, QN 
                           => n_1005);
   REG_OUT_reg_3_inst : DFF_X1 port map( D => N7, CK => CLK, Q => Y_3_port, QN 
                           => n_1006);
   REG_OUT_reg_4_inst : DFF_X1 port map( D => N8, CK => CLK, Q => Y_4_port, QN 
                           => n_1007);
   REG_OUT_reg_5_inst : DFF_X1 port map( D => N9, CK => CLK, Q => Y_5_port, QN 
                           => n_1008);
   REG_OUT_reg_6_inst : DFF_X1 port map( D => N10, CK => CLK, Q => Y_6_port, QN
                           => n_1009);
   REG_OUT_reg_7_inst : DFF_X1 port map( D => N11, CK => CLK, Q => Y_7_port, QN
                           => n_1010);
   add_100 : ACCUMULATOR_NBIT_ACC8_DW01_add_0 port map( A(7) => A(7), A(6) => 
                           A(6), A(5) => A(5), A(4) => A(4), A(3) => A(3), A(2)
                           => A(2), A(1) => A(1), A(0) => A(0), B(7) => n20, 
                           B(6) => n21, B(5) => n22, B(4) => n23, B(3) => n24, 
                           B(2) => n25, B(1) => n26, B(0) => n27, CI => n1, 
                           SUM(7) => ADD_OUT_7_port, SUM(6) => ADD_OUT_6_port, 
                           SUM(5) => ADD_OUT_5_port, SUM(4) => ADD_OUT_4_port, 
                           SUM(3) => ADD_OUT_3_port, SUM(2) => ADD_OUT_2_port, 
                           SUM(1) => ADD_OUT_1_port, SUM(0) => ADD_OUT_0_port, 
                           CO => n_1011);
   U29 : MUX2_X1 port map( A => B(7), B => Y_7_port, S => ACCUMULATE, Z => n20)
                           ;
   U30 : MUX2_X1 port map( A => B(6), B => Y_6_port, S => ACCUMULATE, Z => n21)
                           ;
   U31 : MUX2_X1 port map( A => B(5), B => Y_5_port, S => ACCUMULATE, Z => n22)
                           ;
   U32 : MUX2_X1 port map( A => B(4), B => Y_4_port, S => ACCUMULATE, Z => n23)
                           ;
   U33 : MUX2_X1 port map( A => B(3), B => Y_3_port, S => ACCUMULATE, Z => n24)
                           ;
   U34 : MUX2_X1 port map( A => B(2), B => Y_2_port, S => ACCUMULATE, Z => n25)
                           ;
   U35 : MUX2_X1 port map( A => B(1), B => Y_1_port, S => ACCUMULATE, Z => n26)
                           ;
   U36 : MUX2_X1 port map( A => B(0), B => Y_0_port, S => ACCUMULATE, Z => n27)
                           ;
   U37 : AND2_X1 port map( A1 => RST_n, A2 => ADD_OUT_5_port, ZN => N9);
   U38 : AND2_X1 port map( A1 => ADD_OUT_4_port, A2 => RST_n, ZN => N8);
   U39 : AND2_X1 port map( A1 => ADD_OUT_3_port, A2 => RST_n, ZN => N7);
   U40 : AND2_X1 port map( A1 => ADD_OUT_2_port, A2 => RST_n, ZN => N6);
   U41 : AND2_X1 port map( A1 => ADD_OUT_1_port, A2 => RST_n, ZN => N5);
   U42 : AND2_X1 port map( A1 => ADD_OUT_0_port, A2 => RST_n, ZN => N4);
   U43 : AND2_X1 port map( A1 => ADD_OUT_7_port, A2 => RST_n, ZN => N11);
   U44 : AND2_X1 port map( A1 => ADD_OUT_6_port, A2 => RST_n, ZN => N10);

end SYN_BEHAVIORAL;
