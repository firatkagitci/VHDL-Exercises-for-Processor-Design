
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_BOOTHMUL_NBIT8 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_BOOTHMUL_NBIT8;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_0_DW01_add_0 is

   port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (16 downto 0);  CO : out std_logic);

end RCA_NBIT16_0_DW01_add_0;

architecture SYN_rpl of RCA_NBIT16_0_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1 
      : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           SUM(16), S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_2_DW01_add_0 is

   port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (16 downto 0);  CO : out std_logic);

end RCA_NBIT16_2_DW01_add_0;

architecture SYN_rpl of RCA_NBIT16_2_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1 
      : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           SUM(16), S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_1_DW01_add_0 is

   port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM : 
         out std_logic_vector (16 downto 0);  CO : out std_logic);

end RCA_NBIT16_1_DW01_add_0;

architecture SYN_rpl of RCA_NBIT16_1_DW01_add_0 is

   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   signal carry_15_port, carry_14_port, carry_13_port, carry_12_port, 
      carry_11_port, carry_10_port, carry_9_port, carry_8_port, carry_7_port, 
      carry_6_port, carry_5_port, carry_4_port, carry_3_port, carry_2_port, n1 
      : std_logic;

begin
   
   U1_15 : FA_X1 port map( A => A(15), B => B(15), CI => carry_15_port, CO => 
                           SUM(16), S => SUM(15));
   U1_14 : FA_X1 port map( A => A(14), B => B(14), CI => carry_14_port, CO => 
                           carry_15_port, S => SUM(14));
   U1_13 : FA_X1 port map( A => A(13), B => B(13), CI => carry_13_port, CO => 
                           carry_14_port, S => SUM(13));
   U1_12 : FA_X1 port map( A => A(12), B => B(12), CI => carry_12_port, CO => 
                           carry_13_port, S => SUM(12));
   U1_11 : FA_X1 port map( A => A(11), B => B(11), CI => carry_11_port, CO => 
                           carry_12_port, S => SUM(11));
   U1_10 : FA_X1 port map( A => A(10), B => B(10), CI => carry_10_port, CO => 
                           carry_11_port, S => SUM(10));
   U1_9 : FA_X1 port map( A => A(9), B => B(9), CI => carry_9_port, CO => 
                           carry_10_port, S => SUM(9));
   U1_8 : FA_X1 port map( A => A(8), B => B(8), CI => carry_8_port, CO => 
                           carry_9_port, S => SUM(8));
   U1_7 : FA_X1 port map( A => A(7), B => B(7), CI => carry_7_port, CO => 
                           carry_8_port, S => SUM(7));
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

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_2 is

   port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector 
         (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_2;

architecture SYN_BEHAVIORAL of RCA_NBIT16_2 is

   component RCA_NBIT16_2_DW01_add_0
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   signal n2, n_1012 : std_logic;

begin
   
   n2 <= '0';
   r52 : RCA_NBIT16_2_DW01_add_0 port map( A(16) => n2, A(15) => A(15), A(14) 
                           => A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(16) => n2, B(15) => B(15), B(14) => B(14)
                           , B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n2, SUM(16) => Co, SUM(15) => S(15), SUM(14) 
                           => S(14), SUM(13) => S(13), SUM(12) => S(12), 
                           SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9), 
                           SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1012);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_1 is

   port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector 
         (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_1;

architecture SYN_BEHAVIORAL of RCA_NBIT16_1 is

   component RCA_NBIT16_1_DW01_add_0
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   signal n2, n_1013 : std_logic;

begin
   
   n2 <= '0';
   r52 : RCA_NBIT16_1_DW01_add_0 port map( A(16) => n2, A(15) => A(15), A(14) 
                           => A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(16) => n2, B(15) => B(15), B(14) => B(14)
                           , B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n2, SUM(16) => Co, SUM(15) => S(15), SUM(14) 
                           => S(14), SUM(13) => S(13), SUM(12) => S(12), 
                           SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9), 
                           SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1013);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity MUX81_GENERIC_NBIT16_3 is

   port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX81_GENERIC_NBIT16_3;

architecture SYN_BEHAVIORAL of MUX81_GENERIC_NBIT16_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      : std_logic;

begin
   
   U1 : NOR3_X4 port map( A1 => n74, A2 => SEL(2), A3 => n73, ZN => n10);
   U2 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => n73, ZN => n12);
   U3 : NOR3_X4 port map( A1 => SEL(0), A2 => SEL(2), A3 => n74, ZN => n9);
   U4 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => SEL(0), ZN => n11);
   U5 : NAND4_X1 port map( A1 => n1, A2 => n2, A3 => n3, A4 => n4, ZN => Y(9));
   U6 : AOI22_X1 port map( A1 => G(9), A2 => n5, B1 => H(9), B2 => n6, ZN => n4
                           );
   U7 : AOI22_X1 port map( A1 => E(9), A2 => n7, B1 => F(9), B2 => n8, ZN => n3
                           );
   U8 : AOI22_X1 port map( A1 => C(9), A2 => n9, B1 => D(9), B2 => n10, ZN => 
                           n2);
   U9 : AOI22_X1 port map( A1 => A(9), A2 => n11, B1 => B(9), B2 => n12, ZN => 
                           n1);
   U10 : NAND4_X1 port map( A1 => n13, A2 => n14, A3 => n15, A4 => n16, ZN => 
                           Y(8));
   U11 : AOI22_X1 port map( A1 => G(8), A2 => n5, B1 => H(8), B2 => n6, ZN => 
                           n16);
   U12 : AOI22_X1 port map( A1 => E(8), A2 => n7, B1 => F(8), B2 => n8, ZN => 
                           n15);
   U13 : AOI22_X1 port map( A1 => C(8), A2 => n9, B1 => D(8), B2 => n10, ZN => 
                           n14);
   U14 : AOI22_X1 port map( A1 => A(8), A2 => n11, B1 => B(8), B2 => n12, ZN =>
                           n13);
   U15 : NAND4_X1 port map( A1 => n17, A2 => n18, A3 => n19, A4 => n20, ZN => 
                           Y(7));
   U16 : AOI22_X1 port map( A1 => G(7), A2 => n5, B1 => H(7), B2 => n6, ZN => 
                           n20);
   U17 : AOI22_X1 port map( A1 => E(7), A2 => n7, B1 => F(7), B2 => n8, ZN => 
                           n19);
   U18 : AOI22_X1 port map( A1 => C(7), A2 => n9, B1 => D(7), B2 => n10, ZN => 
                           n18);
   U19 : AOI22_X1 port map( A1 => A(7), A2 => n11, B1 => B(7), B2 => n12, ZN =>
                           n17);
   U20 : NAND4_X1 port map( A1 => n21, A2 => n22, A3 => n23, A4 => n24, ZN => 
                           Y(6));
   U21 : AOI22_X1 port map( A1 => G(6), A2 => n5, B1 => H(6), B2 => n6, ZN => 
                           n24);
   U22 : AOI22_X1 port map( A1 => E(6), A2 => n7, B1 => F(6), B2 => n8, ZN => 
                           n23);
   U23 : AOI22_X1 port map( A1 => C(6), A2 => n9, B1 => D(6), B2 => n10, ZN => 
                           n22);
   U24 : AOI22_X1 port map( A1 => A(6), A2 => n11, B1 => B(6), B2 => n12, ZN =>
                           n21);
   U25 : NAND4_X1 port map( A1 => n25, A2 => n26, A3 => n27, A4 => n28, ZN => 
                           Y(5));
   U26 : AOI22_X1 port map( A1 => G(5), A2 => n5, B1 => H(5), B2 => n6, ZN => 
                           n28);
   U27 : AOI22_X1 port map( A1 => E(5), A2 => n7, B1 => F(5), B2 => n8, ZN => 
                           n27);
   U28 : AOI22_X1 port map( A1 => C(5), A2 => n9, B1 => D(5), B2 => n10, ZN => 
                           n26);
   U29 : AOI22_X1 port map( A1 => A(5), A2 => n11, B1 => B(5), B2 => n12, ZN =>
                           n25);
   U30 : NAND4_X1 port map( A1 => n29, A2 => n30, A3 => n31, A4 => n32, ZN => 
                           Y(4));
   U31 : AOI22_X1 port map( A1 => G(4), A2 => n5, B1 => H(4), B2 => n6, ZN => 
                           n32);
   U32 : AOI22_X1 port map( A1 => E(4), A2 => n7, B1 => F(4), B2 => n8, ZN => 
                           n31);
   U33 : AOI22_X1 port map( A1 => C(4), A2 => n9, B1 => D(4), B2 => n10, ZN => 
                           n30);
   U34 : AOI22_X1 port map( A1 => A(4), A2 => n11, B1 => B(4), B2 => n12, ZN =>
                           n29);
   U35 : NAND4_X1 port map( A1 => n33, A2 => n34, A3 => n35, A4 => n36, ZN => 
                           Y(3));
   U36 : AOI22_X1 port map( A1 => G(3), A2 => n5, B1 => H(3), B2 => n6, ZN => 
                           n36);
   U37 : AOI22_X1 port map( A1 => E(3), A2 => n7, B1 => F(3), B2 => n8, ZN => 
                           n35);
   U38 : AOI22_X1 port map( A1 => C(3), A2 => n9, B1 => D(3), B2 => n10, ZN => 
                           n34);
   U39 : AOI22_X1 port map( A1 => A(3), A2 => n11, B1 => B(3), B2 => n12, ZN =>
                           n33);
   U40 : NAND4_X1 port map( A1 => n37, A2 => n38, A3 => n39, A4 => n40, ZN => 
                           Y(2));
   U41 : AOI22_X1 port map( A1 => G(2), A2 => n5, B1 => H(2), B2 => n6, ZN => 
                           n40);
   U42 : AOI22_X1 port map( A1 => E(2), A2 => n7, B1 => F(2), B2 => n8, ZN => 
                           n39);
   U43 : AOI22_X1 port map( A1 => C(2), A2 => n9, B1 => D(2), B2 => n10, ZN => 
                           n38);
   U44 : AOI22_X1 port map( A1 => A(2), A2 => n11, B1 => B(2), B2 => n12, ZN =>
                           n37);
   U45 : NAND4_X1 port map( A1 => n41, A2 => n42, A3 => n43, A4 => n44, ZN => 
                           Y(1));
   U46 : AOI22_X1 port map( A1 => G(1), A2 => n5, B1 => H(1), B2 => n6, ZN => 
                           n44);
   U47 : AOI22_X1 port map( A1 => E(1), A2 => n7, B1 => F(1), B2 => n8, ZN => 
                           n43);
   U48 : AOI22_X1 port map( A1 => C(1), A2 => n9, B1 => D(1), B2 => n10, ZN => 
                           n42);
   U49 : AOI22_X1 port map( A1 => A(1), A2 => n11, B1 => B(1), B2 => n12, ZN =>
                           n41);
   U50 : NAND4_X1 port map( A1 => n45, A2 => n46, A3 => n47, A4 => n48, ZN => 
                           Y(15));
   U51 : AOI22_X1 port map( A1 => G(15), A2 => n5, B1 => H(15), B2 => n6, ZN =>
                           n48);
   U52 : AOI22_X1 port map( A1 => E(15), A2 => n7, B1 => F(15), B2 => n8, ZN =>
                           n47);
   U53 : AOI22_X1 port map( A1 => C(15), A2 => n9, B1 => D(15), B2 => n10, ZN 
                           => n46);
   U54 : AOI22_X1 port map( A1 => A(15), A2 => n11, B1 => B(15), B2 => n12, ZN 
                           => n45);
   U55 : NAND4_X1 port map( A1 => n49, A2 => n50, A3 => n51, A4 => n52, ZN => 
                           Y(14));
   U56 : AOI22_X1 port map( A1 => G(14), A2 => n5, B1 => H(14), B2 => n6, ZN =>
                           n52);
   U57 : AOI22_X1 port map( A1 => E(14), A2 => n7, B1 => F(14), B2 => n8, ZN =>
                           n51);
   U58 : AOI22_X1 port map( A1 => C(14), A2 => n9, B1 => D(14), B2 => n10, ZN 
                           => n50);
   U59 : AOI22_X1 port map( A1 => A(14), A2 => n11, B1 => B(14), B2 => n12, ZN 
                           => n49);
   U60 : NAND4_X1 port map( A1 => n53, A2 => n54, A3 => n55, A4 => n56, ZN => 
                           Y(13));
   U61 : AOI22_X1 port map( A1 => G(13), A2 => n5, B1 => H(13), B2 => n6, ZN =>
                           n56);
   U62 : AOI22_X1 port map( A1 => E(13), A2 => n7, B1 => F(13), B2 => n8, ZN =>
                           n55);
   U63 : AOI22_X1 port map( A1 => C(13), A2 => n9, B1 => D(13), B2 => n10, ZN 
                           => n54);
   U64 : AOI22_X1 port map( A1 => A(13), A2 => n11, B1 => B(13), B2 => n12, ZN 
                           => n53);
   U65 : NAND4_X1 port map( A1 => n57, A2 => n58, A3 => n59, A4 => n60, ZN => 
                           Y(12));
   U66 : AOI22_X1 port map( A1 => G(12), A2 => n5, B1 => H(12), B2 => n6, ZN =>
                           n60);
   U67 : AOI22_X1 port map( A1 => E(12), A2 => n7, B1 => F(12), B2 => n8, ZN =>
                           n59);
   U68 : AOI22_X1 port map( A1 => C(12), A2 => n9, B1 => D(12), B2 => n10, ZN 
                           => n58);
   U69 : AOI22_X1 port map( A1 => A(12), A2 => n11, B1 => B(12), B2 => n12, ZN 
                           => n57);
   U70 : NAND4_X1 port map( A1 => n61, A2 => n62, A3 => n63, A4 => n64, ZN => 
                           Y(11));
   U71 : AOI22_X1 port map( A1 => G(11), A2 => n5, B1 => H(11), B2 => n6, ZN =>
                           n64);
   U72 : AOI22_X1 port map( A1 => E(11), A2 => n7, B1 => F(11), B2 => n8, ZN =>
                           n63);
   U73 : AOI22_X1 port map( A1 => C(11), A2 => n9, B1 => D(11), B2 => n10, ZN 
                           => n62);
   U74 : AOI22_X1 port map( A1 => A(11), A2 => n11, B1 => B(11), B2 => n12, ZN 
                           => n61);
   U75 : NAND4_X1 port map( A1 => n65, A2 => n66, A3 => n67, A4 => n68, ZN => 
                           Y(10));
   U76 : AOI22_X1 port map( A1 => G(10), A2 => n5, B1 => H(10), B2 => n6, ZN =>
                           n68);
   U77 : AOI22_X1 port map( A1 => E(10), A2 => n7, B1 => F(10), B2 => n8, ZN =>
                           n67);
   U78 : AOI22_X1 port map( A1 => C(10), A2 => n9, B1 => D(10), B2 => n10, ZN 
                           => n66);
   U79 : AOI22_X1 port map( A1 => A(10), A2 => n11, B1 => B(10), B2 => n12, ZN 
                           => n65);
   U80 : NAND4_X1 port map( A1 => n69, A2 => n70, A3 => n71, A4 => n72, ZN => 
                           Y(0));
   U81 : AOI22_X1 port map( A1 => G(0), A2 => n5, B1 => H(0), B2 => n6, ZN => 
                           n72);
   U82 : AND3_X1 port map( A1 => SEL(2), A2 => SEL(1), A3 => SEL(0), ZN => n6);
   U83 : AND3_X1 port map( A1 => SEL(1), A2 => n73, A3 => SEL(2), ZN => n5);
   U84 : AOI22_X1 port map( A1 => E(0), A2 => n7, B1 => F(0), B2 => n8, ZN => 
                           n71);
   U85 : AND3_X1 port map( A1 => SEL(2), A2 => n74, A3 => SEL(0), ZN => n8);
   U86 : AND3_X1 port map( A1 => n73, A2 => n74, A3 => SEL(2), ZN => n7);
   U87 : AOI22_X1 port map( A1 => C(0), A2 => n9, B1 => D(0), B2 => n10, ZN => 
                           n70);
   U88 : INV_X1 port map( A => SEL(1), ZN => n74);
   U89 : AOI22_X1 port map( A1 => A(0), A2 => n11, B1 => B(0), B2 => n12, ZN =>
                           n69);
   U90 : INV_X1 port map( A => SEL(0), ZN => n73);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity MUX81_GENERIC_NBIT16_2 is

   port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX81_GENERIC_NBIT16_2;

architecture SYN_BEHAVIORAL of MUX81_GENERIC_NBIT16_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      : std_logic;

begin
   
   U1 : NOR3_X4 port map( A1 => n74, A2 => SEL(2), A3 => n73, ZN => n10);
   U2 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => n73, ZN => n12);
   U3 : NOR3_X4 port map( A1 => SEL(0), A2 => SEL(2), A3 => n74, ZN => n9);
   U4 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => SEL(0), ZN => n11);
   U5 : NAND4_X1 port map( A1 => n1, A2 => n2, A3 => n3, A4 => n4, ZN => Y(9));
   U6 : AOI22_X1 port map( A1 => G(9), A2 => n5, B1 => H(9), B2 => n6, ZN => n4
                           );
   U7 : AOI22_X1 port map( A1 => E(9), A2 => n7, B1 => F(9), B2 => n8, ZN => n3
                           );
   U8 : AOI22_X1 port map( A1 => C(9), A2 => n9, B1 => D(9), B2 => n10, ZN => 
                           n2);
   U9 : AOI22_X1 port map( A1 => A(9), A2 => n11, B1 => B(9), B2 => n12, ZN => 
                           n1);
   U10 : NAND4_X1 port map( A1 => n13, A2 => n14, A3 => n15, A4 => n16, ZN => 
                           Y(8));
   U11 : AOI22_X1 port map( A1 => G(8), A2 => n5, B1 => H(8), B2 => n6, ZN => 
                           n16);
   U12 : AOI22_X1 port map( A1 => E(8), A2 => n7, B1 => F(8), B2 => n8, ZN => 
                           n15);
   U13 : AOI22_X1 port map( A1 => C(8), A2 => n9, B1 => D(8), B2 => n10, ZN => 
                           n14);
   U14 : AOI22_X1 port map( A1 => A(8), A2 => n11, B1 => B(8), B2 => n12, ZN =>
                           n13);
   U15 : NAND4_X1 port map( A1 => n17, A2 => n18, A3 => n19, A4 => n20, ZN => 
                           Y(7));
   U16 : AOI22_X1 port map( A1 => G(7), A2 => n5, B1 => H(7), B2 => n6, ZN => 
                           n20);
   U17 : AOI22_X1 port map( A1 => E(7), A2 => n7, B1 => F(7), B2 => n8, ZN => 
                           n19);
   U18 : AOI22_X1 port map( A1 => C(7), A2 => n9, B1 => D(7), B2 => n10, ZN => 
                           n18);
   U19 : AOI22_X1 port map( A1 => A(7), A2 => n11, B1 => B(7), B2 => n12, ZN =>
                           n17);
   U20 : NAND4_X1 port map( A1 => n21, A2 => n22, A3 => n23, A4 => n24, ZN => 
                           Y(6));
   U21 : AOI22_X1 port map( A1 => G(6), A2 => n5, B1 => H(6), B2 => n6, ZN => 
                           n24);
   U22 : AOI22_X1 port map( A1 => E(6), A2 => n7, B1 => F(6), B2 => n8, ZN => 
                           n23);
   U23 : AOI22_X1 port map( A1 => C(6), A2 => n9, B1 => D(6), B2 => n10, ZN => 
                           n22);
   U24 : AOI22_X1 port map( A1 => A(6), A2 => n11, B1 => B(6), B2 => n12, ZN =>
                           n21);
   U25 : NAND4_X1 port map( A1 => n25, A2 => n26, A3 => n27, A4 => n28, ZN => 
                           Y(5));
   U26 : AOI22_X1 port map( A1 => G(5), A2 => n5, B1 => H(5), B2 => n6, ZN => 
                           n28);
   U27 : AOI22_X1 port map( A1 => E(5), A2 => n7, B1 => F(5), B2 => n8, ZN => 
                           n27);
   U28 : AOI22_X1 port map( A1 => C(5), A2 => n9, B1 => D(5), B2 => n10, ZN => 
                           n26);
   U29 : AOI22_X1 port map( A1 => A(5), A2 => n11, B1 => B(5), B2 => n12, ZN =>
                           n25);
   U30 : NAND4_X1 port map( A1 => n29, A2 => n30, A3 => n31, A4 => n32, ZN => 
                           Y(4));
   U31 : AOI22_X1 port map( A1 => G(4), A2 => n5, B1 => H(4), B2 => n6, ZN => 
                           n32);
   U32 : AOI22_X1 port map( A1 => E(4), A2 => n7, B1 => F(4), B2 => n8, ZN => 
                           n31);
   U33 : AOI22_X1 port map( A1 => C(4), A2 => n9, B1 => D(4), B2 => n10, ZN => 
                           n30);
   U34 : AOI22_X1 port map( A1 => A(4), A2 => n11, B1 => B(4), B2 => n12, ZN =>
                           n29);
   U35 : NAND4_X1 port map( A1 => n33, A2 => n34, A3 => n35, A4 => n36, ZN => 
                           Y(3));
   U36 : AOI22_X1 port map( A1 => G(3), A2 => n5, B1 => H(3), B2 => n6, ZN => 
                           n36);
   U37 : AOI22_X1 port map( A1 => E(3), A2 => n7, B1 => F(3), B2 => n8, ZN => 
                           n35);
   U38 : AOI22_X1 port map( A1 => C(3), A2 => n9, B1 => D(3), B2 => n10, ZN => 
                           n34);
   U39 : AOI22_X1 port map( A1 => A(3), A2 => n11, B1 => B(3), B2 => n12, ZN =>
                           n33);
   U40 : NAND4_X1 port map( A1 => n37, A2 => n38, A3 => n39, A4 => n40, ZN => 
                           Y(2));
   U41 : AOI22_X1 port map( A1 => G(2), A2 => n5, B1 => H(2), B2 => n6, ZN => 
                           n40);
   U42 : AOI22_X1 port map( A1 => E(2), A2 => n7, B1 => F(2), B2 => n8, ZN => 
                           n39);
   U43 : AOI22_X1 port map( A1 => C(2), A2 => n9, B1 => D(2), B2 => n10, ZN => 
                           n38);
   U44 : AOI22_X1 port map( A1 => A(2), A2 => n11, B1 => B(2), B2 => n12, ZN =>
                           n37);
   U45 : NAND4_X1 port map( A1 => n41, A2 => n42, A3 => n43, A4 => n44, ZN => 
                           Y(1));
   U46 : AOI22_X1 port map( A1 => G(1), A2 => n5, B1 => H(1), B2 => n6, ZN => 
                           n44);
   U47 : AOI22_X1 port map( A1 => E(1), A2 => n7, B1 => F(1), B2 => n8, ZN => 
                           n43);
   U48 : AOI22_X1 port map( A1 => C(1), A2 => n9, B1 => D(1), B2 => n10, ZN => 
                           n42);
   U49 : AOI22_X1 port map( A1 => A(1), A2 => n11, B1 => B(1), B2 => n12, ZN =>
                           n41);
   U50 : NAND4_X1 port map( A1 => n45, A2 => n46, A3 => n47, A4 => n48, ZN => 
                           Y(15));
   U51 : AOI22_X1 port map( A1 => G(15), A2 => n5, B1 => H(15), B2 => n6, ZN =>
                           n48);
   U52 : AOI22_X1 port map( A1 => E(15), A2 => n7, B1 => F(15), B2 => n8, ZN =>
                           n47);
   U53 : AOI22_X1 port map( A1 => C(15), A2 => n9, B1 => D(15), B2 => n10, ZN 
                           => n46);
   U54 : AOI22_X1 port map( A1 => A(15), A2 => n11, B1 => B(15), B2 => n12, ZN 
                           => n45);
   U55 : NAND4_X1 port map( A1 => n49, A2 => n50, A3 => n51, A4 => n52, ZN => 
                           Y(14));
   U56 : AOI22_X1 port map( A1 => G(14), A2 => n5, B1 => H(14), B2 => n6, ZN =>
                           n52);
   U57 : AOI22_X1 port map( A1 => E(14), A2 => n7, B1 => F(14), B2 => n8, ZN =>
                           n51);
   U58 : AOI22_X1 port map( A1 => C(14), A2 => n9, B1 => D(14), B2 => n10, ZN 
                           => n50);
   U59 : AOI22_X1 port map( A1 => A(14), A2 => n11, B1 => B(14), B2 => n12, ZN 
                           => n49);
   U60 : NAND4_X1 port map( A1 => n53, A2 => n54, A3 => n55, A4 => n56, ZN => 
                           Y(13));
   U61 : AOI22_X1 port map( A1 => G(13), A2 => n5, B1 => H(13), B2 => n6, ZN =>
                           n56);
   U62 : AOI22_X1 port map( A1 => E(13), A2 => n7, B1 => F(13), B2 => n8, ZN =>
                           n55);
   U63 : AOI22_X1 port map( A1 => C(13), A2 => n9, B1 => D(13), B2 => n10, ZN 
                           => n54);
   U64 : AOI22_X1 port map( A1 => A(13), A2 => n11, B1 => B(13), B2 => n12, ZN 
                           => n53);
   U65 : NAND4_X1 port map( A1 => n57, A2 => n58, A3 => n59, A4 => n60, ZN => 
                           Y(12));
   U66 : AOI22_X1 port map( A1 => G(12), A2 => n5, B1 => H(12), B2 => n6, ZN =>
                           n60);
   U67 : AOI22_X1 port map( A1 => E(12), A2 => n7, B1 => F(12), B2 => n8, ZN =>
                           n59);
   U68 : AOI22_X1 port map( A1 => C(12), A2 => n9, B1 => D(12), B2 => n10, ZN 
                           => n58);
   U69 : AOI22_X1 port map( A1 => A(12), A2 => n11, B1 => B(12), B2 => n12, ZN 
                           => n57);
   U70 : NAND4_X1 port map( A1 => n61, A2 => n62, A3 => n63, A4 => n64, ZN => 
                           Y(11));
   U71 : AOI22_X1 port map( A1 => G(11), A2 => n5, B1 => H(11), B2 => n6, ZN =>
                           n64);
   U72 : AOI22_X1 port map( A1 => E(11), A2 => n7, B1 => F(11), B2 => n8, ZN =>
                           n63);
   U73 : AOI22_X1 port map( A1 => C(11), A2 => n9, B1 => D(11), B2 => n10, ZN 
                           => n62);
   U74 : AOI22_X1 port map( A1 => A(11), A2 => n11, B1 => B(11), B2 => n12, ZN 
                           => n61);
   U75 : NAND4_X1 port map( A1 => n65, A2 => n66, A3 => n67, A4 => n68, ZN => 
                           Y(10));
   U76 : AOI22_X1 port map( A1 => G(10), A2 => n5, B1 => H(10), B2 => n6, ZN =>
                           n68);
   U77 : AOI22_X1 port map( A1 => E(10), A2 => n7, B1 => F(10), B2 => n8, ZN =>
                           n67);
   U78 : AOI22_X1 port map( A1 => C(10), A2 => n9, B1 => D(10), B2 => n10, ZN 
                           => n66);
   U79 : AOI22_X1 port map( A1 => A(10), A2 => n11, B1 => B(10), B2 => n12, ZN 
                           => n65);
   U80 : NAND4_X1 port map( A1 => n69, A2 => n70, A3 => n71, A4 => n72, ZN => 
                           Y(0));
   U81 : AOI22_X1 port map( A1 => G(0), A2 => n5, B1 => H(0), B2 => n6, ZN => 
                           n72);
   U82 : AND3_X1 port map( A1 => SEL(2), A2 => SEL(1), A3 => SEL(0), ZN => n6);
   U83 : AND3_X1 port map( A1 => SEL(1), A2 => n73, A3 => SEL(2), ZN => n5);
   U84 : AOI22_X1 port map( A1 => E(0), A2 => n7, B1 => F(0), B2 => n8, ZN => 
                           n71);
   U85 : AND3_X1 port map( A1 => SEL(2), A2 => n74, A3 => SEL(0), ZN => n8);
   U86 : AND3_X1 port map( A1 => n73, A2 => n74, A3 => SEL(2), ZN => n7);
   U87 : AOI22_X1 port map( A1 => C(0), A2 => n9, B1 => D(0), B2 => n10, ZN => 
                           n70);
   U88 : INV_X1 port map( A => SEL(1), ZN => n74);
   U89 : AOI22_X1 port map( A1 => A(0), A2 => n11, B1 => B(0), B2 => n12, ZN =>
                           n69);
   U90 : INV_X1 port map( A => SEL(0), ZN => n73);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity MUX81_GENERIC_NBIT16_1 is

   port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX81_GENERIC_NBIT16_1;

architecture SYN_BEHAVIORAL of MUX81_GENERIC_NBIT16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      : std_logic;

begin
   
   U1 : NOR3_X4 port map( A1 => n74, A2 => SEL(2), A3 => n73, ZN => n10);
   U2 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => n73, ZN => n12);
   U3 : NOR3_X4 port map( A1 => SEL(0), A2 => SEL(2), A3 => n74, ZN => n9);
   U4 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => SEL(0), ZN => n11);
   U5 : NAND4_X1 port map( A1 => n1, A2 => n2, A3 => n3, A4 => n4, ZN => Y(9));
   U6 : AOI22_X1 port map( A1 => G(9), A2 => n5, B1 => H(9), B2 => n6, ZN => n4
                           );
   U7 : AOI22_X1 port map( A1 => E(9), A2 => n7, B1 => F(9), B2 => n8, ZN => n3
                           );
   U8 : AOI22_X1 port map( A1 => C(9), A2 => n9, B1 => D(9), B2 => n10, ZN => 
                           n2);
   U9 : AOI22_X1 port map( A1 => A(9), A2 => n11, B1 => B(9), B2 => n12, ZN => 
                           n1);
   U10 : NAND4_X1 port map( A1 => n13, A2 => n14, A3 => n15, A4 => n16, ZN => 
                           Y(8));
   U11 : AOI22_X1 port map( A1 => G(8), A2 => n5, B1 => H(8), B2 => n6, ZN => 
                           n16);
   U12 : AOI22_X1 port map( A1 => E(8), A2 => n7, B1 => F(8), B2 => n8, ZN => 
                           n15);
   U13 : AOI22_X1 port map( A1 => C(8), A2 => n9, B1 => D(8), B2 => n10, ZN => 
                           n14);
   U14 : AOI22_X1 port map( A1 => A(8), A2 => n11, B1 => B(8), B2 => n12, ZN =>
                           n13);
   U15 : NAND4_X1 port map( A1 => n17, A2 => n18, A3 => n19, A4 => n20, ZN => 
                           Y(7));
   U16 : AOI22_X1 port map( A1 => G(7), A2 => n5, B1 => H(7), B2 => n6, ZN => 
                           n20);
   U17 : AOI22_X1 port map( A1 => E(7), A2 => n7, B1 => F(7), B2 => n8, ZN => 
                           n19);
   U18 : AOI22_X1 port map( A1 => C(7), A2 => n9, B1 => D(7), B2 => n10, ZN => 
                           n18);
   U19 : AOI22_X1 port map( A1 => A(7), A2 => n11, B1 => B(7), B2 => n12, ZN =>
                           n17);
   U20 : NAND4_X1 port map( A1 => n21, A2 => n22, A3 => n23, A4 => n24, ZN => 
                           Y(6));
   U21 : AOI22_X1 port map( A1 => G(6), A2 => n5, B1 => H(6), B2 => n6, ZN => 
                           n24);
   U22 : AOI22_X1 port map( A1 => E(6), A2 => n7, B1 => F(6), B2 => n8, ZN => 
                           n23);
   U23 : AOI22_X1 port map( A1 => C(6), A2 => n9, B1 => D(6), B2 => n10, ZN => 
                           n22);
   U24 : AOI22_X1 port map( A1 => A(6), A2 => n11, B1 => B(6), B2 => n12, ZN =>
                           n21);
   U25 : NAND4_X1 port map( A1 => n25, A2 => n26, A3 => n27, A4 => n28, ZN => 
                           Y(5));
   U26 : AOI22_X1 port map( A1 => G(5), A2 => n5, B1 => H(5), B2 => n6, ZN => 
                           n28);
   U27 : AOI22_X1 port map( A1 => E(5), A2 => n7, B1 => F(5), B2 => n8, ZN => 
                           n27);
   U28 : AOI22_X1 port map( A1 => C(5), A2 => n9, B1 => D(5), B2 => n10, ZN => 
                           n26);
   U29 : AOI22_X1 port map( A1 => A(5), A2 => n11, B1 => B(5), B2 => n12, ZN =>
                           n25);
   U30 : NAND4_X1 port map( A1 => n29, A2 => n30, A3 => n31, A4 => n32, ZN => 
                           Y(4));
   U31 : AOI22_X1 port map( A1 => G(4), A2 => n5, B1 => H(4), B2 => n6, ZN => 
                           n32);
   U32 : AOI22_X1 port map( A1 => E(4), A2 => n7, B1 => F(4), B2 => n8, ZN => 
                           n31);
   U33 : AOI22_X1 port map( A1 => C(4), A2 => n9, B1 => D(4), B2 => n10, ZN => 
                           n30);
   U34 : AOI22_X1 port map( A1 => A(4), A2 => n11, B1 => B(4), B2 => n12, ZN =>
                           n29);
   U35 : NAND4_X1 port map( A1 => n33, A2 => n34, A3 => n35, A4 => n36, ZN => 
                           Y(3));
   U36 : AOI22_X1 port map( A1 => G(3), A2 => n5, B1 => H(3), B2 => n6, ZN => 
                           n36);
   U37 : AOI22_X1 port map( A1 => E(3), A2 => n7, B1 => F(3), B2 => n8, ZN => 
                           n35);
   U38 : AOI22_X1 port map( A1 => C(3), A2 => n9, B1 => D(3), B2 => n10, ZN => 
                           n34);
   U39 : AOI22_X1 port map( A1 => A(3), A2 => n11, B1 => B(3), B2 => n12, ZN =>
                           n33);
   U40 : NAND4_X1 port map( A1 => n37, A2 => n38, A3 => n39, A4 => n40, ZN => 
                           Y(2));
   U41 : AOI22_X1 port map( A1 => G(2), A2 => n5, B1 => H(2), B2 => n6, ZN => 
                           n40);
   U42 : AOI22_X1 port map( A1 => E(2), A2 => n7, B1 => F(2), B2 => n8, ZN => 
                           n39);
   U43 : AOI22_X1 port map( A1 => C(2), A2 => n9, B1 => D(2), B2 => n10, ZN => 
                           n38);
   U44 : AOI22_X1 port map( A1 => A(2), A2 => n11, B1 => B(2), B2 => n12, ZN =>
                           n37);
   U45 : NAND4_X1 port map( A1 => n41, A2 => n42, A3 => n43, A4 => n44, ZN => 
                           Y(1));
   U46 : AOI22_X1 port map( A1 => G(1), A2 => n5, B1 => H(1), B2 => n6, ZN => 
                           n44);
   U47 : AOI22_X1 port map( A1 => E(1), A2 => n7, B1 => F(1), B2 => n8, ZN => 
                           n43);
   U48 : AOI22_X1 port map( A1 => C(1), A2 => n9, B1 => D(1), B2 => n10, ZN => 
                           n42);
   U49 : AOI22_X1 port map( A1 => A(1), A2 => n11, B1 => B(1), B2 => n12, ZN =>
                           n41);
   U50 : NAND4_X1 port map( A1 => n45, A2 => n46, A3 => n47, A4 => n48, ZN => 
                           Y(15));
   U51 : AOI22_X1 port map( A1 => G(15), A2 => n5, B1 => H(15), B2 => n6, ZN =>
                           n48);
   U52 : AOI22_X1 port map( A1 => E(15), A2 => n7, B1 => F(15), B2 => n8, ZN =>
                           n47);
   U53 : AOI22_X1 port map( A1 => C(15), A2 => n9, B1 => D(15), B2 => n10, ZN 
                           => n46);
   U54 : AOI22_X1 port map( A1 => A(15), A2 => n11, B1 => B(15), B2 => n12, ZN 
                           => n45);
   U55 : NAND4_X1 port map( A1 => n49, A2 => n50, A3 => n51, A4 => n52, ZN => 
                           Y(14));
   U56 : AOI22_X1 port map( A1 => G(14), A2 => n5, B1 => H(14), B2 => n6, ZN =>
                           n52);
   U57 : AOI22_X1 port map( A1 => E(14), A2 => n7, B1 => F(14), B2 => n8, ZN =>
                           n51);
   U58 : AOI22_X1 port map( A1 => C(14), A2 => n9, B1 => D(14), B2 => n10, ZN 
                           => n50);
   U59 : AOI22_X1 port map( A1 => A(14), A2 => n11, B1 => B(14), B2 => n12, ZN 
                           => n49);
   U60 : NAND4_X1 port map( A1 => n53, A2 => n54, A3 => n55, A4 => n56, ZN => 
                           Y(13));
   U61 : AOI22_X1 port map( A1 => G(13), A2 => n5, B1 => H(13), B2 => n6, ZN =>
                           n56);
   U62 : AOI22_X1 port map( A1 => E(13), A2 => n7, B1 => F(13), B2 => n8, ZN =>
                           n55);
   U63 : AOI22_X1 port map( A1 => C(13), A2 => n9, B1 => D(13), B2 => n10, ZN 
                           => n54);
   U64 : AOI22_X1 port map( A1 => A(13), A2 => n11, B1 => B(13), B2 => n12, ZN 
                           => n53);
   U65 : NAND4_X1 port map( A1 => n57, A2 => n58, A3 => n59, A4 => n60, ZN => 
                           Y(12));
   U66 : AOI22_X1 port map( A1 => G(12), A2 => n5, B1 => H(12), B2 => n6, ZN =>
                           n60);
   U67 : AOI22_X1 port map( A1 => E(12), A2 => n7, B1 => F(12), B2 => n8, ZN =>
                           n59);
   U68 : AOI22_X1 port map( A1 => C(12), A2 => n9, B1 => D(12), B2 => n10, ZN 
                           => n58);
   U69 : AOI22_X1 port map( A1 => A(12), A2 => n11, B1 => B(12), B2 => n12, ZN 
                           => n57);
   U70 : NAND4_X1 port map( A1 => n61, A2 => n62, A3 => n63, A4 => n64, ZN => 
                           Y(11));
   U71 : AOI22_X1 port map( A1 => G(11), A2 => n5, B1 => H(11), B2 => n6, ZN =>
                           n64);
   U72 : AOI22_X1 port map( A1 => E(11), A2 => n7, B1 => F(11), B2 => n8, ZN =>
                           n63);
   U73 : AOI22_X1 port map( A1 => C(11), A2 => n9, B1 => D(11), B2 => n10, ZN 
                           => n62);
   U74 : AOI22_X1 port map( A1 => A(11), A2 => n11, B1 => B(11), B2 => n12, ZN 
                           => n61);
   U75 : NAND4_X1 port map( A1 => n65, A2 => n66, A3 => n67, A4 => n68, ZN => 
                           Y(10));
   U76 : AOI22_X1 port map( A1 => G(10), A2 => n5, B1 => H(10), B2 => n6, ZN =>
                           n68);
   U77 : AOI22_X1 port map( A1 => E(10), A2 => n7, B1 => F(10), B2 => n8, ZN =>
                           n67);
   U78 : AOI22_X1 port map( A1 => C(10), A2 => n9, B1 => D(10), B2 => n10, ZN 
                           => n66);
   U79 : AOI22_X1 port map( A1 => A(10), A2 => n11, B1 => B(10), B2 => n12, ZN 
                           => n65);
   U80 : NAND4_X1 port map( A1 => n69, A2 => n70, A3 => n71, A4 => n72, ZN => 
                           Y(0));
   U81 : AOI22_X1 port map( A1 => G(0), A2 => n5, B1 => H(0), B2 => n6, ZN => 
                           n72);
   U82 : AND3_X1 port map( A1 => SEL(2), A2 => SEL(1), A3 => SEL(0), ZN => n6);
   U83 : AND3_X1 port map( A1 => SEL(1), A2 => n73, A3 => SEL(2), ZN => n5);
   U84 : AOI22_X1 port map( A1 => E(0), A2 => n7, B1 => F(0), B2 => n8, ZN => 
                           n71);
   U85 : AND3_X1 port map( A1 => SEL(2), A2 => n74, A3 => SEL(0), ZN => n8);
   U86 : AND3_X1 port map( A1 => n73, A2 => n74, A3 => SEL(2), ZN => n7);
   U87 : AOI22_X1 port map( A1 => C(0), A2 => n9, B1 => D(0), B2 => n10, ZN => 
                           n70);
   U88 : INV_X1 port map( A => SEL(1), ZN => n74);
   U89 : AOI22_X1 port map( A1 => A(0), A2 => n11, B1 => B(0), B2 => n12, ZN =>
                           n69);
   U90 : INV_X1 port map( A => SEL(0), ZN => n73);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity encoder_3 is

   port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
         downto 0));

end encoder_3;

architecture SYN_BEHAVIORAL of encoder_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal Y_2_port, Y_1_port, Y_0_port, n1, n2, n3, n4 : std_logic;

begin
   Y <= ( Y_2_port, Y_1_port, Y_0_port );
   
   U1 : AOI21_X2 port map( B1 => A(0), B2 => A(1), A => n4, ZN => Y_2_port);
   U2 : AOI21_X1 port map( B1 => n1, B2 => n2, A => n3, ZN => Y_1_port);
   U3 : NAND2_X1 port map( A1 => A(0), A2 => n4, ZN => n2);
   U4 : INV_X1 port map( A => Y_2_port, ZN => n1);
   U5 : AND2_X1 port map( A1 => n4, A2 => n3, ZN => Y_0_port);
   U6 : XOR2_X1 port map( A => A(0), B => A(1), Z => n3);
   U7 : INV_X1 port map( A => A(2), ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity encoder_2 is

   port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
         downto 0));

end encoder_2;

architecture SYN_BEHAVIORAL of encoder_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal Y_2_port, Y_1_port, Y_0_port, n1, n2, n3, n4 : std_logic;

begin
   Y <= ( Y_2_port, Y_1_port, Y_0_port );
   
   U1 : AOI21_X2 port map( B1 => A(0), B2 => A(1), A => n4, ZN => Y_2_port);
   U2 : AOI21_X1 port map( B1 => n1, B2 => n2, A => n3, ZN => Y_1_port);
   U3 : NAND2_X1 port map( A1 => A(0), A2 => n4, ZN => n2);
   U4 : INV_X1 port map( A => Y_2_port, ZN => n1);
   U5 : AND2_X1 port map( A1 => n4, A2 => n3, ZN => Y_0_port);
   U6 : XOR2_X1 port map( A => A(0), B => A(1), Z => n3);
   U7 : INV_X1 port map( A => A(2), ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity encoder_1 is

   port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
         downto 0));

end encoder_1;

architecture SYN_BEHAVIORAL of encoder_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal Y_2_port, Y_1_port, Y_0_port, n1, n2, n3, n4 : std_logic;

begin
   Y <= ( Y_2_port, Y_1_port, Y_0_port );
   
   U1 : AOI21_X2 port map( B1 => A(0), B2 => A(1), A => n4, ZN => Y_2_port);
   U2 : AOI21_X1 port map( B1 => n1, B2 => n2, A => n3, ZN => Y_1_port);
   U3 : NAND2_X1 port map( A1 => A(0), A2 => n4, ZN => n2);
   U4 : INV_X1 port map( A => Y_2_port, ZN => n1);
   U5 : AND2_X1 port map( A1 => n4, A2 => n3, ZN => Y_0_port);
   U6 : XOR2_X1 port map( A => A(0), B => A(1), Z => n3);
   U7 : INV_X1 port map( A => A(2), ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_7 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_7;

architecture SYN_BEHAVIORAL of complement_NBIT16_7 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_1_port, 
      Y_2_port, Y_3_port, Y_4_port, Y_5_port, Y_6_port, Y_7_port, Y_8_port, 
      Y_9_port, Y_10_port, Y_11_port, Y_12_port, Y_13_port, Y_14_port, 
      Y_15_port, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, 
      n41, n42, n43, n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n44, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n43, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n42, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n41, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n40, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n39, A2 => n11, ZN => n12);
   U14 : AND2_X1 port map( A1 => n38, A2 => n12, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n13, ZN => n29);
   U16 : XOR2_X1 port map( A => n30, B => n44, Z => Y_1_port);
   U17 : XOR2_X1 port map( A => n31, B => n1, Z => Y_2_port);
   U18 : XOR2_X1 port map( A => n32, B => n2, Z => Y_3_port);
   U19 : XOR2_X1 port map( A => n33, B => n3, Z => Y_4_port);
   U20 : XOR2_X1 port map( A => n34, B => n4, Z => Y_5_port);
   U21 : XOR2_X1 port map( A => n35, B => n5, Z => Y_6_port);
   U22 : XOR2_X1 port map( A => n36, B => n6, Z => Y_7_port);
   U23 : XOR2_X1 port map( A => n43, B => n7, Z => Y_8_port);
   U24 : XOR2_X1 port map( A => n42, B => n8, Z => Y_9_port);
   U25 : XOR2_X1 port map( A => n41, B => n9, Z => Y_10_port);
   U26 : XOR2_X1 port map( A => n40, B => n10, Z => Y_11_port);
   U27 : XOR2_X1 port map( A => n39, B => n11, Z => Y_12_port);
   U28 : XOR2_X1 port map( A => n38, B => n12, Z => Y_13_port);
   U29 : XOR2_X1 port map( A => n37, B => n13, Z => Y_14_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(0), ZN => n44);
   U32 : INV_X1 port map( A => A(8), ZN => n43);
   U33 : INV_X1 port map( A => A(9), ZN => n42);
   U34 : INV_X1 port map( A => A(10), ZN => n41);
   U35 : INV_X1 port map( A => A(11), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(7), ZN => n36);
   U40 : INV_X1 port map( A => A(6), ZN => n35);
   U41 : INV_X1 port map( A => A(5), ZN => n34);
   U42 : INV_X1 port map( A => A(4), ZN => n33);
   U43 : INV_X1 port map( A => A(3), ZN => n32);
   U44 : INV_X1 port map( A => A(2), ZN => n31);
   U45 : INV_X1 port map( A => A(1), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_6 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_6;

architecture SYN_BEHAVIORAL of complement_NBIT16_6 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_3_port, 
      Y_4_port, Y_5_port, Y_6_port, Y_7_port, Y_8_port, Y_9_port, Y_10_port, 
      Y_11_port, Y_12_port, Y_13_port, Y_14_port, Y_2_port, Y_1_port, Y_15_port
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n13, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n42, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n41, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n40, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n39, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n38, A2 => n11, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n44, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n12, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n1, Z => Y_3_port);
   U17 : XOR2_X1 port map( A => n32, B => n2, Z => Y_4_port);
   U18 : XOR2_X1 port map( A => n33, B => n3, Z => Y_5_port);
   U19 : XOR2_X1 port map( A => n34, B => n4, Z => Y_6_port);
   U20 : XOR2_X1 port map( A => n35, B => n5, Z => Y_7_port);
   U21 : XOR2_X1 port map( A => n36, B => n6, Z => Y_8_port);
   U22 : XOR2_X1 port map( A => n42, B => n7, Z => Y_9_port);
   U23 : XOR2_X1 port map( A => n41, B => n8, Z => Y_10_port);
   U24 : XOR2_X1 port map( A => n40, B => n9, Z => Y_11_port);
   U25 : XOR2_X1 port map( A => n39, B => n10, Z => Y_12_port);
   U26 : XOR2_X1 port map( A => n38, B => n11, Z => Y_13_port);
   U27 : XOR2_X1 port map( A => n37, B => n12, Z => Y_14_port);
   U28 : XOR2_X1 port map( A => n30, B => n13, Z => Y_2_port);
   U29 : XOR2_X1 port map( A => n43, B => n44, Z => Y_1_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(0), ZN => n44);
   U32 : INV_X1 port map( A => A(1), ZN => n43);
   U33 : INV_X1 port map( A => A(9), ZN => n42);
   U34 : INV_X1 port map( A => A(10), ZN => n41);
   U35 : INV_X1 port map( A => A(11), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(8), ZN => n36);
   U40 : INV_X1 port map( A => A(7), ZN => n35);
   U41 : INV_X1 port map( A => A(6), ZN => n34);
   U42 : INV_X1 port map( A => A(5), ZN => n33);
   U43 : INV_X1 port map( A => A(4), ZN => n32);
   U44 : INV_X1 port map( A => A(3), ZN => n31);
   U45 : INV_X1 port map( A => A(2), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_5 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_5;

architecture SYN_BEHAVIORAL of complement_NBIT16_5 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_3_port, 
      Y_4_port, Y_5_port, Y_6_port, Y_7_port, Y_8_port, Y_9_port, Y_10_port, 
      Y_11_port, Y_12_port, Y_13_port, Y_14_port, Y_1_port, Y_2_port, Y_15_port
      , n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, 
      n43, n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n12, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n41, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n40, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n39, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n38, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n42, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n44, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n11, ZN => n29);
   U16 : XOR2_X1 port map( A => n30, B => n12, Z => Y_3_port);
   U17 : XOR2_X1 port map( A => n31, B => n1, Z => Y_4_port);
   U18 : XOR2_X1 port map( A => n32, B => n2, Z => Y_5_port);
   U19 : XOR2_X1 port map( A => n33, B => n3, Z => Y_6_port);
   U20 : XOR2_X1 port map( A => n34, B => n4, Z => Y_7_port);
   U21 : XOR2_X1 port map( A => n35, B => n5, Z => Y_8_port);
   U22 : XOR2_X1 port map( A => n36, B => n6, Z => Y_9_port);
   U23 : XOR2_X1 port map( A => n41, B => n7, Z => Y_10_port);
   U24 : XOR2_X1 port map( A => n40, B => n8, Z => Y_11_port);
   U25 : XOR2_X1 port map( A => n39, B => n9, Z => Y_12_port);
   U26 : XOR2_X1 port map( A => n38, B => n10, Z => Y_13_port);
   U27 : XOR2_X1 port map( A => n37, B => n11, Z => Y_14_port);
   U28 : XOR2_X1 port map( A => n43, B => n44, Z => Y_1_port);
   U29 : XOR2_X1 port map( A => n42, B => n13, Z => Y_2_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(0), ZN => n44);
   U32 : INV_X1 port map( A => A(1), ZN => n43);
   U33 : INV_X1 port map( A => A(2), ZN => n42);
   U34 : INV_X1 port map( A => A(10), ZN => n41);
   U35 : INV_X1 port map( A => A(11), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(9), ZN => n36);
   U40 : INV_X1 port map( A => A(8), ZN => n35);
   U41 : INV_X1 port map( A => A(7), ZN => n34);
   U42 : INV_X1 port map( A => A(6), ZN => n33);
   U43 : INV_X1 port map( A => A(5), ZN => n32);
   U44 : INV_X1 port map( A => A(4), ZN => n31);
   U45 : INV_X1 port map( A => A(3), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_4 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_4;

architecture SYN_BEHAVIORAL of complement_NBIT16_4 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_5_port, 
      Y_6_port, Y_7_port, Y_8_port, Y_9_port, Y_10_port, Y_11_port, Y_12_port, 
      Y_13_port, Y_14_port, Y_4_port, Y_1_port, Y_2_port, Y_3_port, Y_15_port, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43
      , n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n40, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n39, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n38, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n41, A2 => n12, ZN => n11);
   U13 : AND2_X1 port map( A1 => n42, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n44, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n10, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n1, Z => Y_5_port);
   U17 : XOR2_X1 port map( A => n32, B => n2, Z => Y_6_port);
   U18 : XOR2_X1 port map( A => n33, B => n3, Z => Y_7_port);
   U19 : XOR2_X1 port map( A => n34, B => n4, Z => Y_8_port);
   U20 : XOR2_X1 port map( A => n35, B => n5, Z => Y_9_port);
   U21 : XOR2_X1 port map( A => n36, B => n6, Z => Y_10_port);
   U22 : XOR2_X1 port map( A => n40, B => n7, Z => Y_11_port);
   U23 : XOR2_X1 port map( A => n39, B => n8, Z => Y_12_port);
   U24 : XOR2_X1 port map( A => n38, B => n9, Z => Y_13_port);
   U25 : XOR2_X1 port map( A => n37, B => n10, Z => Y_14_port);
   U26 : XOR2_X1 port map( A => n30, B => n11, Z => Y_4_port);
   U27 : XOR2_X1 port map( A => n43, B => n44, Z => Y_1_port);
   U28 : XOR2_X1 port map( A => n42, B => n13, Z => Y_2_port);
   U29 : XOR2_X1 port map( A => n41, B => n12, Z => Y_3_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(0), ZN => n44);
   U32 : INV_X1 port map( A => A(1), ZN => n43);
   U33 : INV_X1 port map( A => A(2), ZN => n42);
   U34 : INV_X1 port map( A => A(3), ZN => n41);
   U35 : INV_X1 port map( A => A(11), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(10), ZN => n36);
   U40 : INV_X1 port map( A => A(9), ZN => n35);
   U41 : INV_X1 port map( A => A(8), ZN => n34);
   U42 : INV_X1 port map( A => A(7), ZN => n33);
   U43 : INV_X1 port map( A => A(6), ZN => n32);
   U44 : INV_X1 port map( A => A(5), ZN => n31);
   U45 : INV_X1 port map( A => A(4), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_3 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_3;

architecture SYN_BEHAVIORAL of complement_NBIT16_3 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_6_port, 
      Y_7_port, Y_8_port, Y_9_port, Y_10_port, Y_11_port, Y_12_port, Y_13_port,
      Y_14_port, Y_5_port, Y_4_port, Y_1_port, Y_2_port, Y_3_port, Y_15_port, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43
      , n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n39, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n38, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n41, A2 => n12, ZN => n10);
   U12 : AND2_X1 port map( A1 => n40, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n42, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n43, A2 => n44, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n9, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n1, Z => Y_6_port);
   U17 : XOR2_X1 port map( A => n32, B => n2, Z => Y_7_port);
   U18 : XOR2_X1 port map( A => n33, B => n3, Z => Y_8_port);
   U19 : XOR2_X1 port map( A => n34, B => n4, Z => Y_9_port);
   U20 : XOR2_X1 port map( A => n35, B => n5, Z => Y_10_port);
   U21 : XOR2_X1 port map( A => n36, B => n6, Z => Y_11_port);
   U22 : XOR2_X1 port map( A => n39, B => n7, Z => Y_12_port);
   U23 : XOR2_X1 port map( A => n38, B => n8, Z => Y_13_port);
   U24 : XOR2_X1 port map( A => n37, B => n9, Z => Y_14_port);
   U25 : XOR2_X1 port map( A => n30, B => n11, Z => Y_5_port);
   U26 : XOR2_X1 port map( A => n40, B => n10, Z => Y_4_port);
   U27 : XOR2_X1 port map( A => n43, B => n44, Z => Y_1_port);
   U28 : XOR2_X1 port map( A => n42, B => n13, Z => Y_2_port);
   U29 : XOR2_X1 port map( A => n41, B => n12, Z => Y_3_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(0), ZN => n44);
   U32 : INV_X1 port map( A => A(1), ZN => n43);
   U33 : INV_X1 port map( A => A(2), ZN => n42);
   U34 : INV_X1 port map( A => A(3), ZN => n41);
   U35 : INV_X1 port map( A => A(4), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(11), ZN => n36);
   U40 : INV_X1 port map( A => A(10), ZN => n35);
   U41 : INV_X1 port map( A => A(9), ZN => n34);
   U42 : INV_X1 port map( A => A(8), ZN => n33);
   U43 : INV_X1 port map( A => A(7), ZN => n32);
   U44 : INV_X1 port map( A => A(6), ZN => n31);
   U45 : INV_X1 port map( A => A(5), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_2 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_2;

architecture SYN_BEHAVIORAL of complement_NBIT16_2 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_7_port, 
      Y_8_port, Y_9_port, Y_10_port, Y_11_port, Y_12_port, Y_13_port, Y_14_port
      , Y_6_port, Y_15_port, Y_1_port, Y_2_port, Y_3_port, Y_4_port, Y_5_port, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43
      , n44, n45 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n39, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n42, A2 => n12, ZN => n9);
   U11 : AND2_X1 port map( A1 => n41, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n40, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n43, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n44, A2 => n45, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n38, A2 => n8, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n1, Z => Y_7_port);
   U17 : XOR2_X1 port map( A => n32, B => n2, Z => Y_8_port);
   U18 : XOR2_X1 port map( A => n33, B => n3, Z => Y_9_port);
   U19 : XOR2_X1 port map( A => n34, B => n4, Z => Y_10_port);
   U20 : XOR2_X1 port map( A => n35, B => n5, Z => Y_11_port);
   U21 : XOR2_X1 port map( A => n36, B => n6, Z => Y_12_port);
   U22 : XOR2_X1 port map( A => n39, B => n7, Z => Y_13_port);
   U23 : XOR2_X1 port map( A => n38, B => n8, Z => Y_14_port);
   U24 : XOR2_X1 port map( A => n30, B => n11, Z => Y_6_port);
   U25 : XNOR2_X1 port map( A => n37, B => n29, ZN => Y_15_port);
   U26 : XOR2_X1 port map( A => n44, B => n45, Z => Y_1_port);
   U27 : XOR2_X1 port map( A => n43, B => n13, Z => Y_2_port);
   U28 : XOR2_X1 port map( A => n42, B => n12, Z => Y_3_port);
   U29 : XOR2_X1 port map( A => n41, B => n9, Z => Y_4_port);
   U30 : XOR2_X1 port map( A => n40, B => n10, Z => Y_5_port);
   U31 : INV_X1 port map( A => A(0), ZN => n45);
   U32 : INV_X1 port map( A => A(1), ZN => n44);
   U33 : INV_X1 port map( A => A(2), ZN => n43);
   U34 : INV_X1 port map( A => A(3), ZN => n42);
   U35 : INV_X1 port map( A => A(4), ZN => n41);
   U36 : INV_X1 port map( A => A(5), ZN => n40);
   U37 : INV_X1 port map( A => A(13), ZN => n39);
   U38 : INV_X1 port map( A => A(14), ZN => n38);
   U39 : INV_X1 port map( A => A(15), ZN => n37);
   U40 : INV_X1 port map( A => A(12), ZN => n36);
   U41 : INV_X1 port map( A => A(11), ZN => n35);
   U42 : INV_X1 port map( A => A(10), ZN => n34);
   U43 : INV_X1 port map( A => A(9), ZN => n33);
   U44 : INV_X1 port map( A => A(8), ZN => n32);
   U45 : INV_X1 port map( A => A(7), ZN => n31);
   U46 : INV_X1 port map( A => A(6), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_1 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_1;

architecture SYN_BEHAVIORAL of complement_NBIT16_1 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_8_port, 
      Y_9_port, Y_10_port, Y_11_port, Y_12_port, Y_13_port, Y_14_port, Y_7_port
      , Y_6_port, Y_15_port, Y_1_port, Y_2_port, Y_3_port, Y_4_port, Y_5_port, 
      n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43
      , n44, n45 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n30, A2 => n11, ZN => n1);
   U3 : AND2_X1 port map( A1 => n31, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n32, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n33, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n34, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n35, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n36, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n42, A2 => n12, ZN => n8);
   U10 : AND2_X1 port map( A1 => n41, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n40, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n39, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n43, A2 => n13, ZN => n12);
   U14 : AND2_X1 port map( A1 => n44, A2 => n45, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n38, A2 => n7, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n1, Z => Y_8_port);
   U17 : XOR2_X1 port map( A => n32, B => n2, Z => Y_9_port);
   U18 : XOR2_X1 port map( A => n33, B => n3, Z => Y_10_port);
   U19 : XOR2_X1 port map( A => n34, B => n4, Z => Y_11_port);
   U20 : XOR2_X1 port map( A => n35, B => n5, Z => Y_12_port);
   U21 : XOR2_X1 port map( A => n36, B => n6, Z => Y_13_port);
   U22 : XOR2_X1 port map( A => n38, B => n7, Z => Y_14_port);
   U23 : XOR2_X1 port map( A => n30, B => n11, Z => Y_7_port);
   U24 : XOR2_X1 port map( A => n39, B => n10, Z => Y_6_port);
   U25 : XNOR2_X1 port map( A => n37, B => n29, ZN => Y_15_port);
   U26 : XOR2_X1 port map( A => n44, B => n45, Z => Y_1_port);
   U27 : XOR2_X1 port map( A => n43, B => n13, Z => Y_2_port);
   U28 : XOR2_X1 port map( A => n42, B => n12, Z => Y_3_port);
   U29 : XOR2_X1 port map( A => n41, B => n8, Z => Y_4_port);
   U30 : XOR2_X1 port map( A => n40, B => n9, Z => Y_5_port);
   U31 : INV_X1 port map( A => A(0), ZN => n45);
   U32 : INV_X1 port map( A => A(1), ZN => n44);
   U33 : INV_X1 port map( A => A(2), ZN => n43);
   U34 : INV_X1 port map( A => A(3), ZN => n42);
   U35 : INV_X1 port map( A => A(4), ZN => n41);
   U36 : INV_X1 port map( A => A(5), ZN => n40);
   U37 : INV_X1 port map( A => A(6), ZN => n39);
   U38 : INV_X1 port map( A => A(14), ZN => n38);
   U39 : INV_X1 port map( A => A(15), ZN => n37);
   U40 : INV_X1 port map( A => A(13), ZN => n36);
   U41 : INV_X1 port map( A => A(12), ZN => n35);
   U42 : INV_X1 port map( A => A(11), ZN => n34);
   U43 : INV_X1 port map( A => A(10), ZN => n33);
   U44 : INV_X1 port map( A => A(9), ZN => n32);
   U45 : INV_X1 port map( A => A(8), ZN => n31);
   U46 : INV_X1 port map( A => A(7), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity encoder_0 is

   port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
         downto 0));

end encoder_0;

architecture SYN_BEHAVIORAL of encoder_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
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
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X2
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal Y_2_port, Y_1_port, Y_0_port, n1, n2, n3, n4 : std_logic;

begin
   Y <= ( Y_2_port, Y_1_port, Y_0_port );
   
   U1 : AOI21_X2 port map( B1 => A(0), B2 => A(1), A => n4, ZN => Y_2_port);
   U2 : AOI21_X1 port map( B1 => n1, B2 => n2, A => n3, ZN => Y_1_port);
   U3 : NAND2_X1 port map( A1 => A(0), A2 => n4, ZN => n2);
   U4 : INV_X1 port map( A => Y_2_port, ZN => n1);
   U5 : AND2_X1 port map( A1 => n4, A2 => n3, ZN => Y_0_port);
   U6 : XOR2_X1 port map( A => A(0), B => A(1), Z => n3);
   U7 : INV_X1 port map( A => A(2), ZN => n4);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity RCA_NBIT16_0 is

   port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector 
         (15 downto 0);  Co : out std_logic);

end RCA_NBIT16_0;

architecture SYN_BEHAVIORAL of RCA_NBIT16_0 is

   component RCA_NBIT16_0_DW01_add_0
      port( A, B : in std_logic_vector (16 downto 0);  CI : in std_logic;  SUM 
            : out std_logic_vector (16 downto 0);  CO : out std_logic);
   end component;
   
   signal n1, n_1014 : std_logic;

begin
   
   n1 <= '0';
   r52 : RCA_NBIT16_0_DW01_add_0 port map( A(16) => n1, A(15) => A(15), A(14) 
                           => A(14), A(13) => A(13), A(12) => A(12), A(11) => 
                           A(11), A(10) => A(10), A(9) => A(9), A(8) => A(8), 
                           A(7) => A(7), A(6) => A(6), A(5) => A(5), A(4) => 
                           A(4), A(3) => A(3), A(2) => A(2), A(1) => A(1), A(0)
                           => A(0), B(16) => n1, B(15) => B(15), B(14) => B(14)
                           , B(13) => B(13), B(12) => B(12), B(11) => B(11), 
                           B(10) => B(10), B(9) => B(9), B(8) => B(8), B(7) => 
                           B(7), B(6) => B(6), B(5) => B(5), B(4) => B(4), B(3)
                           => B(3), B(2) => B(2), B(1) => B(1), B(0) => B(0), 
                           CI => n1, SUM(16) => Co, SUM(15) => S(15), SUM(14) 
                           => S(14), SUM(13) => S(13), SUM(12) => S(12), 
                           SUM(11) => S(11), SUM(10) => S(10), SUM(9) => S(9), 
                           SUM(8) => S(8), SUM(7) => S(7), SUM(6) => S(6), 
                           SUM(5) => S(5), SUM(4) => S(4), SUM(3) => S(3), 
                           SUM(2) => S(2), SUM(1) => S(1), SUM(0) => S(0), CO 
                           => n_1014);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity MUX81_GENERIC_NBIT16_0 is

   port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : in 
         std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 downto 0)
         );

end MUX81_GENERIC_NBIT16_0;

architecture SYN_BEHAVIORAL of MUX81_GENERIC_NBIT16_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X4
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16
      , n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30, 
      n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45
      , n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, 
      n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74
      : std_logic;

begin
   
   U1 : NOR3_X4 port map( A1 => n74, A2 => SEL(2), A3 => n73, ZN => n10);
   U2 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => n73, ZN => n12);
   U3 : NOR3_X4 port map( A1 => SEL(0), A2 => SEL(2), A3 => n74, ZN => n9);
   U4 : NOR3_X4 port map( A1 => SEL(1), A2 => SEL(2), A3 => SEL(0), ZN => n11);
   U5 : NAND4_X1 port map( A1 => n1, A2 => n2, A3 => n3, A4 => n4, ZN => Y(9));
   U6 : AOI22_X1 port map( A1 => G(9), A2 => n5, B1 => H(9), B2 => n6, ZN => n4
                           );
   U7 : AOI22_X1 port map( A1 => E(9), A2 => n7, B1 => F(9), B2 => n8, ZN => n3
                           );
   U8 : AOI22_X1 port map( A1 => C(9), A2 => n9, B1 => D(9), B2 => n10, ZN => 
                           n2);
   U9 : AOI22_X1 port map( A1 => A(9), A2 => n11, B1 => B(9), B2 => n12, ZN => 
                           n1);
   U10 : NAND4_X1 port map( A1 => n13, A2 => n14, A3 => n15, A4 => n16, ZN => 
                           Y(8));
   U11 : AOI22_X1 port map( A1 => G(8), A2 => n5, B1 => H(8), B2 => n6, ZN => 
                           n16);
   U12 : AOI22_X1 port map( A1 => E(8), A2 => n7, B1 => F(8), B2 => n8, ZN => 
                           n15);
   U13 : AOI22_X1 port map( A1 => C(8), A2 => n9, B1 => D(8), B2 => n10, ZN => 
                           n14);
   U14 : AOI22_X1 port map( A1 => A(8), A2 => n11, B1 => B(8), B2 => n12, ZN =>
                           n13);
   U15 : NAND4_X1 port map( A1 => n17, A2 => n18, A3 => n19, A4 => n20, ZN => 
                           Y(7));
   U16 : AOI22_X1 port map( A1 => G(7), A2 => n5, B1 => H(7), B2 => n6, ZN => 
                           n20);
   U17 : AOI22_X1 port map( A1 => E(7), A2 => n7, B1 => F(7), B2 => n8, ZN => 
                           n19);
   U18 : AOI22_X1 port map( A1 => C(7), A2 => n9, B1 => D(7), B2 => n10, ZN => 
                           n18);
   U19 : AOI22_X1 port map( A1 => A(7), A2 => n11, B1 => B(7), B2 => n12, ZN =>
                           n17);
   U20 : NAND4_X1 port map( A1 => n21, A2 => n22, A3 => n23, A4 => n24, ZN => 
                           Y(6));
   U21 : AOI22_X1 port map( A1 => G(6), A2 => n5, B1 => H(6), B2 => n6, ZN => 
                           n24);
   U22 : AOI22_X1 port map( A1 => E(6), A2 => n7, B1 => F(6), B2 => n8, ZN => 
                           n23);
   U23 : AOI22_X1 port map( A1 => C(6), A2 => n9, B1 => D(6), B2 => n10, ZN => 
                           n22);
   U24 : AOI22_X1 port map( A1 => A(6), A2 => n11, B1 => B(6), B2 => n12, ZN =>
                           n21);
   U25 : NAND4_X1 port map( A1 => n25, A2 => n26, A3 => n27, A4 => n28, ZN => 
                           Y(5));
   U26 : AOI22_X1 port map( A1 => G(5), A2 => n5, B1 => H(5), B2 => n6, ZN => 
                           n28);
   U27 : AOI22_X1 port map( A1 => E(5), A2 => n7, B1 => F(5), B2 => n8, ZN => 
                           n27);
   U28 : AOI22_X1 port map( A1 => C(5), A2 => n9, B1 => D(5), B2 => n10, ZN => 
                           n26);
   U29 : AOI22_X1 port map( A1 => A(5), A2 => n11, B1 => B(5), B2 => n12, ZN =>
                           n25);
   U30 : NAND4_X1 port map( A1 => n29, A2 => n30, A3 => n31, A4 => n32, ZN => 
                           Y(4));
   U31 : AOI22_X1 port map( A1 => G(4), A2 => n5, B1 => H(4), B2 => n6, ZN => 
                           n32);
   U32 : AOI22_X1 port map( A1 => E(4), A2 => n7, B1 => F(4), B2 => n8, ZN => 
                           n31);
   U33 : AOI22_X1 port map( A1 => C(4), A2 => n9, B1 => D(4), B2 => n10, ZN => 
                           n30);
   U34 : AOI22_X1 port map( A1 => A(4), A2 => n11, B1 => B(4), B2 => n12, ZN =>
                           n29);
   U35 : NAND4_X1 port map( A1 => n33, A2 => n34, A3 => n35, A4 => n36, ZN => 
                           Y(3));
   U36 : AOI22_X1 port map( A1 => G(3), A2 => n5, B1 => H(3), B2 => n6, ZN => 
                           n36);
   U37 : AOI22_X1 port map( A1 => E(3), A2 => n7, B1 => F(3), B2 => n8, ZN => 
                           n35);
   U38 : AOI22_X1 port map( A1 => C(3), A2 => n9, B1 => D(3), B2 => n10, ZN => 
                           n34);
   U39 : AOI22_X1 port map( A1 => A(3), A2 => n11, B1 => B(3), B2 => n12, ZN =>
                           n33);
   U40 : NAND4_X1 port map( A1 => n37, A2 => n38, A3 => n39, A4 => n40, ZN => 
                           Y(2));
   U41 : AOI22_X1 port map( A1 => G(2), A2 => n5, B1 => H(2), B2 => n6, ZN => 
                           n40);
   U42 : AOI22_X1 port map( A1 => E(2), A2 => n7, B1 => F(2), B2 => n8, ZN => 
                           n39);
   U43 : AOI22_X1 port map( A1 => C(2), A2 => n9, B1 => D(2), B2 => n10, ZN => 
                           n38);
   U44 : AOI22_X1 port map( A1 => A(2), A2 => n11, B1 => B(2), B2 => n12, ZN =>
                           n37);
   U45 : NAND4_X1 port map( A1 => n41, A2 => n42, A3 => n43, A4 => n44, ZN => 
                           Y(1));
   U46 : AOI22_X1 port map( A1 => G(1), A2 => n5, B1 => H(1), B2 => n6, ZN => 
                           n44);
   U47 : AOI22_X1 port map( A1 => E(1), A2 => n7, B1 => F(1), B2 => n8, ZN => 
                           n43);
   U48 : AOI22_X1 port map( A1 => C(1), A2 => n9, B1 => D(1), B2 => n10, ZN => 
                           n42);
   U49 : AOI22_X1 port map( A1 => A(1), A2 => n11, B1 => B(1), B2 => n12, ZN =>
                           n41);
   U50 : NAND4_X1 port map( A1 => n45, A2 => n46, A3 => n47, A4 => n48, ZN => 
                           Y(15));
   U51 : AOI22_X1 port map( A1 => G(15), A2 => n5, B1 => H(15), B2 => n6, ZN =>
                           n48);
   U52 : AOI22_X1 port map( A1 => E(15), A2 => n7, B1 => F(15), B2 => n8, ZN =>
                           n47);
   U53 : AOI22_X1 port map( A1 => C(15), A2 => n9, B1 => D(15), B2 => n10, ZN 
                           => n46);
   U54 : AOI22_X1 port map( A1 => A(15), A2 => n11, B1 => B(15), B2 => n12, ZN 
                           => n45);
   U55 : NAND4_X1 port map( A1 => n49, A2 => n50, A3 => n51, A4 => n52, ZN => 
                           Y(14));
   U56 : AOI22_X1 port map( A1 => G(14), A2 => n5, B1 => H(14), B2 => n6, ZN =>
                           n52);
   U57 : AOI22_X1 port map( A1 => E(14), A2 => n7, B1 => F(14), B2 => n8, ZN =>
                           n51);
   U58 : AOI22_X1 port map( A1 => C(14), A2 => n9, B1 => D(14), B2 => n10, ZN 
                           => n50);
   U59 : AOI22_X1 port map( A1 => A(14), A2 => n11, B1 => B(14), B2 => n12, ZN 
                           => n49);
   U60 : NAND4_X1 port map( A1 => n53, A2 => n54, A3 => n55, A4 => n56, ZN => 
                           Y(13));
   U61 : AOI22_X1 port map( A1 => G(13), A2 => n5, B1 => H(13), B2 => n6, ZN =>
                           n56);
   U62 : AOI22_X1 port map( A1 => E(13), A2 => n7, B1 => F(13), B2 => n8, ZN =>
                           n55);
   U63 : AOI22_X1 port map( A1 => C(13), A2 => n9, B1 => D(13), B2 => n10, ZN 
                           => n54);
   U64 : AOI22_X1 port map( A1 => A(13), A2 => n11, B1 => B(13), B2 => n12, ZN 
                           => n53);
   U65 : NAND4_X1 port map( A1 => n57, A2 => n58, A3 => n59, A4 => n60, ZN => 
                           Y(12));
   U66 : AOI22_X1 port map( A1 => G(12), A2 => n5, B1 => H(12), B2 => n6, ZN =>
                           n60);
   U67 : AOI22_X1 port map( A1 => E(12), A2 => n7, B1 => F(12), B2 => n8, ZN =>
                           n59);
   U68 : AOI22_X1 port map( A1 => C(12), A2 => n9, B1 => D(12), B2 => n10, ZN 
                           => n58);
   U69 : AOI22_X1 port map( A1 => A(12), A2 => n11, B1 => B(12), B2 => n12, ZN 
                           => n57);
   U70 : NAND4_X1 port map( A1 => n61, A2 => n62, A3 => n63, A4 => n64, ZN => 
                           Y(11));
   U71 : AOI22_X1 port map( A1 => G(11), A2 => n5, B1 => H(11), B2 => n6, ZN =>
                           n64);
   U72 : AOI22_X1 port map( A1 => E(11), A2 => n7, B1 => F(11), B2 => n8, ZN =>
                           n63);
   U73 : AOI22_X1 port map( A1 => C(11), A2 => n9, B1 => D(11), B2 => n10, ZN 
                           => n62);
   U74 : AOI22_X1 port map( A1 => A(11), A2 => n11, B1 => B(11), B2 => n12, ZN 
                           => n61);
   U75 : NAND4_X1 port map( A1 => n65, A2 => n66, A3 => n67, A4 => n68, ZN => 
                           Y(10));
   U76 : AOI22_X1 port map( A1 => G(10), A2 => n5, B1 => H(10), B2 => n6, ZN =>
                           n68);
   U77 : AOI22_X1 port map( A1 => E(10), A2 => n7, B1 => F(10), B2 => n8, ZN =>
                           n67);
   U78 : AOI22_X1 port map( A1 => C(10), A2 => n9, B1 => D(10), B2 => n10, ZN 
                           => n66);
   U79 : AOI22_X1 port map( A1 => A(10), A2 => n11, B1 => B(10), B2 => n12, ZN 
                           => n65);
   U80 : NAND4_X1 port map( A1 => n69, A2 => n70, A3 => n71, A4 => n72, ZN => 
                           Y(0));
   U81 : AOI22_X1 port map( A1 => G(0), A2 => n5, B1 => H(0), B2 => n6, ZN => 
                           n72);
   U82 : AND3_X1 port map( A1 => SEL(2), A2 => SEL(1), A3 => SEL(0), ZN => n6);
   U83 : AND3_X1 port map( A1 => SEL(1), A2 => n73, A3 => SEL(2), ZN => n5);
   U84 : AOI22_X1 port map( A1 => E(0), A2 => n7, B1 => F(0), B2 => n8, ZN => 
                           n71);
   U85 : AND3_X1 port map( A1 => SEL(2), A2 => n74, A3 => SEL(0), ZN => n8);
   U86 : AND3_X1 port map( A1 => n73, A2 => n74, A3 => SEL(2), ZN => n7);
   U87 : AOI22_X1 port map( A1 => C(0), A2 => n9, B1 => D(0), B2 => n10, ZN => 
                           n70);
   U88 : INV_X1 port map( A => SEL(1), ZN => n74);
   U89 : AOI22_X1 port map( A1 => A(0), A2 => n11, B1 => B(0), B2 => n12, ZN =>
                           n69);
   U90 : INV_X1 port map( A => SEL(0), ZN => n73);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity booth_encoder_NBIT8 is

   port( A : in std_logic_vector (7 downto 0);  Y : out std_logic_vector (11 
         downto 0));

end booth_encoder_NBIT8;

architecture SYN_STRUCTURAL of booth_encoder_NBIT8 is

   component encoder_1
      port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
            downto 0));
   end component;
   
   component encoder_2
      port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
            downto 0));
   end component;
   
   component encoder_3
      port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
            downto 0));
   end component;
   
   component encoder_0
      port( A : in std_logic_vector (2 downto 0);  Y : out std_logic_vector (2 
            downto 0));
   end component;
   
   signal X_Logic0_port : std_logic;

begin
   
   X_Logic0_port <= '0';
   ENCODER_N_0 : encoder_0 port map( A(2) => A(1), A(1) => A(0), A(0) => 
                           X_Logic0_port, Y(2) => Y(2), Y(1) => Y(1), Y(0) => 
                           Y(0));
   ENCODER_N_1 : encoder_3 port map( A(2) => A(3), A(1) => A(2), A(0) => A(1), 
                           Y(2) => Y(5), Y(1) => Y(4), Y(0) => Y(3));
   ENCODER_N_2 : encoder_2 port map( A(2) => A(5), A(1) => A(4), A(0) => A(3), 
                           Y(2) => Y(8), Y(1) => Y(7), Y(0) => Y(6));
   ENCODER_N_3 : encoder_1 port map( A(2) => A(7), A(1) => A(6), A(0) => A(5), 
                           Y(2) => Y(11), Y(1) => Y(10), Y(0) => Y(9));

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity complement_NBIT16_0 is

   port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector (15 
         downto 0));

end complement_NBIT16_0;

architecture SYN_BEHAVIORAL of complement_NBIT16_0 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, Y_1_port, 
      Y_2_port, Y_3_port, Y_4_port, Y_5_port, Y_6_port, Y_7_port, Y_8_port, 
      Y_9_port, Y_10_port, Y_11_port, Y_12_port, Y_13_port, Y_14_port, 
      Y_15_port, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, 
      n41, n42, n43, n44 : std_logic;

begin
   Y <= ( Y_15_port, Y_14_port, Y_13_port, Y_12_port, Y_11_port, Y_10_port, 
      Y_9_port, Y_8_port, Y_7_port, Y_6_port, Y_5_port, Y_4_port, Y_3_port, 
      Y_2_port, Y_1_port, A(0) );
   
   U2 : AND2_X1 port map( A1 => n31, A2 => n30, ZN => n1);
   U3 : AND2_X1 port map( A1 => n32, A2 => n1, ZN => n2);
   U4 : AND2_X1 port map( A1 => n33, A2 => n2, ZN => n3);
   U5 : AND2_X1 port map( A1 => n34, A2 => n3, ZN => n4);
   U6 : AND2_X1 port map( A1 => n35, A2 => n4, ZN => n5);
   U7 : AND2_X1 port map( A1 => n36, A2 => n5, ZN => n6);
   U8 : AND2_X1 port map( A1 => n44, A2 => n6, ZN => n7);
   U9 : AND2_X1 port map( A1 => n43, A2 => n7, ZN => n8);
   U10 : AND2_X1 port map( A1 => n42, A2 => n8, ZN => n9);
   U11 : AND2_X1 port map( A1 => n41, A2 => n9, ZN => n10);
   U12 : AND2_X1 port map( A1 => n40, A2 => n10, ZN => n11);
   U13 : AND2_X1 port map( A1 => n39, A2 => n11, ZN => n12);
   U14 : AND2_X1 port map( A1 => n38, A2 => n12, ZN => n13);
   U15 : NAND2_X1 port map( A1 => n37, A2 => n13, ZN => n29);
   U16 : XOR2_X1 port map( A => n31, B => n30, Z => Y_1_port);
   U17 : XOR2_X1 port map( A => n32, B => n1, Z => Y_2_port);
   U18 : XOR2_X1 port map( A => n33, B => n2, Z => Y_3_port);
   U19 : XOR2_X1 port map( A => n34, B => n3, Z => Y_4_port);
   U20 : XOR2_X1 port map( A => n35, B => n4, Z => Y_5_port);
   U21 : XOR2_X1 port map( A => n36, B => n5, Z => Y_6_port);
   U22 : XOR2_X1 port map( A => n44, B => n6, Z => Y_7_port);
   U23 : XOR2_X1 port map( A => n43, B => n7, Z => Y_8_port);
   U24 : XOR2_X1 port map( A => n42, B => n8, Z => Y_9_port);
   U25 : XOR2_X1 port map( A => n41, B => n9, Z => Y_10_port);
   U26 : XOR2_X1 port map( A => n40, B => n10, Z => Y_11_port);
   U27 : XOR2_X1 port map( A => n39, B => n11, Z => Y_12_port);
   U28 : XOR2_X1 port map( A => n38, B => n12, Z => Y_13_port);
   U29 : XOR2_X1 port map( A => n37, B => n13, Z => Y_14_port);
   U30 : XOR2_X1 port map( A => A(15), B => n29, Z => Y_15_port);
   U31 : INV_X1 port map( A => A(7), ZN => n44);
   U32 : INV_X1 port map( A => A(8), ZN => n43);
   U33 : INV_X1 port map( A => A(9), ZN => n42);
   U34 : INV_X1 port map( A => A(10), ZN => n41);
   U35 : INV_X1 port map( A => A(11), ZN => n40);
   U36 : INV_X1 port map( A => A(12), ZN => n39);
   U37 : INV_X1 port map( A => A(13), ZN => n38);
   U38 : INV_X1 port map( A => A(14), ZN => n37);
   U39 : INV_X1 port map( A => A(6), ZN => n36);
   U40 : INV_X1 port map( A => A(5), ZN => n35);
   U41 : INV_X1 port map( A => A(4), ZN => n34);
   U42 : INV_X1 port map( A => A(3), ZN => n33);
   U43 : INV_X1 port map( A => A(2), ZN => n32);
   U44 : INV_X1 port map( A => A(1), ZN => n31);
   U45 : INV_X1 port map( A => A(0), ZN => n30);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_BOOTHMUL_NBIT8.all;

entity BOOTHMUL_NBIT8 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (7 downto 0);  MUL_OUT : out 
         std_logic_vector (15 downto 0));

end BOOTHMUL_NBIT8;

architecture SYN_STRUCTURAL of BOOTHMUL_NBIT8 is

   component RCA_NBIT16_1
      port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector
            (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT16_2
      port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector
            (15 downto 0);  Co : out std_logic);
   end component;
   
   component RCA_NBIT16_0
      port( A, B : in std_logic_vector (15 downto 0);  S : out std_logic_vector
            (15 downto 0);  Co : out std_logic);
   end component;
   
   component MUX81_GENERIC_NBIT16_1
      port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : 
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
            downto 0));
   end component;
   
   component MUX81_GENERIC_NBIT16_2
      port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : 
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
            downto 0));
   end component;
   
   component MUX81_GENERIC_NBIT16_3
      port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : 
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
            downto 0));
   end component;
   
   component MUX81_GENERIC_NBIT16_0
      port( A, B, C, D, E, F, G, H : in std_logic_vector (15 downto 0);  SEL : 
            in std_logic_vector (2 downto 0);  Y : out std_logic_vector (15 
            downto 0));
   end component;
   
   component booth_encoder_NBIT8
      port( A : in std_logic_vector (7 downto 0);  Y : out std_logic_vector (11
            downto 0));
   end component;
   
   component complement_NBIT16_1
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_2
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_3
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_4
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_5
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_6
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_7
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   component complement_NBIT16_0
      port( A : in std_logic_vector (15 downto 0);  Y : out std_logic_vector 
            (15 downto 0));
   end component;
   
   signal X_Logic0_port, negative_inputs_7_15_port, negative_inputs_7_14_port, 
      negative_inputs_7_13_port, negative_inputs_7_12_port, 
      negative_inputs_7_11_port, negative_inputs_7_10_port, 
      negative_inputs_7_9_port, negative_inputs_7_8_port, 
      negative_inputs_7_7_port, negative_inputs_7_6_port, 
      negative_inputs_7_5_port, negative_inputs_7_4_port, 
      negative_inputs_7_3_port, negative_inputs_7_2_port, 
      negative_inputs_7_1_port, negative_inputs_7_0_port, 
      negative_inputs_6_15_port, negative_inputs_6_14_port, 
      negative_inputs_6_13_port, negative_inputs_6_12_port, 
      negative_inputs_6_11_port, negative_inputs_6_10_port, 
      negative_inputs_6_9_port, negative_inputs_6_8_port, 
      negative_inputs_6_7_port, negative_inputs_6_6_port, 
      negative_inputs_6_5_port, negative_inputs_6_4_port, 
      negative_inputs_6_3_port, negative_inputs_6_2_port, 
      negative_inputs_6_1_port, negative_inputs_6_0_port, 
      negative_inputs_5_15_port, negative_inputs_5_14_port, 
      negative_inputs_5_13_port, negative_inputs_5_12_port, 
      negative_inputs_5_11_port, negative_inputs_5_10_port, 
      negative_inputs_5_9_port, negative_inputs_5_8_port, 
      negative_inputs_5_7_port, negative_inputs_5_6_port, 
      negative_inputs_5_5_port, negative_inputs_5_4_port, 
      negative_inputs_5_3_port, negative_inputs_5_2_port, 
      negative_inputs_5_1_port, negative_inputs_5_0_port, 
      negative_inputs_4_15_port, negative_inputs_4_14_port, 
      negative_inputs_4_13_port, negative_inputs_4_12_port, 
      negative_inputs_4_11_port, negative_inputs_4_10_port, 
      negative_inputs_4_9_port, negative_inputs_4_8_port, 
      negative_inputs_4_7_port, negative_inputs_4_6_port, 
      negative_inputs_4_5_port, negative_inputs_4_4_port, 
      negative_inputs_4_3_port, negative_inputs_4_2_port, 
      negative_inputs_4_1_port, negative_inputs_4_0_port, 
      negative_inputs_3_15_port, negative_inputs_3_14_port, 
      negative_inputs_3_13_port, negative_inputs_3_12_port, 
      negative_inputs_3_11_port, negative_inputs_3_10_port, 
      negative_inputs_3_9_port, negative_inputs_3_8_port, 
      negative_inputs_3_7_port, negative_inputs_3_6_port, 
      negative_inputs_3_5_port, negative_inputs_3_4_port, 
      negative_inputs_3_3_port, negative_inputs_3_2_port, 
      negative_inputs_3_1_port, negative_inputs_3_0_port, 
      negative_inputs_2_15_port, negative_inputs_2_14_port, 
      negative_inputs_2_13_port, negative_inputs_2_12_port, 
      negative_inputs_2_11_port, negative_inputs_2_10_port, 
      negative_inputs_2_9_port, negative_inputs_2_8_port, 
      negative_inputs_2_7_port, negative_inputs_2_6_port, 
      negative_inputs_2_5_port, negative_inputs_2_4_port, 
      negative_inputs_2_3_port, negative_inputs_2_2_port, 
      negative_inputs_2_1_port, negative_inputs_2_0_port, 
      negative_inputs_1_15_port, negative_inputs_1_14_port, 
      negative_inputs_1_13_port, negative_inputs_1_12_port, 
      negative_inputs_1_11_port, negative_inputs_1_10_port, 
      negative_inputs_1_9_port, negative_inputs_1_8_port, 
      negative_inputs_1_7_port, negative_inputs_1_6_port, 
      negative_inputs_1_5_port, negative_inputs_1_4_port, 
      negative_inputs_1_3_port, negative_inputs_1_2_port, 
      negative_inputs_1_1_port, negative_inputs_1_0_port, 
      negative_inputs_0_15_port, negative_inputs_0_14_port, 
      negative_inputs_0_13_port, negative_inputs_0_12_port, 
      negative_inputs_0_11_port, negative_inputs_0_10_port, 
      negative_inputs_0_9_port, negative_inputs_0_8_port, 
      negative_inputs_0_7_port, negative_inputs_0_6_port, 
      negative_inputs_0_5_port, negative_inputs_0_4_port, 
      negative_inputs_0_3_port, negative_inputs_0_2_port, 
      negative_inputs_0_1_port, negative_inputs_0_0_port, Encoder_out_11_port, 
      Encoder_out_10_port, Encoder_out_9_port, Encoder_out_8_port, 
      Encoder_out_7_port, Encoder_out_6_port, Encoder_out_5_port, 
      Encoder_out_4_port, Encoder_out_3_port, Encoder_out_2_port, 
      Encoder_out_1_port, Encoder_out_0_port, ADDER_IN_from_mux_3_15_port, 
      ADDER_IN_from_mux_3_14_port, ADDER_IN_from_mux_3_13_port, 
      ADDER_IN_from_mux_3_12_port, ADDER_IN_from_mux_3_11_port, 
      ADDER_IN_from_mux_3_10_port, ADDER_IN_from_mux_3_9_port, 
      ADDER_IN_from_mux_3_8_port, ADDER_IN_from_mux_3_7_port, 
      ADDER_IN_from_mux_3_6_port, ADDER_IN_from_mux_3_5_port, 
      ADDER_IN_from_mux_3_4_port, ADDER_IN_from_mux_3_3_port, 
      ADDER_IN_from_mux_3_2_port, ADDER_IN_from_mux_3_1_port, 
      ADDER_IN_from_mux_3_0_port, ADDER_IN_from_mux_2_15_port, 
      ADDER_IN_from_mux_2_14_port, ADDER_IN_from_mux_2_13_port, 
      ADDER_IN_from_mux_2_12_port, ADDER_IN_from_mux_2_11_port, 
      ADDER_IN_from_mux_2_10_port, ADDER_IN_from_mux_2_9_port, 
      ADDER_IN_from_mux_2_8_port, ADDER_IN_from_mux_2_7_port, 
      ADDER_IN_from_mux_2_6_port, ADDER_IN_from_mux_2_5_port, 
      ADDER_IN_from_mux_2_4_port, ADDER_IN_from_mux_2_3_port, 
      ADDER_IN_from_mux_2_2_port, ADDER_IN_from_mux_2_1_port, 
      ADDER_IN_from_mux_2_0_port, ADDER_IN_from_mux_1_15_port, 
      ADDER_IN_from_mux_1_14_port, ADDER_IN_from_mux_1_13_port, 
      ADDER_IN_from_mux_1_12_port, ADDER_IN_from_mux_1_11_port, 
      ADDER_IN_from_mux_1_10_port, ADDER_IN_from_mux_1_9_port, 
      ADDER_IN_from_mux_1_8_port, ADDER_IN_from_mux_1_7_port, 
      ADDER_IN_from_mux_1_6_port, ADDER_IN_from_mux_1_5_port, 
      ADDER_IN_from_mux_1_4_port, ADDER_IN_from_mux_1_3_port, 
      ADDER_IN_from_mux_1_2_port, ADDER_IN_from_mux_1_1_port, 
      ADDER_IN_from_mux_1_0_port, ADDER_IN_from_mux_0_15_port, 
      ADDER_IN_from_mux_0_14_port, ADDER_IN_from_mux_0_13_port, 
      ADDER_IN_from_mux_0_12_port, ADDER_IN_from_mux_0_11_port, 
      ADDER_IN_from_mux_0_10_port, ADDER_IN_from_mux_0_9_port, 
      ADDER_IN_from_mux_0_8_port, ADDER_IN_from_mux_0_7_port, 
      ADDER_IN_from_mux_0_6_port, ADDER_IN_from_mux_0_5_port, 
      ADDER_IN_from_mux_0_4_port, ADDER_IN_from_mux_0_3_port, 
      ADDER_IN_from_mux_0_2_port, ADDER_IN_from_mux_0_1_port, 
      ADDER_IN_from_mux_0_0_port, ADDER_IN_from_sum_1_15_port, 
      ADDER_IN_from_sum_1_14_port, ADDER_IN_from_sum_1_13_port, 
      ADDER_IN_from_sum_1_12_port, ADDER_IN_from_sum_1_11_port, 
      ADDER_IN_from_sum_1_10_port, ADDER_IN_from_sum_1_9_port, 
      ADDER_IN_from_sum_1_8_port, ADDER_IN_from_sum_1_7_port, 
      ADDER_IN_from_sum_1_6_port, ADDER_IN_from_sum_1_5_port, 
      ADDER_IN_from_sum_1_4_port, ADDER_IN_from_sum_1_3_port, 
      ADDER_IN_from_sum_1_2_port, ADDER_IN_from_sum_1_1_port, 
      ADDER_IN_from_sum_1_0_port, ADDER_IN_from_sum_0_15_port, 
      ADDER_IN_from_sum_0_14_port, ADDER_IN_from_sum_0_13_port, 
      ADDER_IN_from_sum_0_12_port, ADDER_IN_from_sum_0_11_port, 
      ADDER_IN_from_sum_0_10_port, ADDER_IN_from_sum_0_9_port, 
      ADDER_IN_from_sum_0_8_port, ADDER_IN_from_sum_0_7_port, 
      ADDER_IN_from_sum_0_6_port, ADDER_IN_from_sum_0_5_port, 
      ADDER_IN_from_sum_0_4_port, ADDER_IN_from_sum_0_3_port, 
      ADDER_IN_from_sum_0_2_port, ADDER_IN_from_sum_0_1_port, 
      ADDER_IN_from_sum_0_0_port, n_1015, n_1016, n_1017 : std_logic;

begin
   
   X_Logic0_port <= '0';
   complement_A_signal_0 : complement_NBIT16_0 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(7), A(10) => INPUT_1(7)
                           , A(9) => INPUT_1(7), A(8) => INPUT_1(7), A(7) => 
                           INPUT_1(7), A(6) => INPUT_1(6), A(5) => INPUT_1(5), 
                           A(4) => INPUT_1(4), A(3) => INPUT_1(3), A(2) => 
                           INPUT_1(2), A(1) => INPUT_1(1), A(0) => INPUT_1(0), 
                           Y(15) => negative_inputs_0_15_port, Y(14) => 
                           negative_inputs_0_14_port, Y(13) => 
                           negative_inputs_0_13_port, Y(12) => 
                           negative_inputs_0_12_port, Y(11) => 
                           negative_inputs_0_11_port, Y(10) => 
                           negative_inputs_0_10_port, Y(9) => 
                           negative_inputs_0_9_port, Y(8) => 
                           negative_inputs_0_8_port, Y(7) => 
                           negative_inputs_0_7_port, Y(6) => 
                           negative_inputs_0_6_port, Y(5) => 
                           negative_inputs_0_5_port, Y(4) => 
                           negative_inputs_0_4_port, Y(3) => 
                           negative_inputs_0_3_port, Y(2) => 
                           negative_inputs_0_2_port, Y(1) => 
                           negative_inputs_0_1_port, Y(0) => 
                           negative_inputs_0_0_port);
   complement_A_signal_1 : complement_NBIT16_7 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(7), A(10) => INPUT_1(7)
                           , A(9) => INPUT_1(7), A(8) => INPUT_1(7), A(7) => 
                           INPUT_1(6), A(6) => INPUT_1(5), A(5) => INPUT_1(4), 
                           A(4) => INPUT_1(3), A(3) => INPUT_1(2), A(2) => 
                           INPUT_1(1), A(1) => INPUT_1(0), A(0) => 
                           X_Logic0_port, Y(15) => negative_inputs_1_15_port, 
                           Y(14) => negative_inputs_1_14_port, Y(13) => 
                           negative_inputs_1_13_port, Y(12) => 
                           negative_inputs_1_12_port, Y(11) => 
                           negative_inputs_1_11_port, Y(10) => 
                           negative_inputs_1_10_port, Y(9) => 
                           negative_inputs_1_9_port, Y(8) => 
                           negative_inputs_1_8_port, Y(7) => 
                           negative_inputs_1_7_port, Y(6) => 
                           negative_inputs_1_6_port, Y(5) => 
                           negative_inputs_1_5_port, Y(4) => 
                           negative_inputs_1_4_port, Y(3) => 
                           negative_inputs_1_3_port, Y(2) => 
                           negative_inputs_1_2_port, Y(1) => 
                           negative_inputs_1_1_port, Y(0) => 
                           negative_inputs_1_0_port);
   complement_A_signal_2 : complement_NBIT16_6 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(7), A(10) => INPUT_1(7)
                           , A(9) => INPUT_1(7), A(8) => INPUT_1(6), A(7) => 
                           INPUT_1(5), A(6) => INPUT_1(4), A(5) => INPUT_1(3), 
                           A(4) => INPUT_1(2), A(3) => INPUT_1(1), A(2) => 
                           INPUT_1(0), A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, Y(15) => negative_inputs_2_15_port, 
                           Y(14) => negative_inputs_2_14_port, Y(13) => 
                           negative_inputs_2_13_port, Y(12) => 
                           negative_inputs_2_12_port, Y(11) => 
                           negative_inputs_2_11_port, Y(10) => 
                           negative_inputs_2_10_port, Y(9) => 
                           negative_inputs_2_9_port, Y(8) => 
                           negative_inputs_2_8_port, Y(7) => 
                           negative_inputs_2_7_port, Y(6) => 
                           negative_inputs_2_6_port, Y(5) => 
                           negative_inputs_2_5_port, Y(4) => 
                           negative_inputs_2_4_port, Y(3) => 
                           negative_inputs_2_3_port, Y(2) => 
                           negative_inputs_2_2_port, Y(1) => 
                           negative_inputs_2_1_port, Y(0) => 
                           negative_inputs_2_0_port);
   complement_A_signal_3 : complement_NBIT16_5 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(7), A(10) => INPUT_1(7)
                           , A(9) => INPUT_1(6), A(8) => INPUT_1(5), A(7) => 
                           INPUT_1(4), A(6) => INPUT_1(3), A(5) => INPUT_1(2), 
                           A(4) => INPUT_1(1), A(3) => INPUT_1(0), A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, Y(15) => negative_inputs_3_15_port, 
                           Y(14) => negative_inputs_3_14_port, Y(13) => 
                           negative_inputs_3_13_port, Y(12) => 
                           negative_inputs_3_12_port, Y(11) => 
                           negative_inputs_3_11_port, Y(10) => 
                           negative_inputs_3_10_port, Y(9) => 
                           negative_inputs_3_9_port, Y(8) => 
                           negative_inputs_3_8_port, Y(7) => 
                           negative_inputs_3_7_port, Y(6) => 
                           negative_inputs_3_6_port, Y(5) => 
                           negative_inputs_3_5_port, Y(4) => 
                           negative_inputs_3_4_port, Y(3) => 
                           negative_inputs_3_3_port, Y(2) => 
                           negative_inputs_3_2_port, Y(1) => 
                           negative_inputs_3_1_port, Y(0) => 
                           negative_inputs_3_0_port);
   complement_A_signal_4 : complement_NBIT16_4 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(7), A(10) => INPUT_1(6)
                           , A(9) => INPUT_1(5), A(8) => INPUT_1(4), A(7) => 
                           INPUT_1(3), A(6) => INPUT_1(2), A(5) => INPUT_1(1), 
                           A(4) => INPUT_1(0), A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, Y(15) => negative_inputs_4_15_port, 
                           Y(14) => negative_inputs_4_14_port, Y(13) => 
                           negative_inputs_4_13_port, Y(12) => 
                           negative_inputs_4_12_port, Y(11) => 
                           negative_inputs_4_11_port, Y(10) => 
                           negative_inputs_4_10_port, Y(9) => 
                           negative_inputs_4_9_port, Y(8) => 
                           negative_inputs_4_8_port, Y(7) => 
                           negative_inputs_4_7_port, Y(6) => 
                           negative_inputs_4_6_port, Y(5) => 
                           negative_inputs_4_5_port, Y(4) => 
                           negative_inputs_4_4_port, Y(3) => 
                           negative_inputs_4_3_port, Y(2) => 
                           negative_inputs_4_2_port, Y(1) => 
                           negative_inputs_4_1_port, Y(0) => 
                           negative_inputs_4_0_port);
   complement_A_signal_5 : complement_NBIT16_3 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(7), A(11) => INPUT_1(6), A(10) => INPUT_1(5)
                           , A(9) => INPUT_1(4), A(8) => INPUT_1(3), A(7) => 
                           INPUT_1(2), A(6) => INPUT_1(1), A(5) => INPUT_1(0), 
                           A(4) => X_Logic0_port, A(3) => X_Logic0_port, A(2) 
                           => X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, Y(15) => negative_inputs_5_15_port, 
                           Y(14) => negative_inputs_5_14_port, Y(13) => 
                           negative_inputs_5_13_port, Y(12) => 
                           negative_inputs_5_12_port, Y(11) => 
                           negative_inputs_5_11_port, Y(10) => 
                           negative_inputs_5_10_port, Y(9) => 
                           negative_inputs_5_9_port, Y(8) => 
                           negative_inputs_5_8_port, Y(7) => 
                           negative_inputs_5_7_port, Y(6) => 
                           negative_inputs_5_6_port, Y(5) => 
                           negative_inputs_5_5_port, Y(4) => 
                           negative_inputs_5_4_port, Y(3) => 
                           negative_inputs_5_3_port, Y(2) => 
                           negative_inputs_5_2_port, Y(1) => 
                           negative_inputs_5_1_port, Y(0) => 
                           negative_inputs_5_0_port);
   complement_A_signal_6 : complement_NBIT16_2 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(7), A(12) => 
                           INPUT_1(6), A(11) => INPUT_1(5), A(10) => INPUT_1(4)
                           , A(9) => INPUT_1(3), A(8) => INPUT_1(2), A(7) => 
                           INPUT_1(1), A(6) => INPUT_1(0), A(5) => 
                           X_Logic0_port, A(4) => X_Logic0_port, A(3) => 
                           X_Logic0_port, A(2) => X_Logic0_port, A(1) => 
                           X_Logic0_port, A(0) => X_Logic0_port, Y(15) => 
                           negative_inputs_6_15_port, Y(14) => 
                           negative_inputs_6_14_port, Y(13) => 
                           negative_inputs_6_13_port, Y(12) => 
                           negative_inputs_6_12_port, Y(11) => 
                           negative_inputs_6_11_port, Y(10) => 
                           negative_inputs_6_10_port, Y(9) => 
                           negative_inputs_6_9_port, Y(8) => 
                           negative_inputs_6_8_port, Y(7) => 
                           negative_inputs_6_7_port, Y(6) => 
                           negative_inputs_6_6_port, Y(5) => 
                           negative_inputs_6_5_port, Y(4) => 
                           negative_inputs_6_4_port, Y(3) => 
                           negative_inputs_6_3_port, Y(2) => 
                           negative_inputs_6_2_port, Y(1) => 
                           negative_inputs_6_1_port, Y(0) => 
                           negative_inputs_6_0_port);
   complement_A_signal_7 : complement_NBIT16_1 port map( A(15) => INPUT_1(7), 
                           A(14) => INPUT_1(7), A(13) => INPUT_1(6), A(12) => 
                           INPUT_1(5), A(11) => INPUT_1(4), A(10) => INPUT_1(3)
                           , A(9) => INPUT_1(2), A(8) => INPUT_1(1), A(7) => 
                           INPUT_1(0), A(6) => X_Logic0_port, A(5) => 
                           X_Logic0_port, A(4) => X_Logic0_port, A(3) => 
                           X_Logic0_port, A(2) => X_Logic0_port, A(1) => 
                           X_Logic0_port, A(0) => X_Logic0_port, Y(15) => 
                           negative_inputs_7_15_port, Y(14) => 
                           negative_inputs_7_14_port, Y(13) => 
                           negative_inputs_7_13_port, Y(12) => 
                           negative_inputs_7_12_port, Y(11) => 
                           negative_inputs_7_11_port, Y(10) => 
                           negative_inputs_7_10_port, Y(9) => 
                           negative_inputs_7_9_port, Y(8) => 
                           negative_inputs_7_8_port, Y(7) => 
                           negative_inputs_7_7_port, Y(6) => 
                           negative_inputs_7_6_port, Y(5) => 
                           negative_inputs_7_5_port, Y(4) => 
                           negative_inputs_7_4_port, Y(3) => 
                           negative_inputs_7_3_port, Y(2) => 
                           negative_inputs_7_2_port, Y(1) => 
                           negative_inputs_7_1_port, Y(0) => 
                           negative_inputs_7_0_port);
   BOOTH_enc : booth_encoder_NBIT8 port map( A(7) => INPUT_2(7), A(6) => 
                           INPUT_2(6), A(5) => INPUT_2(5), A(4) => INPUT_2(4), 
                           A(3) => INPUT_2(3), A(2) => INPUT_2(2), A(1) => 
                           INPUT_2(1), A(0) => INPUT_2(0), Y(11) => 
                           Encoder_out_11_port, Y(10) => Encoder_out_10_port, 
                           Y(9) => Encoder_out_9_port, Y(8) => 
                           Encoder_out_8_port, Y(7) => Encoder_out_7_port, Y(6)
                           => Encoder_out_6_port, Y(5) => Encoder_out_5_port, 
                           Y(4) => Encoder_out_4_port, Y(3) => 
                           Encoder_out_3_port, Y(2) => Encoder_out_2_port, Y(1)
                           => Encoder_out_1_port, Y(0) => Encoder_out_0_port);
   MUX81_N_0 : MUX81_GENERIC_NBIT16_0 port map( A(15) => X_Logic0_port, A(14) 
                           => X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => INPUT_1(7), B(14) => 
                           INPUT_1(7), B(13) => INPUT_1(7), B(12) => INPUT_1(7)
                           , B(11) => INPUT_1(7), B(10) => INPUT_1(7), B(9) => 
                           INPUT_1(7), B(8) => INPUT_1(7), B(7) => INPUT_1(7), 
                           B(6) => INPUT_1(6), B(5) => INPUT_1(5), B(4) => 
                           INPUT_1(4), B(3) => INPUT_1(3), B(2) => INPUT_1(2), 
                           B(1) => INPUT_1(1), B(0) => INPUT_1(0), C(15) => 
                           INPUT_1(7), C(14) => INPUT_1(7), C(13) => INPUT_1(7)
                           , C(12) => INPUT_1(7), C(11) => INPUT_1(7), C(10) =>
                           INPUT_1(7), C(9) => INPUT_1(7), C(8) => INPUT_1(7), 
                           C(7) => INPUT_1(6), C(6) => INPUT_1(5), C(5) => 
                           INPUT_1(4), C(4) => INPUT_1(3), C(3) => INPUT_1(2), 
                           C(2) => INPUT_1(1), C(1) => INPUT_1(0), C(0) => 
                           X_Logic0_port, D(15) => X_Logic0_port, D(14) => 
                           X_Logic0_port, D(13) => X_Logic0_port, D(12) => 
                           X_Logic0_port, D(11) => X_Logic0_port, D(10) => 
                           X_Logic0_port, D(9) => X_Logic0_port, D(8) => 
                           X_Logic0_port, D(7) => X_Logic0_port, D(6) => 
                           X_Logic0_port, D(5) => X_Logic0_port, D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => negative_inputs_0_15_port, 
                           E(14) => negative_inputs_0_14_port, E(13) => 
                           negative_inputs_0_13_port, E(12) => 
                           negative_inputs_0_12_port, E(11) => 
                           negative_inputs_0_11_port, E(10) => 
                           negative_inputs_0_10_port, E(9) => 
                           negative_inputs_0_9_port, E(8) => 
                           negative_inputs_0_8_port, E(7) => 
                           negative_inputs_0_7_port, E(6) => 
                           negative_inputs_0_6_port, E(5) => 
                           negative_inputs_0_5_port, E(4) => 
                           negative_inputs_0_4_port, E(3) => 
                           negative_inputs_0_3_port, E(2) => 
                           negative_inputs_0_2_port, E(1) => 
                           negative_inputs_0_1_port, E(0) => 
                           negative_inputs_0_0_port, F(15) => X_Logic0_port, 
                           F(14) => X_Logic0_port, F(13) => X_Logic0_port, 
                           F(12) => X_Logic0_port, F(11) => X_Logic0_port, 
                           F(10) => X_Logic0_port, F(9) => X_Logic0_port, F(8) 
                           => X_Logic0_port, F(7) => X_Logic0_port, F(6) => 
                           X_Logic0_port, F(5) => X_Logic0_port, F(4) => 
                           X_Logic0_port, F(3) => X_Logic0_port, F(2) => 
                           X_Logic0_port, F(1) => X_Logic0_port, F(0) => 
                           X_Logic0_port, G(15) => negative_inputs_1_15_port, 
                           G(14) => negative_inputs_1_14_port, G(13) => 
                           negative_inputs_1_13_port, G(12) => 
                           negative_inputs_1_12_port, G(11) => 
                           negative_inputs_1_11_port, G(10) => 
                           negative_inputs_1_10_port, G(9) => 
                           negative_inputs_1_9_port, G(8) => 
                           negative_inputs_1_8_port, G(7) => 
                           negative_inputs_1_7_port, G(6) => 
                           negative_inputs_1_6_port, G(5) => 
                           negative_inputs_1_5_port, G(4) => 
                           negative_inputs_1_4_port, G(3) => 
                           negative_inputs_1_3_port, G(2) => 
                           negative_inputs_1_2_port, G(1) => 
                           negative_inputs_1_1_port, G(0) => 
                           negative_inputs_1_0_port, H(15) => X_Logic0_port, 
                           H(14) => X_Logic0_port, H(13) => X_Logic0_port, 
                           H(12) => X_Logic0_port, H(11) => X_Logic0_port, 
                           H(10) => X_Logic0_port, H(9) => X_Logic0_port, H(8) 
                           => X_Logic0_port, H(7) => X_Logic0_port, H(6) => 
                           X_Logic0_port, H(5) => X_Logic0_port, H(4) => 
                           X_Logic0_port, H(3) => X_Logic0_port, H(2) => 
                           X_Logic0_port, H(1) => X_Logic0_port, H(0) => 
                           X_Logic0_port, SEL(2) => Encoder_out_2_port, SEL(1) 
                           => Encoder_out_1_port, SEL(0) => Encoder_out_0_port,
                           Y(15) => ADDER_IN_from_mux_0_15_port, Y(14) => 
                           ADDER_IN_from_mux_0_14_port, Y(13) => 
                           ADDER_IN_from_mux_0_13_port, Y(12) => 
                           ADDER_IN_from_mux_0_12_port, Y(11) => 
                           ADDER_IN_from_mux_0_11_port, Y(10) => 
                           ADDER_IN_from_mux_0_10_port, Y(9) => 
                           ADDER_IN_from_mux_0_9_port, Y(8) => 
                           ADDER_IN_from_mux_0_8_port, Y(7) => 
                           ADDER_IN_from_mux_0_7_port, Y(6) => 
                           ADDER_IN_from_mux_0_6_port, Y(5) => 
                           ADDER_IN_from_mux_0_5_port, Y(4) => 
                           ADDER_IN_from_mux_0_4_port, Y(3) => 
                           ADDER_IN_from_mux_0_3_port, Y(2) => 
                           ADDER_IN_from_mux_0_2_port, Y(1) => 
                           ADDER_IN_from_mux_0_1_port, Y(0) => 
                           ADDER_IN_from_mux_0_0_port);
   MUX81_N_1 : MUX81_GENERIC_NBIT16_3 port map( A(15) => X_Logic0_port, A(14) 
                           => X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => INPUT_1(7), B(14) => 
                           INPUT_1(7), B(13) => INPUT_1(7), B(12) => INPUT_1(7)
                           , B(11) => INPUT_1(7), B(10) => INPUT_1(7), B(9) => 
                           INPUT_1(7), B(8) => INPUT_1(6), B(7) => INPUT_1(5), 
                           B(6) => INPUT_1(4), B(5) => INPUT_1(3), B(4) => 
                           INPUT_1(2), B(3) => INPUT_1(1), B(2) => INPUT_1(0), 
                           B(1) => X_Logic0_port, B(0) => X_Logic0_port, C(15) 
                           => INPUT_1(7), C(14) => INPUT_1(7), C(13) => 
                           INPUT_1(7), C(12) => INPUT_1(7), C(11) => INPUT_1(7)
                           , C(10) => INPUT_1(7), C(9) => INPUT_1(6), C(8) => 
                           INPUT_1(5), C(7) => INPUT_1(4), C(6) => INPUT_1(3), 
                           C(5) => INPUT_1(2), C(4) => INPUT_1(1), C(3) => 
                           INPUT_1(0), C(2) => X_Logic0_port, C(1) => 
                           X_Logic0_port, C(0) => X_Logic0_port, D(15) => 
                           X_Logic0_port, D(14) => X_Logic0_port, D(13) => 
                           X_Logic0_port, D(12) => X_Logic0_port, D(11) => 
                           X_Logic0_port, D(10) => X_Logic0_port, D(9) => 
                           X_Logic0_port, D(8) => X_Logic0_port, D(7) => 
                           X_Logic0_port, D(6) => X_Logic0_port, D(5) => 
                           X_Logic0_port, D(4) => X_Logic0_port, D(3) => 
                           X_Logic0_port, D(2) => X_Logic0_port, D(1) => 
                           X_Logic0_port, D(0) => X_Logic0_port, E(15) => 
                           negative_inputs_2_15_port, E(14) => 
                           negative_inputs_2_14_port, E(13) => 
                           negative_inputs_2_13_port, E(12) => 
                           negative_inputs_2_12_port, E(11) => 
                           negative_inputs_2_11_port, E(10) => 
                           negative_inputs_2_10_port, E(9) => 
                           negative_inputs_2_9_port, E(8) => 
                           negative_inputs_2_8_port, E(7) => 
                           negative_inputs_2_7_port, E(6) => 
                           negative_inputs_2_6_port, E(5) => 
                           negative_inputs_2_5_port, E(4) => 
                           negative_inputs_2_4_port, E(3) => 
                           negative_inputs_2_3_port, E(2) => 
                           negative_inputs_2_2_port, E(1) => 
                           negative_inputs_2_1_port, E(0) => 
                           negative_inputs_2_0_port, F(15) => X_Logic0_port, 
                           F(14) => X_Logic0_port, F(13) => X_Logic0_port, 
                           F(12) => X_Logic0_port, F(11) => X_Logic0_port, 
                           F(10) => X_Logic0_port, F(9) => X_Logic0_port, F(8) 
                           => X_Logic0_port, F(7) => X_Logic0_port, F(6) => 
                           X_Logic0_port, F(5) => X_Logic0_port, F(4) => 
                           X_Logic0_port, F(3) => X_Logic0_port, F(2) => 
                           X_Logic0_port, F(1) => X_Logic0_port, F(0) => 
                           X_Logic0_port, G(15) => negative_inputs_3_15_port, 
                           G(14) => negative_inputs_3_14_port, G(13) => 
                           negative_inputs_3_13_port, G(12) => 
                           negative_inputs_3_12_port, G(11) => 
                           negative_inputs_3_11_port, G(10) => 
                           negative_inputs_3_10_port, G(9) => 
                           negative_inputs_3_9_port, G(8) => 
                           negative_inputs_3_8_port, G(7) => 
                           negative_inputs_3_7_port, G(6) => 
                           negative_inputs_3_6_port, G(5) => 
                           negative_inputs_3_5_port, G(4) => 
                           negative_inputs_3_4_port, G(3) => 
                           negative_inputs_3_3_port, G(2) => 
                           negative_inputs_3_2_port, G(1) => 
                           negative_inputs_3_1_port, G(0) => 
                           negative_inputs_3_0_port, H(15) => X_Logic0_port, 
                           H(14) => X_Logic0_port, H(13) => X_Logic0_port, 
                           H(12) => X_Logic0_port, H(11) => X_Logic0_port, 
                           H(10) => X_Logic0_port, H(9) => X_Logic0_port, H(8) 
                           => X_Logic0_port, H(7) => X_Logic0_port, H(6) => 
                           X_Logic0_port, H(5) => X_Logic0_port, H(4) => 
                           X_Logic0_port, H(3) => X_Logic0_port, H(2) => 
                           X_Logic0_port, H(1) => X_Logic0_port, H(0) => 
                           X_Logic0_port, SEL(2) => Encoder_out_5_port, SEL(1) 
                           => Encoder_out_4_port, SEL(0) => Encoder_out_3_port,
                           Y(15) => ADDER_IN_from_mux_1_15_port, Y(14) => 
                           ADDER_IN_from_mux_1_14_port, Y(13) => 
                           ADDER_IN_from_mux_1_13_port, Y(12) => 
                           ADDER_IN_from_mux_1_12_port, Y(11) => 
                           ADDER_IN_from_mux_1_11_port, Y(10) => 
                           ADDER_IN_from_mux_1_10_port, Y(9) => 
                           ADDER_IN_from_mux_1_9_port, Y(8) => 
                           ADDER_IN_from_mux_1_8_port, Y(7) => 
                           ADDER_IN_from_mux_1_7_port, Y(6) => 
                           ADDER_IN_from_mux_1_6_port, Y(5) => 
                           ADDER_IN_from_mux_1_5_port, Y(4) => 
                           ADDER_IN_from_mux_1_4_port, Y(3) => 
                           ADDER_IN_from_mux_1_3_port, Y(2) => 
                           ADDER_IN_from_mux_1_2_port, Y(1) => 
                           ADDER_IN_from_mux_1_1_port, Y(0) => 
                           ADDER_IN_from_mux_1_0_port);
   MUX81_N_2 : MUX81_GENERIC_NBIT16_2 port map( A(15) => X_Logic0_port, A(14) 
                           => X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => INPUT_1(7), B(14) => 
                           INPUT_1(7), B(13) => INPUT_1(7), B(12) => INPUT_1(7)
                           , B(11) => INPUT_1(7), B(10) => INPUT_1(6), B(9) => 
                           INPUT_1(5), B(8) => INPUT_1(4), B(7) => INPUT_1(3), 
                           B(6) => INPUT_1(2), B(5) => INPUT_1(1), B(4) => 
                           INPUT_1(0), B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(15) => INPUT_1(7), C(14) => 
                           INPUT_1(7), C(13) => INPUT_1(7), C(12) => INPUT_1(7)
                           , C(11) => INPUT_1(6), C(10) => INPUT_1(5), C(9) => 
                           INPUT_1(4), C(8) => INPUT_1(3), C(7) => INPUT_1(2), 
                           C(6) => INPUT_1(1), C(5) => INPUT_1(0), C(4) => 
                           X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, D(15) => X_Logic0_port, D(14) => 
                           X_Logic0_port, D(13) => X_Logic0_port, D(12) => 
                           X_Logic0_port, D(11) => X_Logic0_port, D(10) => 
                           X_Logic0_port, D(9) => X_Logic0_port, D(8) => 
                           X_Logic0_port, D(7) => X_Logic0_port, D(6) => 
                           X_Logic0_port, D(5) => X_Logic0_port, D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => negative_inputs_4_15_port, 
                           E(14) => negative_inputs_4_14_port, E(13) => 
                           negative_inputs_4_13_port, E(12) => 
                           negative_inputs_4_12_port, E(11) => 
                           negative_inputs_4_11_port, E(10) => 
                           negative_inputs_4_10_port, E(9) => 
                           negative_inputs_4_9_port, E(8) => 
                           negative_inputs_4_8_port, E(7) => 
                           negative_inputs_4_7_port, E(6) => 
                           negative_inputs_4_6_port, E(5) => 
                           negative_inputs_4_5_port, E(4) => 
                           negative_inputs_4_4_port, E(3) => 
                           negative_inputs_4_3_port, E(2) => 
                           negative_inputs_4_2_port, E(1) => 
                           negative_inputs_4_1_port, E(0) => 
                           negative_inputs_4_0_port, F(15) => X_Logic0_port, 
                           F(14) => X_Logic0_port, F(13) => X_Logic0_port, 
                           F(12) => X_Logic0_port, F(11) => X_Logic0_port, 
                           F(10) => X_Logic0_port, F(9) => X_Logic0_port, F(8) 
                           => X_Logic0_port, F(7) => X_Logic0_port, F(6) => 
                           X_Logic0_port, F(5) => X_Logic0_port, F(4) => 
                           X_Logic0_port, F(3) => X_Logic0_port, F(2) => 
                           X_Logic0_port, F(1) => X_Logic0_port, F(0) => 
                           X_Logic0_port, G(15) => negative_inputs_5_15_port, 
                           G(14) => negative_inputs_5_14_port, G(13) => 
                           negative_inputs_5_13_port, G(12) => 
                           negative_inputs_5_12_port, G(11) => 
                           negative_inputs_5_11_port, G(10) => 
                           negative_inputs_5_10_port, G(9) => 
                           negative_inputs_5_9_port, G(8) => 
                           negative_inputs_5_8_port, G(7) => 
                           negative_inputs_5_7_port, G(6) => 
                           negative_inputs_5_6_port, G(5) => 
                           negative_inputs_5_5_port, G(4) => 
                           negative_inputs_5_4_port, G(3) => 
                           negative_inputs_5_3_port, G(2) => 
                           negative_inputs_5_2_port, G(1) => 
                           negative_inputs_5_1_port, G(0) => 
                           negative_inputs_5_0_port, H(15) => X_Logic0_port, 
                           H(14) => X_Logic0_port, H(13) => X_Logic0_port, 
                           H(12) => X_Logic0_port, H(11) => X_Logic0_port, 
                           H(10) => X_Logic0_port, H(9) => X_Logic0_port, H(8) 
                           => X_Logic0_port, H(7) => X_Logic0_port, H(6) => 
                           X_Logic0_port, H(5) => X_Logic0_port, H(4) => 
                           X_Logic0_port, H(3) => X_Logic0_port, H(2) => 
                           X_Logic0_port, H(1) => X_Logic0_port, H(0) => 
                           X_Logic0_port, SEL(2) => Encoder_out_8_port, SEL(1) 
                           => Encoder_out_7_port, SEL(0) => Encoder_out_6_port,
                           Y(15) => ADDER_IN_from_mux_2_15_port, Y(14) => 
                           ADDER_IN_from_mux_2_14_port, Y(13) => 
                           ADDER_IN_from_mux_2_13_port, Y(12) => 
                           ADDER_IN_from_mux_2_12_port, Y(11) => 
                           ADDER_IN_from_mux_2_11_port, Y(10) => 
                           ADDER_IN_from_mux_2_10_port, Y(9) => 
                           ADDER_IN_from_mux_2_9_port, Y(8) => 
                           ADDER_IN_from_mux_2_8_port, Y(7) => 
                           ADDER_IN_from_mux_2_7_port, Y(6) => 
                           ADDER_IN_from_mux_2_6_port, Y(5) => 
                           ADDER_IN_from_mux_2_5_port, Y(4) => 
                           ADDER_IN_from_mux_2_4_port, Y(3) => 
                           ADDER_IN_from_mux_2_3_port, Y(2) => 
                           ADDER_IN_from_mux_2_2_port, Y(1) => 
                           ADDER_IN_from_mux_2_1_port, Y(0) => 
                           ADDER_IN_from_mux_2_0_port);
   MUX81_N_3 : MUX81_GENERIC_NBIT16_1 port map( A(15) => X_Logic0_port, A(14) 
                           => X_Logic0_port, A(13) => X_Logic0_port, A(12) => 
                           X_Logic0_port, A(11) => X_Logic0_port, A(10) => 
                           X_Logic0_port, A(9) => X_Logic0_port, A(8) => 
                           X_Logic0_port, A(7) => X_Logic0_port, A(6) => 
                           X_Logic0_port, A(5) => X_Logic0_port, A(4) => 
                           X_Logic0_port, A(3) => X_Logic0_port, A(2) => 
                           X_Logic0_port, A(1) => X_Logic0_port, A(0) => 
                           X_Logic0_port, B(15) => INPUT_1(7), B(14) => 
                           INPUT_1(7), B(13) => INPUT_1(7), B(12) => INPUT_1(6)
                           , B(11) => INPUT_1(5), B(10) => INPUT_1(4), B(9) => 
                           INPUT_1(3), B(8) => INPUT_1(2), B(7) => INPUT_1(1), 
                           B(6) => INPUT_1(0), B(5) => X_Logic0_port, B(4) => 
                           X_Logic0_port, B(3) => X_Logic0_port, B(2) => 
                           X_Logic0_port, B(1) => X_Logic0_port, B(0) => 
                           X_Logic0_port, C(15) => INPUT_1(7), C(14) => 
                           INPUT_1(7), C(13) => INPUT_1(6), C(12) => INPUT_1(5)
                           , C(11) => INPUT_1(4), C(10) => INPUT_1(3), C(9) => 
                           INPUT_1(2), C(8) => INPUT_1(1), C(7) => INPUT_1(0), 
                           C(6) => X_Logic0_port, C(5) => X_Logic0_port, C(4) 
                           => X_Logic0_port, C(3) => X_Logic0_port, C(2) => 
                           X_Logic0_port, C(1) => X_Logic0_port, C(0) => 
                           X_Logic0_port, D(15) => X_Logic0_port, D(14) => 
                           X_Logic0_port, D(13) => X_Logic0_port, D(12) => 
                           X_Logic0_port, D(11) => X_Logic0_port, D(10) => 
                           X_Logic0_port, D(9) => X_Logic0_port, D(8) => 
                           X_Logic0_port, D(7) => X_Logic0_port, D(6) => 
                           X_Logic0_port, D(5) => X_Logic0_port, D(4) => 
                           X_Logic0_port, D(3) => X_Logic0_port, D(2) => 
                           X_Logic0_port, D(1) => X_Logic0_port, D(0) => 
                           X_Logic0_port, E(15) => negative_inputs_6_15_port, 
                           E(14) => negative_inputs_6_14_port, E(13) => 
                           negative_inputs_6_13_port, E(12) => 
                           negative_inputs_6_12_port, E(11) => 
                           negative_inputs_6_11_port, E(10) => 
                           negative_inputs_6_10_port, E(9) => 
                           negative_inputs_6_9_port, E(8) => 
                           negative_inputs_6_8_port, E(7) => 
                           negative_inputs_6_7_port, E(6) => 
                           negative_inputs_6_6_port, E(5) => 
                           negative_inputs_6_5_port, E(4) => 
                           negative_inputs_6_4_port, E(3) => 
                           negative_inputs_6_3_port, E(2) => 
                           negative_inputs_6_2_port, E(1) => 
                           negative_inputs_6_1_port, E(0) => 
                           negative_inputs_6_0_port, F(15) => X_Logic0_port, 
                           F(14) => X_Logic0_port, F(13) => X_Logic0_port, 
                           F(12) => X_Logic0_port, F(11) => X_Logic0_port, 
                           F(10) => X_Logic0_port, F(9) => X_Logic0_port, F(8) 
                           => X_Logic0_port, F(7) => X_Logic0_port, F(6) => 
                           X_Logic0_port, F(5) => X_Logic0_port, F(4) => 
                           X_Logic0_port, F(3) => X_Logic0_port, F(2) => 
                           X_Logic0_port, F(1) => X_Logic0_port, F(0) => 
                           X_Logic0_port, G(15) => negative_inputs_7_15_port, 
                           G(14) => negative_inputs_7_14_port, G(13) => 
                           negative_inputs_7_13_port, G(12) => 
                           negative_inputs_7_12_port, G(11) => 
                           negative_inputs_7_11_port, G(10) => 
                           negative_inputs_7_10_port, G(9) => 
                           negative_inputs_7_9_port, G(8) => 
                           negative_inputs_7_8_port, G(7) => 
                           negative_inputs_7_7_port, G(6) => 
                           negative_inputs_7_6_port, G(5) => 
                           negative_inputs_7_5_port, G(4) => 
                           negative_inputs_7_4_port, G(3) => 
                           negative_inputs_7_3_port, G(2) => 
                           negative_inputs_7_2_port, G(1) => 
                           negative_inputs_7_1_port, G(0) => 
                           negative_inputs_7_0_port, H(15) => X_Logic0_port, 
                           H(14) => X_Logic0_port, H(13) => X_Logic0_port, 
                           H(12) => X_Logic0_port, H(11) => X_Logic0_port, 
                           H(10) => X_Logic0_port, H(9) => X_Logic0_port, H(8) 
                           => X_Logic0_port, H(7) => X_Logic0_port, H(6) => 
                           X_Logic0_port, H(5) => X_Logic0_port, H(4) => 
                           X_Logic0_port, H(3) => X_Logic0_port, H(2) => 
                           X_Logic0_port, H(1) => X_Logic0_port, H(0) => 
                           X_Logic0_port, SEL(2) => Encoder_out_11_port, SEL(1)
                           => Encoder_out_10_port, SEL(0) => Encoder_out_9_port
                           , Y(15) => ADDER_IN_from_mux_3_15_port, Y(14) => 
                           ADDER_IN_from_mux_3_14_port, Y(13) => 
                           ADDER_IN_from_mux_3_13_port, Y(12) => 
                           ADDER_IN_from_mux_3_12_port, Y(11) => 
                           ADDER_IN_from_mux_3_11_port, Y(10) => 
                           ADDER_IN_from_mux_3_10_port, Y(9) => 
                           ADDER_IN_from_mux_3_9_port, Y(8) => 
                           ADDER_IN_from_mux_3_8_port, Y(7) => 
                           ADDER_IN_from_mux_3_7_port, Y(6) => 
                           ADDER_IN_from_mux_3_6_port, Y(5) => 
                           ADDER_IN_from_mux_3_5_port, Y(4) => 
                           ADDER_IN_from_mux_3_4_port, Y(3) => 
                           ADDER_IN_from_mux_3_3_port, Y(2) => 
                           ADDER_IN_from_mux_3_2_port, Y(1) => 
                           ADDER_IN_from_mux_3_1_port, Y(0) => 
                           ADDER_IN_from_mux_3_0_port);
   first_adder : RCA_NBIT16_0 port map( A(15) => ADDER_IN_from_mux_0_15_port, 
                           A(14) => ADDER_IN_from_mux_0_14_port, A(13) => 
                           ADDER_IN_from_mux_0_13_port, A(12) => 
                           ADDER_IN_from_mux_0_12_port, A(11) => 
                           ADDER_IN_from_mux_0_11_port, A(10) => 
                           ADDER_IN_from_mux_0_10_port, A(9) => 
                           ADDER_IN_from_mux_0_9_port, A(8) => 
                           ADDER_IN_from_mux_0_8_port, A(7) => 
                           ADDER_IN_from_mux_0_7_port, A(6) => 
                           ADDER_IN_from_mux_0_6_port, A(5) => 
                           ADDER_IN_from_mux_0_5_port, A(4) => 
                           ADDER_IN_from_mux_0_4_port, A(3) => 
                           ADDER_IN_from_mux_0_3_port, A(2) => 
                           ADDER_IN_from_mux_0_2_port, A(1) => 
                           ADDER_IN_from_mux_0_1_port, A(0) => 
                           ADDER_IN_from_mux_0_0_port, B(15) => 
                           ADDER_IN_from_mux_1_15_port, B(14) => 
                           ADDER_IN_from_mux_1_14_port, B(13) => 
                           ADDER_IN_from_mux_1_13_port, B(12) => 
                           ADDER_IN_from_mux_1_12_port, B(11) => 
                           ADDER_IN_from_mux_1_11_port, B(10) => 
                           ADDER_IN_from_mux_1_10_port, B(9) => 
                           ADDER_IN_from_mux_1_9_port, B(8) => 
                           ADDER_IN_from_mux_1_8_port, B(7) => 
                           ADDER_IN_from_mux_1_7_port, B(6) => 
                           ADDER_IN_from_mux_1_6_port, B(5) => 
                           ADDER_IN_from_mux_1_5_port, B(4) => 
                           ADDER_IN_from_mux_1_4_port, B(3) => 
                           ADDER_IN_from_mux_1_3_port, B(2) => 
                           ADDER_IN_from_mux_1_2_port, B(1) => 
                           ADDER_IN_from_mux_1_1_port, B(0) => 
                           ADDER_IN_from_mux_1_0_port, S(15) => 
                           ADDER_IN_from_sum_0_15_port, S(14) => 
                           ADDER_IN_from_sum_0_14_port, S(13) => 
                           ADDER_IN_from_sum_0_13_port, S(12) => 
                           ADDER_IN_from_sum_0_12_port, S(11) => 
                           ADDER_IN_from_sum_0_11_port, S(10) => 
                           ADDER_IN_from_sum_0_10_port, S(9) => 
                           ADDER_IN_from_sum_0_9_port, S(8) => 
                           ADDER_IN_from_sum_0_8_port, S(7) => 
                           ADDER_IN_from_sum_0_7_port, S(6) => 
                           ADDER_IN_from_sum_0_6_port, S(5) => 
                           ADDER_IN_from_sum_0_5_port, S(4) => 
                           ADDER_IN_from_sum_0_4_port, S(3) => 
                           ADDER_IN_from_sum_0_3_port, S(2) => 
                           ADDER_IN_from_sum_0_2_port, S(1) => 
                           ADDER_IN_from_sum_0_1_port, S(0) => 
                           ADDER_IN_from_sum_0_0_port, Co => n_1015);
   RCA_n_0 : RCA_NBIT16_2 port map( A(15) => ADDER_IN_from_sum_0_15_port, A(14)
                           => ADDER_IN_from_sum_0_14_port, A(13) => 
                           ADDER_IN_from_sum_0_13_port, A(12) => 
                           ADDER_IN_from_sum_0_12_port, A(11) => 
                           ADDER_IN_from_sum_0_11_port, A(10) => 
                           ADDER_IN_from_sum_0_10_port, A(9) => 
                           ADDER_IN_from_sum_0_9_port, A(8) => 
                           ADDER_IN_from_sum_0_8_port, A(7) => 
                           ADDER_IN_from_sum_0_7_port, A(6) => 
                           ADDER_IN_from_sum_0_6_port, A(5) => 
                           ADDER_IN_from_sum_0_5_port, A(4) => 
                           ADDER_IN_from_sum_0_4_port, A(3) => 
                           ADDER_IN_from_sum_0_3_port, A(2) => 
                           ADDER_IN_from_sum_0_2_port, A(1) => 
                           ADDER_IN_from_sum_0_1_port, A(0) => 
                           ADDER_IN_from_sum_0_0_port, B(15) => 
                           ADDER_IN_from_mux_2_15_port, B(14) => 
                           ADDER_IN_from_mux_2_14_port, B(13) => 
                           ADDER_IN_from_mux_2_13_port, B(12) => 
                           ADDER_IN_from_mux_2_12_port, B(11) => 
                           ADDER_IN_from_mux_2_11_port, B(10) => 
                           ADDER_IN_from_mux_2_10_port, B(9) => 
                           ADDER_IN_from_mux_2_9_port, B(8) => 
                           ADDER_IN_from_mux_2_8_port, B(7) => 
                           ADDER_IN_from_mux_2_7_port, B(6) => 
                           ADDER_IN_from_mux_2_6_port, B(5) => 
                           ADDER_IN_from_mux_2_5_port, B(4) => 
                           ADDER_IN_from_mux_2_4_port, B(3) => 
                           ADDER_IN_from_mux_2_3_port, B(2) => 
                           ADDER_IN_from_mux_2_2_port, B(1) => 
                           ADDER_IN_from_mux_2_1_port, B(0) => 
                           ADDER_IN_from_mux_2_0_port, S(15) => 
                           ADDER_IN_from_sum_1_15_port, S(14) => 
                           ADDER_IN_from_sum_1_14_port, S(13) => 
                           ADDER_IN_from_sum_1_13_port, S(12) => 
                           ADDER_IN_from_sum_1_12_port, S(11) => 
                           ADDER_IN_from_sum_1_11_port, S(10) => 
                           ADDER_IN_from_sum_1_10_port, S(9) => 
                           ADDER_IN_from_sum_1_9_port, S(8) => 
                           ADDER_IN_from_sum_1_8_port, S(7) => 
                           ADDER_IN_from_sum_1_7_port, S(6) => 
                           ADDER_IN_from_sum_1_6_port, S(5) => 
                           ADDER_IN_from_sum_1_5_port, S(4) => 
                           ADDER_IN_from_sum_1_4_port, S(3) => 
                           ADDER_IN_from_sum_1_3_port, S(2) => 
                           ADDER_IN_from_sum_1_2_port, S(1) => 
                           ADDER_IN_from_sum_1_1_port, S(0) => 
                           ADDER_IN_from_sum_1_0_port, Co => n_1016);
   RCA_n_1 : RCA_NBIT16_1 port map( A(15) => ADDER_IN_from_sum_1_15_port, A(14)
                           => ADDER_IN_from_sum_1_14_port, A(13) => 
                           ADDER_IN_from_sum_1_13_port, A(12) => 
                           ADDER_IN_from_sum_1_12_port, A(11) => 
                           ADDER_IN_from_sum_1_11_port, A(10) => 
                           ADDER_IN_from_sum_1_10_port, A(9) => 
                           ADDER_IN_from_sum_1_9_port, A(8) => 
                           ADDER_IN_from_sum_1_8_port, A(7) => 
                           ADDER_IN_from_sum_1_7_port, A(6) => 
                           ADDER_IN_from_sum_1_6_port, A(5) => 
                           ADDER_IN_from_sum_1_5_port, A(4) => 
                           ADDER_IN_from_sum_1_4_port, A(3) => 
                           ADDER_IN_from_sum_1_3_port, A(2) => 
                           ADDER_IN_from_sum_1_2_port, A(1) => 
                           ADDER_IN_from_sum_1_1_port, A(0) => 
                           ADDER_IN_from_sum_1_0_port, B(15) => 
                           ADDER_IN_from_mux_3_15_port, B(14) => 
                           ADDER_IN_from_mux_3_14_port, B(13) => 
                           ADDER_IN_from_mux_3_13_port, B(12) => 
                           ADDER_IN_from_mux_3_12_port, B(11) => 
                           ADDER_IN_from_mux_3_11_port, B(10) => 
                           ADDER_IN_from_mux_3_10_port, B(9) => 
                           ADDER_IN_from_mux_3_9_port, B(8) => 
                           ADDER_IN_from_mux_3_8_port, B(7) => 
                           ADDER_IN_from_mux_3_7_port, B(6) => 
                           ADDER_IN_from_mux_3_6_port, B(5) => 
                           ADDER_IN_from_mux_3_5_port, B(4) => 
                           ADDER_IN_from_mux_3_4_port, B(3) => 
                           ADDER_IN_from_mux_3_3_port, B(2) => 
                           ADDER_IN_from_mux_3_2_port, B(1) => 
                           ADDER_IN_from_mux_3_1_port, B(0) => 
                           ADDER_IN_from_mux_3_0_port, S(15) => MUL_OUT(15), 
                           S(14) => MUL_OUT(14), S(13) => MUL_OUT(13), S(12) =>
                           MUL_OUT(12), S(11) => MUL_OUT(11), S(10) => 
                           MUL_OUT(10), S(9) => MUL_OUT(9), S(8) => MUL_OUT(8),
                           S(7) => MUL_OUT(7), S(6) => MUL_OUT(6), S(5) => 
                           MUL_OUT(5), S(4) => MUL_OUT(4), S(3) => MUL_OUT(3), 
                           S(2) => MUL_OUT(2), S(1) => MUL_OUT(1), S(0) => 
                           MUL_OUT(0), Co => n_1017);

end SYN_STRUCTURAL;
