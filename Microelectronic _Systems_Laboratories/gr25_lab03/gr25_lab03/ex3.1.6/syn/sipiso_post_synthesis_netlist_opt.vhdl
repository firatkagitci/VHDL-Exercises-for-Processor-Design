
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_SIPISOALU is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_SIPISOALU;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity sipisoAluControl is

   port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
         shiftC, startC : out std_logic);

end sipisoAluControl;

architecture SYN_FSM_OPC of sipisoAluControl is

   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component AND3_X2
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X3
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR4_X1
      port( A1, A2, A3, A4 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component INV_X2
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   signal NEXT_STATE_4_port, NEXT_STATE_2_port, n2, net4479, net4478, net4482, 
      net4481, net4485, n1, n5, net8090, net8095, net8113, net8118, net8190, 
      net8186, net8216, net8215, net8230, net8329, net8343, net8353, net8358, 
      n89, n91, n96, n99, n103, n104, n105, n109, n112, n115, n117, n118, n120,
      n121, n122, n123, n134, n136, net9161, net9163, net9165, net8214, n86, 
      net9151, n108, n106, net8337, net8228, n60, n114, n97, n88, n129, n113, 
      n110, n107, net8345, n95, n93, n87, n32, n111, n102, n101, net9687, 
      net9158, net8356, net8319, net8176, net8089, n94, n90, n17, n135, n132, 
      n131, n130, n127, n126, n125, n124, net8348, net8219, n137, n138, n139, 
      n140, n141, n142, n143, n144 : std_logic;

begin
   startC <= net8353;
   
   U20 : NAND2_X1 port map( A1 => n123, A2 => n91, ZN => n2);
   U24 : INV_X1 port map( A => net8358, ZN => net8343);
   U25 : INV_X2 port map( A => n89, ZN => loadB);
   U41 : INV_X1 port map( A => n118, ZN => n104);
   U42 : INV_X1 port map( A => n117, ZN => n105);
   U44 : INV_X1 port map( A => rst, ZN => n1);
   U51 : NOR2_X1 port map( A1 => net9161, A2 => n99, ZN => n122);
   U56 : INV_X1 port map( A => net9163, ZN => n120);
   U58 : NOR2_X1 port map( A1 => n120, A2 => n115, ZN => shiftA);
   U64 : AOI21_X1 port map( B1 => net8230, B2 => net8329, A => n97, ZN => n109)
                           ;
   U65 : NAND2_X1 port map( A1 => net8095, A2 => net8230, ZN => net8118);
   U78 : INV_X1 port map( A => net8118, ZN => net8090);
   U88 : INV_X1 port map( A => n136, ZN => n5);
   CURRENT_STATE_reg_2_inst : DFFR_X1 port map( D => NEXT_STATE_2_port, CK => 
                           clk, RN => n1, Q => net8215, QN => net4485);
   CURRENT_STATE_reg_4_inst : DFFR_X1 port map( D => NEXT_STATE_4_port, CK => 
                           clk, RN => n1, Q => net8190, QN => net4482);
   CURRENT_STATE_reg_1_inst : DFFR_X1 port map( D => n2, CK => clk, RN => n1, Q
                           => net8230, QN => net4479);
   CURRENT_STATE_reg_0_inst : DFFR_X1 port map( D => n103, CK => clk, RN => n1,
                           Q => net4478, QN => net8186);
   CURRENT_STATE_reg_3_inst : DFFR_X1 port map( D => n5, CK => clk, RN => n1, Q
                           => net8216, QN => net4481);
   U11 : NOR3_X1 port map( A1 => net8190, A2 => net4478, A3 => net4481, ZN => 
                           net8095);
   U72 : NAND2_X1 port map( A1 => n112, A2 => net9151, ZN => n121);
   U53 : NAND2_X1 port map( A1 => net4485, A2 => net4481, ZN => n108);
   U57 : NAND2_X1 port map( A1 => n144, A2 => net4482, ZN => n115);
   U27 : INV_X1 port map( A => net4482, ZN => net8337);
   U62 : NOR2_X1 port map( A1 => net4485, A2 => net8337, ZN => n60);
   U45 : CLKBUF_X1 port map( A => net4481, Z => net8228);
   U55 : NAND2_X1 port map( A1 => n60, A2 => net8228, ZN => n114);
   U67 : INV_X1 port map( A => strobeA, ZN => n110);
   U73 : INV_X1 port map( A => n121, ZN => n113);
   U38 : OAI21_X1 port map( B1 => n97, B2 => n137, A => n88, ZN => n96);
   U15 : OAI21_X1 port map( B1 => n134, B2 => net8329, A => n113, ZN => n88);
   U59 : INV_X1 port map( A => strobeB, ZN => n107);
   U36 : INV_X1 port map( A => n129, ZN => n97);
   U60 : NAND2_X1 port map( A1 => strobeA, A2 => n107, ZN => n129);
   U34 : NAND2_X1 port map( A1 => n141, A2 => n95, ZN => n99);
   U71 : AOI22_X1 port map( A1 => n111, A2 => net8095, B1 => n102, B2 => n93, 
                           ZN => n112);
   U49 : NOR2_X1 port map( A1 => n108, A2 => net8190, ZN => n102);
   U13 : NOR2_X1 port map( A1 => net8345, A2 => net8329, ZN => n87);
   U23 : OR2_X1 port map( A1 => n114, A2 => net8345, ZN => n134);
   U22 : CLKBUF_X1 port map( A => net4479, Z => net8345);
   U63 : NOR2_X1 port map( A1 => net8345, A2 => net8329, ZN => n32);
   U17 : INV_X1 port map( A => net9687, ZN => net8089);
   U5 : OAI21_X1 port map( B1 => net8176, B2 => net8214, A => net9151, ZN => 
                           shiftC);
   U6 : AOI21_X1 port map( B1 => net8089, B2 => net8176, A => net8090, ZN => 
                           net8113);
   U4 : INV_X1 port map( A => net8230, ZN => net8176);
   U32 : CLKBUF_X1 port map( A => n102, Z => n94);
   U66 : OAI21_X1 port map( B1 => n109, B2 => n127, A => net8118, ZN => n118);
   U77 : NOR4_X1 port map( A1 => n127, A2 => n120, A3 => n97, A4 => n87, ZN => 
                           n124);
   U50 : INV_X1 port map( A => n94, ZN => n127);
   U31 : NOR2_X1 port map( A1 => net8214, A2 => n17, ZN => NEXT_STATE_4_port);
   U40 : INV_X1 port map( A => n87, ZN => n17);
   U82 : INV_X1 port map( A => n101, ZN => n126);
   U83 : OAI21_X1 port map( B1 => n127, B2 => n17, A => n126, ZN => n130);
   U84 : AOI22_X1 port map( A1 => n130, A2 => n129, B1 => n88, B2 => n137, ZN 
                           => n131);
   U86 : AOI21_X1 port map( B1 => n134, B2 => net9158, A => n137, ZN => n135);
   U80 : OAI21_X1 port map( B1 => n137, B2 => net9687, A => n90, ZN => n125);
   U21 : NOR2_X1 port map( A1 => n124, A2 => net8319, ZN => n91);
   U87 : NOR4_X1 port map( A1 => net8319, A2 => n135, A3 => net8090, A4 => 
                           net8343, ZN => n136);
   U33 : CLKBUF_X1 port map( A => net8353, Z => net8319);
   U81 : AOI21_X1 port map( B1 => n125, B2 => net8230, A => net8319, ZN => n132
                           );
   U85 : NAND2_X1 port map( A1 => n131, A2 => n132, ZN => NEXT_STATE_2_port);
   U54 : NAND2_X1 port map( A1 => net8186, A2 => net4479, ZN => n106);
   U70 : NOR2_X1 port map( A1 => net8230, A2 => net8215, ZN => n111);
   U35 : OR2_X1 port map( A1 => net8348, A2 => net8219, ZN => n95);
   U19 : OR2_X1 port map( A1 => net9158, A2 => net8219, ZN => n90);
   U47 : INV_X1 port map( A => net9165, ZN => net8219);
   U3 : CLKBUF_X3 port map( A => net8186, Z => net8329);
   U7 : OR3_X2 port map( A1 => n115, A2 => net8228, A3 => net8329, ZN => 
                           net9687);
   U8 : BUF_X1 port map( A => net8348, Z => net9158);
   U9 : BUF_X1 port map( A => net4482, Z => n142);
   U10 : AND2_X1 port map( A1 => strobeB, A2 => n110, ZN => n137);
   U12 : NOR2_X1 port map( A1 => net8337, A2 => net8219, ZN => n138);
   U14 : NAND2_X1 port map( A1 => n138, A2 => n139, ZN => n89);
   U16 : AND2_X1 port map( A1 => n140, A2 => net8228, ZN => n139);
   U18 : INV_X1 port map( A => net8345, ZN => n140);
   U26 : CLKBUF_X1 port map( A => n114, Z => n141);
   U28 : NAND2_X1 port map( A1 => net4481, A2 => net4485, ZN => n143);
   U29 : INV_X1 port map( A => net8215, ZN => n144);
   U30 : OAI22_X1 port map( A1 => net8219, A2 => net8348, B1 => n32, B2 => n114
                           , ZN => n101);
   U37 : NAND3_X1 port map( A1 => net8216, A2 => n142, A3 => net8329, ZN => 
                           net8348);
   U39 : NAND3_X1 port map( A1 => n142, A2 => net8216, A3 => net8215, ZN => 
                           net8214);
   U43 : AND3_X1 port map( A1 => net9165, A2 => net4482, A3 => net8216, ZN => 
                           n86);
   U46 : AND3_X1 port map( A1 => n86, A2 => net8356, A3 => net8176, ZN => 
                           net8353);
   U48 : AND3_X2 port map( A1 => n86, A2 => net8356, A3 => net8176, ZN => loadC
                           );
   U52 : BUF_X1 port map( A => net4478, Z => net8356);
   U61 : MUX2_X1 port map( A => n101, B => net8343, S => n137, Z => n117);
   U68 : AND2_X1 port map( A1 => net8186, A2 => net4479, ZN => n93);
   U69 : OR3_X1 port map( A1 => n115, A2 => net8228, A3 => net8329, ZN => 
                           net8358);
   U74 : OR3_X2 port map( A1 => n143, A2 => n106, A3 => net4482, ZN => net9151)
                           ;
   U75 : CLKBUF_X1 port map( A => n106, Z => net9163);
   U76 : INV_X1 port map( A => net4485, ZN => net9165);
   U79 : CLKBUF_X1 port map( A => n121, Z => net9161);
   U89 : NAND3_X1 port map( A1 => n96, A2 => n104, A3 => n105, ZN => n103);
   U90 : MUX2_X1 port map( A => net8113, B => n122, S => n137, Z => n123);

end SYN_FSM_OPC;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_SIPISOALU.all;

entity SIPISOALU is

   port( CLK, RESET, STARTA, A, LOADB : in std_logic;  B : in std_logic_vector 
         (3 downto 0);  STARTC, C : out std_logic);

end SIPISOALU;

architecture SYN_A of SIPISOALU is

   component NAND3_X1
      port( A1, A2, A3 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OAI211_X1
      port( C1, C2, A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component MUX2_X1
      port( A, B, S : in std_logic;  Z : out std_logic);
   end component;
   
   component OAI21_X1
      port( B1, B2, A : in std_logic;  ZN : out std_logic);
   end component;
   
   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component AND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component BUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component NAND2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component OR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component NOR2_X1
      port( A1, A2 : in std_logic;  ZN : out std_logic);
   end component;
   
   component CLKBUF_X1
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   component sipisoAluControl
      port( clk, rst, strobeA, strobeB : in std_logic;  shiftA, loadB, loadC, 
            shiftC, startC : out std_logic);
   end component;
   
   component XOR2_X1
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component XNOR2_X1
      port( A, B : in std_logic;  ZN : out std_logic);
   end component;
   
   component FA_X1
      port( A, B, CI : in std_logic;  CO, S : out std_logic);
   end component;
   
   component AOI22_X1
      port( A1, A2, B1, B2 : in std_logic;  ZN : out std_logic);
   end component;
   
   signal STARTC_port, C_port, EA, LDB, SHIFTC, n44, n45, n46, n47, n48, n49, 
      n50, n51, n52, n53, n54, n80, n151, n154, n156, n159, n160, n231, n235, 
      n236, n237, n238, n239, n242, n243, n244, n245, n246, n247, n248, n251, 
      n253, n254, net8144, net8151, net8152, net8154, net8156, net8158, net8164
      , net8206, net8204, net8239, net8243, net8315, net8331, net8166, net8165,
      net8162, net8161, n241, n268, n269, n271, n272, n273, n274, n275, n276, 
      n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n_1000, 
      n_1001, n_1002, n_1003, n_1004 : std_logic;

begin
   STARTC <= STARTC_port;
   C <= C_port;
   
   U153 : OAI21_X1 port map( B1 => n151, B2 => EA, A => n242, ZN => n53);
   U155 : OAI21_X1 port map( B1 => EA, B2 => n235, A => n243, ZN => n52);
   U156 : NAND2_X1 port map( A1 => EA, A2 => n236, ZN => n243);
   U157 : OAI21_X1 port map( B1 => LDB, B2 => n237, A => n244, ZN => n51);
   U158 : NAND2_X1 port map( A1 => LDB, A2 => B(3), ZN => n244);
   U159 : OAI21_X1 port map( B1 => n154, B2 => LDB, A => n245, ZN => n50);
   U160 : NAND2_X1 port map( A1 => B(2), A2 => LDB, ZN => n245);
   U161 : OAI21_X1 port map( B1 => net8315, B2 => LDB, A => n246, ZN => n49);
   U162 : NAND2_X1 port map( A1 => B(1), A2 => LDB, ZN => n246);
   U163 : OAI21_X1 port map( B1 => LDB, B2 => n239, A => n247, ZN => n48);
   U164 : NAND2_X1 port map( A1 => B(0), A2 => LDB, ZN => n247);
   U169 : AOI22_X1 port map( A1 => n253, A2 => n238, B1 => n254, B2 => n236, ZN
                           => n251);
   U170 : OR2_X1 port map( A1 => n254, A2 => n236, ZN => n253);
   U154 : NAND2_X1 port map( A1 => EA, A2 => net8239, ZN => n242);
   U152 : NAND2_X1 port map( A1 => EA, A2 => A, ZN => n241);
   U151 : OAI21_X1 port map( B1 => n272, B2 => EA, A => n241, ZN => n54);
   U189 : NAND2_X1 port map( A1 => net8161, A2 => net8162, ZN => n45);
   U190 : NAND2_X1 port map( A1 => n284, A2 => net8164, ZN => net8162);
   U194 : FA_X1 port map( A => n272, B => n80, CI => n271, CO => n_1000, S => 
                           net8166);
   U195 : NOR2_X1 port map( A1 => net8206, A2 => n269, ZN => n271);
   U196 : INV_X1 port map( A => A, ZN => n269);
   U197 : NOR2_X1 port map( A1 => net8206, A2 => n269, ZN => net8204);
   U199 : OAI21_X1 port map( B1 => n272, B2 => net8315, A => n268, ZN => n254);
   U202 : INV_X1 port map( A => STARTC_port, ZN => net8156);
   U204 : OAI21_X1 port map( B1 => n80, B2 => net8239, A => net8204, ZN => n268
                           );
   U211 : XOR2_X1 port map( A => n154, B => n151, Z => n273);
   U212 : XOR2_X1 port map( A => net8151, B => n273, Z => n279);
   U215 : INV_X1 port map( A => n156, ZN => n239);
   U219 : INV_X1 port map( A => RESET, ZN => n231);
   U220 : XNOR2_X1 port map( A => n251, B => n274, ZN => n248);
   U221 : XOR2_X1 port map( A => n237, B => n160, Z => n274);
   U222 : INV_X1 port map( A => net8204, ZN => net8158);
   U223 : INV_X1 port map( A => n254, ZN => net8151);
   U224 : INV_X1 port map( A => net8331, ZN => net8144);
   U227 : NAND2_X1 port map( A1 => n284, A2 => n159, ZN => n275);
   U228 : OAI21_X1 port map( B1 => n248, B2 => n280, A => n275, ZN => n47);
   control : sipisoAluControl port map( clk => CLK, rst => RESET, strobeA => 
                           STARTA, strobeB => LOADB, shiftA => EA, loadB => LDB
                           , loadC => net8331, shiftC => SHIFTC, startC => 
                           STARTC_port);
   SIPO_reg_1_inst : DFFR_X1 port map( D => n53, CK => CLK, RN => n231, Q => 
                           n236, QN => n151);
   PISO_reg_2_inst : DFFR_X1 port map( D => n46, CK => CLK, RN => n231, Q => 
                           n286, QN => n282);
   PIPO_reg_1_inst : DFFR_X1 port map( D => n49, CK => CLK, RN => n231, Q => 
                           n80, QN => net8315);
   PIPO_reg_0_inst : DFFR_X1 port map( D => n48, CK => CLK, RN => n231, Q => 
                           n156, QN => net8206);
   SIPO_reg_2_inst : DFFR_X1 port map( D => n52, CK => CLK, RN => n231, Q => 
                           n160, QN => n235);
   PISO_reg_1_inst : DFFR_X1 port map( D => n45, CK => CLK, RN => n231, Q => 
                           net8164, QN => n_1001);
   SIPO_reg_0_inst : DFFR_X1 port map( D => n54, CK => CLK, RN => n231, Q => 
                           net8239, QN => n272);
   PISO_reg_3_inst : DFFR_X1 port map( D => n47, CK => CLK, RN => n231, Q => 
                           n159, QN => n_1002);
   PISO_reg_0_inst : DFFR_X1 port map( D => n44, CK => CLK, RN => n231, Q => 
                           C_port, QN => n_1003);
   PIPO_reg_3_inst : DFFR_X1 port map( D => n51, CK => CLK, RN => n231, Q => 
                           n_1004, QN => n237);
   PIPO_reg_2_inst : DFFR_X1 port map( D => n50, CK => CLK, RN => n231, Q => 
                           n238, QN => n154);
   U191 : CLKBUF_X1 port map( A => net8144, Z => n280);
   U192 : NAND2_X1 port map( A1 => n285, A2 => n281, ZN => n277);
   U193 : NOR2_X1 port map( A1 => net8331, A2 => n282, ZN => n281);
   U198 : OR2_X1 port map( A1 => net8243, A2 => n283, ZN => net8154);
   U200 : NAND2_X1 port map( A1 => net8144, A2 => C_port, ZN => n283);
   U201 : BUF_X1 port map( A => SHIFTC, Z => net8243);
   U203 : AND2_X1 port map( A1 => n285, A2 => net8144, ZN => n284);
   U205 : INV_X1 port map( A => SHIFTC, ZN => n285);
   U206 : OAI21_X1 port map( B1 => net8331, B2 => SHIFTC, A => n286, ZN => 
                           net8165);
   U207 : MUX2_X1 port map( A => net8165, B => net8166, S => STARTC_port, Z => 
                           net8161);
   U208 : NAND3_X1 port map( A1 => net8154, A2 => n276, A3 => net8152, ZN => 
                           n44);
   U209 : NAND3_X1 port map( A1 => net8156, A2 => net8164, A3 => net8243, ZN =>
                           n276);
   U210 : OAI211_X1 port map( C1 => n156, C2 => A, A => net8331, B => net8158, 
                           ZN => net8152);
   U213 : OAI211_X1 port map( C1 => n279, C2 => n280, A => n277, B => n278, ZN 
                           => n46);
   U214 : NAND3_X1 port map( A1 => net8243, A2 => n159, A3 => net8156, ZN => 
                           n278);

end SYN_A;
