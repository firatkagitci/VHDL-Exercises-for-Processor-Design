
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_ALU_N8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

-- define any necessary types
type TYPE_OP is (ADD, SUB, MULT, BITAND, BITOR, BITXOR, FUNCLSL, FUNCLSR, 
   FUNCRL, FUNCRR);
attribute ENUM_ENCODING of TYPE_OP : type is 
   "0000 0001 0010 0011 0100 0101 0110 0111 1000 1001";
   
   -- Declarations for conversion functions.
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
               std_logic_vector;

end CONV_PACK_ALU_N8;

package body CONV_PACK_ALU_N8 is
   
   -- enum type to std_logic_vector function
   function TYPE_OP_to_std_logic_vector(arg : in TYPE_OP) return 
   std_logic_vector is
   -- synopsys built_in SYN_FEED_THRU;
   begin
      case arg is
         when ADD => return "0000";
         when SUB => return "0001";
         when MULT => return "0010";
         when BITAND => return "0011";
         when BITOR => return "0100";
         when BITXOR => return "0101";
         when FUNCLSL => return "0110";
         when FUNCLSR => return "0111";
         when FUNCRL => return "1000";
         when FUNCRR => return "1001";
         when others => assert FALSE -- this should not happen.
               report "un-convertible value"
               severity warning;
               return "0000";
      end case;
   end;

end CONV_PACK_ALU_N8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N8.all;

entity ALU_N8_DW02_mult_0 is

   port( A, B : in std_logic_vector (3 downto 0);  TC : in std_logic;  PRODUCT 
         : out std_logic_vector (7 downto 0));

end ALU_N8_DW02_mult_0;

architecture SYN_csa of ALU_N8_DW02_mult_0 is

   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal ab_3_3_port, ab_3_2_port, ab_3_1_port, ab_3_0_port, ab_2_3_port, 
      ab_2_2_port, ab_2_1_port, ab_2_0_port, ab_1_3_port, ab_1_2_port, 
      ab_1_1_port, ab_1_0_port, ab_0_3_port, ab_0_2_port, ab_0_1_port, 
      CARRYB_3_2_port, CARRYB_3_1_port, CARRYB_3_0_port, CARRYB_2_2_port, 
      CARRYB_2_1_port, CARRYB_2_0_port, SUMB_3_2_port, SUMB_3_1_port, 
      SUMB_2_2_port, SUMB_2_1_port, n2, n3, n4, n5, n6, n7, n8, n10, n11, n12, 
      n14, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29
      , n30 : std_logic;

begin
   
   S4_0 : FA_X1 port map( A => ab_3_0_port, B => CARRYB_2_0_port, CI => 
                           SUMB_2_1_port, CO => CARRYB_3_0_port, S => 
                           PRODUCT(3));
   S4_1 : FA_X1 port map( A => ab_3_1_port, B => CARRYB_2_1_port, CI => 
                           SUMB_2_2_port, CO => CARRYB_3_1_port, S => 
                           SUMB_3_1_port);
   S5_2 : FA_X1 port map( A => ab_3_2_port, B => CARRYB_2_2_port, CI => 
                           ab_2_3_port, CO => CARRYB_3_2_port, S => 
                           SUMB_3_2_port);
   S1_2_0 : FA_X1 port map( A => ab_2_0_port, B => n3, CI => n6, CO => 
                           CARRYB_2_0_port, S => PRODUCT(2));
   S2_2_1 : FA_X1 port map( A => ab_2_1_port, B => n2, CI => n5, CO => 
                           CARRYB_2_1_port, S => SUMB_2_1_port);
   S3_2_2 : FA_X1 port map( A => ab_2_2_port, B => n4, CI => ab_1_3_port, CO =>
                           CARRYB_2_2_port, S => SUMB_2_2_port);
   U2 : AND2_X1 port map( A1 => ab_0_2_port, A2 => ab_1_1_port, ZN => n2);
   U3 : AND2_X1 port map( A1 => ab_0_1_port, A2 => ab_1_0_port, ZN => n3);
   U4 : AND2_X1 port map( A1 => ab_0_3_port, A2 => ab_1_2_port, ZN => n4);
   U5 : XOR2_X1 port map( A => ab_1_2_port, B => ab_0_3_port, Z => n5);
   U6 : XOR2_X1 port map( A => ab_1_1_port, B => ab_0_2_port, Z => n6);
   U7 : AND2_X1 port map( A1 => CARRYB_3_2_port, A2 => ab_3_3_port, ZN => n7);
   U8 : OR2_X1 port map( A1 => n12, A2 => n11, ZN => n8);
   U9 : INV_X1 port map( A => n16, ZN => n21);
   U10 : INV_X1 port map( A => n18, ZN => n22);
   U11 : XNOR2_X1 port map( A => n7, B => n20, ZN => PRODUCT(7));
   U12 : AND2_X1 port map( A1 => n8, A2 => n16, ZN => PRODUCT(5));
   U13 : XOR2_X1 port map( A => CARRYB_3_2_port, B => ab_3_3_port, Z => n10);
   U14 : XOR2_X1 port map( A => CARRYB_3_1_port, B => SUMB_3_2_port, Z => n11);
   U15 : AND2_X1 port map( A1 => SUMB_3_1_port, A2 => CARRYB_3_0_port, ZN => 
                           n12);
   U16 : XOR2_X1 port map( A => ab_1_0_port, B => ab_0_1_port, Z => PRODUCT(1))
                           ;
   U17 : AND2_X1 port map( A1 => CARRYB_3_1_port, A2 => SUMB_3_2_port, ZN => 
                           n14);
   U18 : XOR2_X1 port map( A => CARRYB_3_0_port, B => SUMB_3_1_port, Z => 
                           PRODUCT(4));
   U19 : INV_X1 port map( A => A(3), ZN => n23);
   U20 : INV_X1 port map( A => B(2), ZN => n28);
   U21 : INV_X1 port map( A => B(1), ZN => n29);
   U22 : INV_X1 port map( A => B(3), ZN => n27);
   U23 : INV_X1 port map( A => B(0), ZN => n30);
   U24 : INV_X1 port map( A => A(0), ZN => n26);
   U25 : INV_X1 port map( A => A(1), ZN => n25);
   U26 : INV_X1 port map( A => A(2), ZN => n24);
   U27 : NAND2_X1 port map( A1 => n12, A2 => n11, ZN => n16);
   U28 : AND2_X1 port map( A1 => n14, A2 => n10, ZN => n19);
   U29 : NOR2_X1 port map( A1 => n14, A2 => n10, ZN => n18);
   U30 : NOR2_X1 port map( A1 => n19, A2 => n18, ZN => n17);
   U31 : XOR2_X1 port map( A => n21, B => n17, Z => PRODUCT(6));
   U32 : AOI21_X1 port map( B1 => n21, B2 => n22, A => n19, ZN => n20);
   U33 : NOR2_X1 port map( A1 => n23, A2 => n27, ZN => ab_3_3_port);
   U34 : NOR2_X1 port map( A1 => n23, A2 => n28, ZN => ab_3_2_port);
   U35 : NOR2_X1 port map( A1 => n23, A2 => n29, ZN => ab_3_1_port);
   U36 : NOR2_X1 port map( A1 => n23, A2 => n30, ZN => ab_3_0_port);
   U37 : NOR2_X1 port map( A1 => n27, A2 => n24, ZN => ab_2_3_port);
   U38 : NOR2_X1 port map( A1 => n28, A2 => n24, ZN => ab_2_2_port);
   U39 : NOR2_X1 port map( A1 => n29, A2 => n24, ZN => ab_2_1_port);
   U40 : NOR2_X1 port map( A1 => n30, A2 => n24, ZN => ab_2_0_port);
   U41 : NOR2_X1 port map( A1 => n27, A2 => n25, ZN => ab_1_3_port);
   U42 : NOR2_X1 port map( A1 => n28, A2 => n25, ZN => ab_1_2_port);
   U43 : NOR2_X1 port map( A1 => n29, A2 => n25, ZN => ab_1_1_port);
   U44 : NOR2_X1 port map( A1 => n30, A2 => n25, ZN => ab_1_0_port);
   U45 : NOR2_X1 port map( A1 => n27, A2 => n26, ZN => ab_0_3_port);
   U46 : NOR2_X1 port map( A1 => n28, A2 => n26, ZN => ab_0_2_port);
   U47 : NOR2_X1 port map( A1 => n29, A2 => n26, ZN => ab_0_1_port);
   U48 : NOR2_X1 port map( A1 => n30, A2 => n26, ZN => PRODUCT(0));

end SYN_csa;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N8.all;

entity ALU_N8_DW01_addsub_0 is

   port( A, B : in std_logic_vector (7 downto 0);  CI, ADD_SUB : in std_logic; 
         SUM : out std_logic_vector (7 downto 0);  CO : out std_logic);

end ALU_N8_DW01_addsub_0;

architecture SYN_rpl of ALU_N8_DW01_addsub_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_7_port, carry_6_port, carry_5_port, carry_4_port, carry_3_port,
      carry_2_port, carry_1_port, B_AS_7_port, B_AS_6_port, B_AS_5_port, 
      B_AS_4_port, B_AS_3_port, B_AS_2_port, B_AS_1_port, B_AS_0_port, n_1003 :
      std_logic;

begin
   
   U1_7 : FA_X1 port map( A => A(7), B => B_AS_7_port, CI => carry_7_port, CO 
                           => n_1003, S => SUM(7));
   U1_6 : FA_X1 port map( A => A(6), B => B_AS_6_port, CI => carry_6_port, CO 
                           => carry_7_port, S => SUM(6));
   U1_5 : FA_X1 port map( A => A(5), B => B_AS_5_port, CI => carry_5_port, CO 
                           => carry_6_port, S => SUM(5));
   U1_4 : FA_X1 port map( A => A(4), B => B_AS_4_port, CI => carry_4_port, CO 
                           => carry_5_port, S => SUM(4));
   U1_3 : FA_X1 port map( A => A(3), B => B_AS_3_port, CI => carry_3_port, CO 
                           => carry_4_port, S => SUM(3));
   U1_2 : FA_X1 port map( A => A(2), B => B_AS_2_port, CI => carry_2_port, CO 
                           => carry_3_port, S => SUM(2));
   U1_1 : FA_X1 port map( A => A(1), B => B_AS_1_port, CI => carry_1_port, CO 
                           => carry_2_port, S => SUM(1));
   U1_0 : FA_X1 port map( A => A(0), B => B_AS_0_port, CI => ADD_SUB, CO => 
                           carry_1_port, S => SUM(0));
   U1 : XOR2_X1 port map( A => B(7), B => ADD_SUB, Z => B_AS_7_port);
   U2 : XOR2_X1 port map( A => B(6), B => ADD_SUB, Z => B_AS_6_port);
   U3 : XOR2_X1 port map( A => B(5), B => ADD_SUB, Z => B_AS_5_port);
   U4 : XOR2_X1 port map( A => B(4), B => ADD_SUB, Z => B_AS_4_port);
   U5 : XOR2_X1 port map( A => B(3), B => ADD_SUB, Z => B_AS_3_port);
   U6 : XOR2_X1 port map( A => B(2), B => ADD_SUB, Z => B_AS_2_port);
   U7 : XOR2_X1 port map( A => B(1), B => ADD_SUB, Z => B_AS_1_port);
   U8 : XOR2_X1 port map( A => B(0), B => ADD_SUB, Z => B_AS_0_port);

end SYN_rpl;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_ALU_N8.all;

entity ALU_N8 is

   port( FUNC : in TYPE_OP;  DATA1, DATA2 : in std_logic_vector (7 downto 0);  
         OUTALU : out std_logic_vector (7 downto 0));

end ALU_N8;

architecture SYN_BEHAVIOR of ALU_N8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component ALU_N8_DW02_mult_0
      port( A, B : in std_logic_vector (3 downto 0);  TC : in std_logic;  
            PRODUCT : out std_logic_vector (7 downto 0));
   end component;
   
   component ALU_N8_DW01_addsub_0
      port( A, B : in std_logic_vector (7 downto 0);  CI, ADD_SUB : in 
            std_logic;  SUM : out std_logic_vector (7 downto 0);  CO : out 
            std_logic);
   end component;
   
   component DLH_X1
      port( G, D : in std_logic;  Q : out std_logic);
   end component;
   
   signal FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port, N52, N53, N54, 
      N55, N56, N57, N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N92, N93
      , N94, N95, N96, N97, N98, N99, N100, n13, n16, U2_U1_Z_0, n96_port, 
      n97_port, n98_port, n99_port, n100_port, n101, n102, n103, n104, n105, 
      n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116, n117, 
      n118, n119, n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, 
      n130, n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141, 
      n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, 
      n154, n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, 
      n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177, 
      n178, n_1004 : std_logic;

begin
   (FUNC_3_port, FUNC_2_port, FUNC_1_port, FUNC_0_port) <= 
      TYPE_OP_to_std_logic_vector(FUNC);
   
   n13 <= '0';
   n16 <= '0';
   OUTALU_reg_7_inst : DLH_X1 port map( G => N92, D => N100, Q => OUTALU(7));
   OUTALU_reg_6_inst : DLH_X1 port map( G => N92, D => N99, Q => OUTALU(6));
   OUTALU_reg_5_inst : DLH_X1 port map( G => N92, D => N98, Q => OUTALU(5));
   OUTALU_reg_4_inst : DLH_X1 port map( G => N92, D => N97, Q => OUTALU(4));
   OUTALU_reg_3_inst : DLH_X1 port map( G => N92, D => N96, Q => OUTALU(3));
   OUTALU_reg_2_inst : DLH_X1 port map( G => N92, D => N95, Q => OUTALU(2));
   OUTALU_reg_1_inst : DLH_X1 port map( G => N92, D => N94, Q => OUTALU(1));
   OUTALU_reg_0_inst : DLH_X1 port map( G => N92, D => N93, Q => OUTALU(0));
   r63 : ALU_N8_DW01_addsub_0 port map( A(7) => DATA1(7), A(6) => DATA1(6), 
                           A(5) => DATA1(5), A(4) => DATA1(4), A(3) => DATA1(3)
                           , A(2) => DATA1(2), A(1) => DATA1(1), A(0) => 
                           DATA1(0), B(7) => DATA2(7), B(6) => DATA2(6), B(5) 
                           => DATA2(5), B(4) => DATA2(4), B(3) => DATA2(3), 
                           B(2) => DATA2(2), B(1) => DATA2(1), B(0) => DATA2(0)
                           , CI => n13, ADD_SUB => U2_U1_Z_0, SUM(7) => N59, 
                           SUM(6) => N58, SUM(5) => N57, SUM(4) => N56, SUM(3) 
                           => N55, SUM(2) => N54, SUM(1) => N53, SUM(0) => N52,
                           CO => n_1004);
   mult_30 : ALU_N8_DW02_mult_0 port map( A(3) => DATA1(3), A(2) => DATA1(2), 
                           A(1) => DATA1(1), A(0) => DATA1(0), B(3) => DATA2(3)
                           , B(2) => DATA2(2), B(1) => DATA2(1), B(0) => 
                           DATA2(0), TC => n16, PRODUCT(7) => N67, PRODUCT(6) 
                           => N66, PRODUCT(5) => N65, PRODUCT(4) => N64, 
                           PRODUCT(3) => N63, PRODUCT(2) => N62, PRODUCT(1) => 
                           N61, PRODUCT(0) => N60);
   U96 : NOR3_X2 port map( A1 => FUNC_2_port, A2 => FUNC_3_port, A3 => 
                           FUNC_1_port, ZN => n96_port);
   U97 : AND2_X1 port map( A1 => n96_port, A2 => FUNC_0_port, ZN => U2_U1_Z_0);
   U98 : OAI211_X1 port map( C1 => n97_port, C2 => n98_port, A => n99_port, B 
                           => n100_port, ZN => N99);
   U99 : AOI21_X1 port map( B1 => N66, B2 => n101, A => n102, ZN => n100_port);
   U100 : MUX2_X1 port map( A => n103, B => n104, S => DATA1(6), Z => n102);
   U101 : NAND2_X1 port map( A1 => n105, A2 => n106, ZN => n104);
   U102 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(6), Z => n105);
   U103 : AND2_X1 port map( A1 => n109, A2 => DATA2(6), ZN => n103);
   U104 : AOI22_X1 port map( A1 => N58, A2 => n96_port, B1 => DATA1(5), B2 => 
                           n110, ZN => n99_port);
   U105 : OAI211_X1 port map( C1 => n97_port, C2 => n111, A => n112, B => n113,
                           ZN => N98);
   U106 : AOI21_X1 port map( B1 => N65, B2 => n101, A => n114, ZN => n113);
   U107 : MUX2_X1 port map( A => n115, B => n116, S => DATA1(5), Z => n114);
   U108 : NAND2_X1 port map( A1 => n117, A2 => n106, ZN => n116);
   U109 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(5), Z => n117);
   U110 : AND2_X1 port map( A1 => n109, A2 => DATA2(5), ZN => n115);
   U111 : AOI22_X1 port map( A1 => N57, A2 => n96_port, B1 => DATA1(4), B2 => 
                           n110, ZN => n112);
   U112 : INV_X1 port map( A => DATA1(6), ZN => n111);
   U113 : OAI211_X1 port map( C1 => n118, C2 => n97_port, A => n119, B => n120,
                           ZN => N97);
   U114 : AOI21_X1 port map( B1 => N64, B2 => n101, A => n121, ZN => n120);
   U115 : MUX2_X1 port map( A => n122, B => n123, S => DATA1(4), Z => n121);
   U116 : NAND2_X1 port map( A1 => n124, A2 => n106, ZN => n123);
   U117 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(4), Z => n124);
   U118 : AND2_X1 port map( A1 => n109, A2 => DATA2(4), ZN => n122);
   U119 : AOI22_X1 port map( A1 => N56, A2 => n96_port, B1 => DATA1(3), B2 => 
                           n110, ZN => n119);
   U120 : INV_X1 port map( A => DATA1(5), ZN => n118);
   U121 : OAI211_X1 port map( C1 => n97_port, C2 => n125, A => n126, B => n127,
                           ZN => N96);
   U122 : AOI21_X1 port map( B1 => N63, B2 => n101, A => n128, ZN => n127);
   U123 : MUX2_X1 port map( A => n129, B => n130, S => DATA1(3), Z => n128);
   U124 : NAND2_X1 port map( A1 => n131, A2 => n106, ZN => n130);
   U125 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(3), Z => n131);
   U126 : AND2_X1 port map( A1 => n109, A2 => DATA2(3), ZN => n129);
   U127 : AOI22_X1 port map( A1 => N55, A2 => n96_port, B1 => DATA1(2), B2 => 
                           n110, ZN => n126);
   U128 : INV_X1 port map( A => DATA1(4), ZN => n125);
   U129 : OAI211_X1 port map( C1 => n97_port, C2 => n132, A => n133, B => n134,
                           ZN => N95);
   U130 : AOI21_X1 port map( B1 => N62, B2 => n101, A => n135, ZN => n134);
   U131 : MUX2_X1 port map( A => n136, B => n137, S => DATA1(2), Z => n135);
   U132 : NAND2_X1 port map( A1 => n138, A2 => n106, ZN => n137);
   U133 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(2), Z => n138);
   U134 : AND2_X1 port map( A1 => n109, A2 => DATA2(2), ZN => n136);
   U135 : AOI22_X1 port map( A1 => N54, A2 => n96_port, B1 => DATA1(1), B2 => 
                           n110, ZN => n133);
   U136 : INV_X1 port map( A => DATA1(3), ZN => n132);
   U137 : OAI211_X1 port map( C1 => n97_port, C2 => n139, A => n140, B => n141,
                           ZN => N94);
   U138 : AOI21_X1 port map( B1 => N61, B2 => n101, A => n142, ZN => n141);
   U139 : MUX2_X1 port map( A => n143, B => n144, S => DATA1(1), Z => n142);
   U140 : NAND2_X1 port map( A1 => n145, A2 => n106, ZN => n144);
   U141 : NAND2_X1 port map( A1 => n109, A2 => n146, ZN => n106);
   U142 : MUX2_X1 port map( A => n107, B => n108, S => DATA2(1), Z => n145);
   U143 : AND2_X1 port map( A1 => n109, A2 => DATA2(1), ZN => n143);
   U144 : INV_X1 port map( A => n147, ZN => n101);
   U145 : AOI22_X1 port map( A1 => N53, A2 => n96_port, B1 => DATA1(0), B2 => 
                           n110, ZN => n140);
   U146 : AND2_X1 port map( A1 => n148, A2 => n146, ZN => n110);
   U147 : INV_X1 port map( A => DATA1(2), ZN => n139);
   U148 : NAND2_X1 port map( A1 => FUNC_0_port, A2 => n148, ZN => n97_port);
   U149 : NAND2_X1 port map( A1 => n149, A2 => n150, ZN => N93);
   U150 : MUX2_X1 port map( A => n151, B => n152, S => FUNC_2_port, Z => n150);
   U151 : NAND2_X1 port map( A1 => n153, A2 => n154, ZN => n152);
   U152 : MUX2_X1 port map( A => DATA1(0), B => n155, S => DATA2(0), Z => n153)
                           ;
   U153 : NAND2_X1 port map( A1 => DATA1(0), A2 => FUNC_0_port, ZN => n155);
   U154 : AOI21_X1 port map( B1 => n156, B2 => FUNC_1_port, A => n157, ZN => 
                           n151);
   U155 : NOR3_X1 port map( A1 => n98_port, A2 => FUNC_0_port, A3 => n158, ZN 
                           => n157);
   U156 : INV_X1 port map( A => DATA1(7), ZN => n98_port);
   U157 : MUX2_X1 port map( A => N60, B => n159, S => FUNC_0_port, Z => n156);
   U158 : AND2_X1 port map( A1 => DATA1(0), A2 => DATA2(0), ZN => n159);
   U159 : AOI22_X1 port map( A1 => n160, A2 => DATA1(1), B1 => N52, B2 => 
                           n96_port, ZN => n149);
   U160 : NOR2_X1 port map( A1 => n161, A2 => n146, ZN => n160);
   U161 : NAND4_X1 port map( A1 => n107, A2 => n147, A3 => n108, A4 => n162, ZN
                           => N92);
   U162 : AOI21_X1 port map( B1 => n154, B2 => n163, A => n148, ZN => n162);
   U163 : NAND2_X1 port map( A1 => n164, A2 => n165, ZN => n148);
   U164 : OR3_X1 port map( A1 => n154, A2 => FUNC_3_port, A3 => n163, ZN => 
                           n165);
   U165 : INV_X1 port map( A => n166, ZN => n164);
   U166 : NAND2_X1 port map( A1 => n167, A2 => FUNC_0_port, ZN => n108);
   U167 : NAND2_X1 port map( A1 => n167, A2 => n146, ZN => n147);
   U168 : NOR3_X1 port map( A1 => FUNC_2_port, A2 => FUNC_3_port, A3 => n154, 
                           ZN => n167);
   U169 : INV_X1 port map( A => n109, ZN => n107);
   U170 : NOR3_X1 port map( A1 => FUNC_1_port, A2 => FUNC_3_port, A3 => n163, 
                           ZN => n109);
   U171 : INV_X1 port map( A => FUNC_2_port, ZN => n163);
   U172 : NAND2_X1 port map( A1 => n168, A2 => n169, ZN => N100);
   U173 : MUX2_X1 port map( A => n170, B => n171, S => FUNC_2_port, Z => n169);
   U174 : NAND2_X1 port map( A1 => n172, A2 => n154, ZN => n171);
   U175 : MUX2_X1 port map( A => DATA1(7), B => n173, S => DATA2(7), Z => n172)
                           ;
   U176 : NAND2_X1 port map( A1 => DATA1(7), A2 => FUNC_0_port, ZN => n173);
   U177 : AOI21_X1 port map( B1 => n174, B2 => FUNC_1_port, A => n175, ZN => 
                           n170);
   U178 : NOR3_X1 port map( A1 => n176, A2 => n146, A3 => n158, ZN => n175);
   U179 : INV_X1 port map( A => FUNC_0_port, ZN => n146);
   U180 : INV_X1 port map( A => DATA1(0), ZN => n176);
   U181 : MUX2_X1 port map( A => N67, B => n177, S => FUNC_0_port, Z => n174);
   U182 : AND2_X1 port map( A1 => DATA1(7), A2 => DATA2(7), ZN => n177);
   U183 : AOI22_X1 port map( A1 => n178, A2 => DATA1(6), B1 => N59, B2 => 
                           n96_port, ZN => n168);
   U184 : NOR2_X1 port map( A1 => FUNC_0_port, A2 => n161, ZN => n178);
   U185 : AOI21_X1 port map( B1 => FUNC_1_port, B2 => FUNC_2_port, A => n166, 
                           ZN => n161);
   U186 : NOR2_X1 port map( A1 => n158, A2 => FUNC_2_port, ZN => n166);
   U187 : NAND2_X1 port map( A1 => FUNC_3_port, A2 => n154, ZN => n158);
   U188 : INV_X1 port map( A => FUNC_1_port, ZN => n154);

end SYN_BEHAVIOR;
