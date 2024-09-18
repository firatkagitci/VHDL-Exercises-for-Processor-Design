
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_P4_adder_NBIT32 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_P4_adder_NBIT32;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity MUX21_GENERIC_NBIT4 is

   port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : out
         std_logic_vector (3 downto 0));

end MUX21_GENERIC_NBIT4;

architecture SYN_BEHAVIORAL of MUX21_GENERIC_NBIT4 is

   component GTECH_NOT
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_BUF
      port( A : in std_logic;  Z : out std_logic);
   end component;
   
   component SELECT_OP
      generic( num_inputs, input_width : integer );
      port( DATA : in std_logic_vector( num_inputs* input_width - 1 downto 0 );
            CONTROL : in std_logic_vector( num_inputs - 1 downto 0 ); Z : out 
            std_logic_vector( input_width - 1 downto 0 ) );
   end component;
   
   signal N0, N1, A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, B_2_port, 
      B_1_port, B_0_port, Y_3_port, Y_2_port, Y_1_port, Y_0_port, N2 : 
      std_logic;

begin
   ( A_3_port, A_2_port, A_1_port, A_0_port ) <= A;
   ( B_3_port, B_2_port, B_1_port, B_0_port ) <= B;
   Y <= ( Y_3_port, Y_2_port, Y_1_port, Y_0_port );
   
   C15_cell : SELECT_OP
      generic map ( num_inputs => 2, input_width => 4 )
      port map(
         -- Connections to port 'DATA1'
         DATA(3) => A_3_port, DATA(2) => A_2_port, DATA(1) => A_1_port, DATA(0)
               => A_0_port, 
         -- Connections to port 'DATA2'
         DATA(7) => B_3_port, DATA(6) => B_2_port, DATA(5) => B_1_port, DATA(4)
               => B_0_port, 
         -- Connections to port 'CONTROL1'
         CONTROL(0) => N0, 
         -- Connections to port 'CONTROL2'
         CONTROL(1) => N1, 
         -- Connections to port 'Z'
         Z(3) => Y_3_port, Z(2) => Y_2_port, Z(1) => Y_1_port, Z(0) => Y_0_port
               );
   B_0 : GTECH_BUF port map( A => SEL, Z => N0);
   B_1 : GTECH_BUF port map( A => N2, Z => N1);
   I_0 : GTECH_NOT port map( A => SEL, Z => N2);

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity RCA_NBIT4 is

   port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (3 downto 0);  Co : out std_logic);

end RCA_NBIT4;

architecture SYN_BEHAVIORAL of RCA_NBIT4 is

signal A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, B_2_port, B_1_port, 
   B_0_port, Ci_port, S_3_port, S_2_port, S_1_port, S_0_port, Co_port, N0, N1, 
   N2, N3, N4, N5, N6, N7, N8, n_1000, n_1001, n_1002, n_1003 : std_logic;

begin
   ( A_3_port, A_2_port, A_1_port, A_0_port ) <= A;
   ( B_3_port, B_2_port, B_1_port, B_0_port ) <= B;
   Ci_port <= Ci;
   S <= ( S_3_port, S_2_port, S_1_port, S_0_port );
   Co <= Co_port;
   
   add_23 : process ( A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, 
         B_2_port, B_1_port, B_0_port )
      variable A : UNSIGNED( 3 downto 0 );
      variable B : UNSIGNED( 3 downto 0 );
      variable Z : UNSIGNED( 3 downto 0 );
   begin
      A := ( A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( B_3_port, B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( N8, N7, N6, N5 ) <= Z;
   end process;
   
   add_23_2 : process ( N8, N7, N6, N5, Ci_port )
      variable A : UNSIGNED( 3 downto 0 );
      variable B : UNSIGNED( 3 downto 0 );
      variable Z : UNSIGNED( 3 downto 0 );
   begin
      A := ( N8, N7, N6, N5 );
      B := ( '0', '0', '0', Ci_port );
      Z := A + B;
      ( S_3_port, S_2_port, S_1_port, S_0_port ) <= Z;
   end process;
   
   add_22 : process ( A_3_port, A_2_port, A_1_port, A_0_port, B_3_port, 
         B_2_port, B_1_port, B_0_port )
      variable A : UNSIGNED( 4 downto 0 );
      variable B : UNSIGNED( 4 downto 0 );
      variable Z : UNSIGNED( 4 downto 0 );
   begin
      A := ( '0', A_3_port, A_2_port, A_1_port, A_0_port );
      B := ( '0', B_3_port, B_2_port, B_1_port, B_0_port );
      Z := A + B;
      ( N4, N3, N2, N1, N0 ) <= Z;
   end process;
   
   add_22_2 : process ( N4, N3, N2, N1, N0, Ci_port )
      variable A : UNSIGNED( 4 downto 0 );
      variable B : UNSIGNED( 4 downto 0 );
      variable Z : UNSIGNED( 4 downto 0 );
   begin
      A := ( N4, N3, N2, N1, N0 );
      B := ( '0', '0', '0', '0', Ci_port );
      Z := A + B;
      ( Co_port, n_1000, n_1001, n_1002, n_1003 ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity carry_select_block_NBIT4 is

   port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
         std_logic;  SUM : out std_logic_vector (3 downto 0));

end carry_select_block_NBIT4;

architecture SYN_STRUCTURAL of carry_select_block_NBIT4 is

   component MUX21_GENERIC_NBIT4
      port( A, B : in std_logic_vector (3 downto 0);  SEL : in std_logic;  Y : 
            out std_logic_vector (3 downto 0));
   end component;
   
   component RCA_NBIT4
      port( A, B : in std_logic_vector (3 downto 0);  Ci : in std_logic;  S : 
            out std_logic_vector (3 downto 0);  Co : out std_logic);
   end component;
   
   signal X_Logic1_port, X_Logic0_port, SUM_0_3_port, SUM_0_2_port, 
      SUM_0_1_port, SUM_0_0_port, SUM_1_3_port, SUM_1_2_port, SUM_1_1_port, 
      SUM_1_0_port, n_1004, n_1005 : std_logic;

begin
   
   ADDER_one : RCA_NBIT4 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), A(1)
                           => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic0_port, S(3) => 
                           SUM_0_3_port, S(2) => SUM_0_2_port, S(1) => 
                           SUM_0_1_port, S(0) => SUM_0_0_port, Co => n_1004);
   ADDER_two : RCA_NBIT4 port map( A(3) => INPUT_1(3), A(2) => INPUT_1(2), A(1)
                           => INPUT_1(1), A(0) => INPUT_1(0), B(3) => 
                           INPUT_2(3), B(2) => INPUT_2(2), B(1) => INPUT_2(1), 
                           B(0) => INPUT_2(0), Ci => X_Logic1_port, S(3) => 
                           SUM_1_3_port, S(2) => SUM_1_2_port, S(1) => 
                           SUM_1_1_port, S(0) => SUM_1_0_port, Co => n_1005);
   MUX : MUX21_GENERIC_NBIT4 port map( A(3) => SUM_1_3_port, A(2) => 
                           SUM_1_2_port, A(1) => SUM_1_1_port, A(0) => 
                           SUM_1_0_port, B(3) => SUM_0_3_port, B(2) => 
                           SUM_0_2_port, B(1) => SUM_0_1_port, B(0) => 
                           SUM_0_0_port, SEL => Ci_sel, Y(3) => SUM(3), Y(2) =>
                           SUM(2), Y(1) => SUM(1), Y(0) => SUM(0));
   X_Logic1_port <= '1';
   X_Logic0_port <= '0';

end SYN_STRUCTURAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity PG_block is

   port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
         std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);

end PG_block;

architecture SYN_BEHAVIORAL of PG_block is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0 : std_logic;

begin
   
   C8 : GTECH_AND2 port map( A => PG_IN_second_P, B => PG_IN_first_P, Z => 
                           PG_OUT_PG);
   C9 : GTECH_OR2 port map( A => PG_IN_second_G, B => N0, Z => PG_OUT_G);
   C10 : GTECH_AND2 port map( A => PG_IN_second_P, B => PG_IN_first_G, Z => N0)
                           ;

end SYN_BEHAVIORAL;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_P4_adder_NBIT32.all;

entity G_block is

   port( PG_IN_1, PG_IN_2, G_IN : in std_logic;  G_OUT : out std_logic);

end G_block;

architecture SYN_BEHAVIORAL of G_block is

   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_OR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   signal N0 : std_logic;

begin
   
   C7 : GTECH_OR2 port map( A => PG_IN_2, B => N0, Z => G_OUT);
   C8 : GTECH_AND2 port map( A => PG_IN_1, B => G_IN, Z => N0);

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

   component carry_select_block_NBIT4
      port( INPUT_1, INPUT_2 : in std_logic_vector (3 downto 0);  Ci_sel : in 
            std_logic;  SUM : out std_logic_vector (3 downto 0));
   end component;

begin
   
   sum_gen_1 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(3), 
                           INPUT_1(2) => ADD_1(2), INPUT_1(1) => ADD_1(1), 
                           INPUT_1(0) => ADD_1(0), INPUT_2(3) => ADD_2(3), 
                           INPUT_2(2) => ADD_2(2), INPUT_2(1) => ADD_2(1), 
                           INPUT_2(0) => ADD_2(0), Ci_sel => Ci(0), SUM(3) => 
                           SUM(3), SUM(2) => SUM(2), SUM(1) => SUM(1), SUM(0) 
                           => SUM(0));
   sum_gen_2 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(7), 
                           INPUT_1(2) => ADD_1(6), INPUT_1(1) => ADD_1(5), 
                           INPUT_1(0) => ADD_1(4), INPUT_2(3) => ADD_2(7), 
                           INPUT_2(2) => ADD_2(6), INPUT_2(1) => ADD_2(5), 
                           INPUT_2(0) => ADD_2(4), Ci_sel => Ci(1), SUM(3) => 
                           SUM(7), SUM(2) => SUM(6), SUM(1) => SUM(5), SUM(0) 
                           => SUM(4));
   sum_gen_3 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(11), 
                           INPUT_1(2) => ADD_1(10), INPUT_1(1) => ADD_1(9), 
                           INPUT_1(0) => ADD_1(8), INPUT_2(3) => ADD_2(11), 
                           INPUT_2(2) => ADD_2(10), INPUT_2(1) => ADD_2(9), 
                           INPUT_2(0) => ADD_2(8), Ci_sel => Ci(2), SUM(3) => 
                           SUM(11), SUM(2) => SUM(10), SUM(1) => SUM(9), SUM(0)
                           => SUM(8));
   sum_gen_4 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(15), 
                           INPUT_1(2) => ADD_1(14), INPUT_1(1) => ADD_1(13), 
                           INPUT_1(0) => ADD_1(12), INPUT_2(3) => ADD_2(15), 
                           INPUT_2(2) => ADD_2(14), INPUT_2(1) => ADD_2(13), 
                           INPUT_2(0) => ADD_2(12), Ci_sel => Ci(3), SUM(3) => 
                           SUM(15), SUM(2) => SUM(14), SUM(1) => SUM(13), 
                           SUM(0) => SUM(12));
   sum_gen_5 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(19), 
                           INPUT_1(2) => ADD_1(18), INPUT_1(1) => ADD_1(17), 
                           INPUT_1(0) => ADD_1(16), INPUT_2(3) => ADD_2(19), 
                           INPUT_2(2) => ADD_2(18), INPUT_2(1) => ADD_2(17), 
                           INPUT_2(0) => ADD_2(16), Ci_sel => Ci(4), SUM(3) => 
                           SUM(19), SUM(2) => SUM(18), SUM(1) => SUM(17), 
                           SUM(0) => SUM(16));
   sum_gen_6 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(23), 
                           INPUT_1(2) => ADD_1(22), INPUT_1(1) => ADD_1(21), 
                           INPUT_1(0) => ADD_1(20), INPUT_2(3) => ADD_2(23), 
                           INPUT_2(2) => ADD_2(22), INPUT_2(1) => ADD_2(21), 
                           INPUT_2(0) => ADD_2(20), Ci_sel => Ci(5), SUM(3) => 
                           SUM(23), SUM(2) => SUM(22), SUM(1) => SUM(21), 
                           SUM(0) => SUM(20));
   sum_gen_7 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(27), 
                           INPUT_1(2) => ADD_1(26), INPUT_1(1) => ADD_1(25), 
                           INPUT_1(0) => ADD_1(24), INPUT_2(3) => ADD_2(27), 
                           INPUT_2(2) => ADD_2(26), INPUT_2(1) => ADD_2(25), 
                           INPUT_2(0) => ADD_2(24), Ci_sel => Ci(6), SUM(3) => 
                           SUM(27), SUM(2) => SUM(26), SUM(1) => SUM(25), 
                           SUM(0) => SUM(24));
   sum_gen_8 : carry_select_block_NBIT4 port map( INPUT_1(3) => ADD_1(31), 
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

   component GTECH_XOR2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component GTECH_AND2
      port( A, B : in std_logic;  Z : out std_logic);
   end component;
   
   component PG_block
      port( PG_IN_first_P, PG_IN_second_P, PG_IN_first_G, PG_IN_second_G : in 
            std_logic;  PG_OUT_G, PG_OUT_PG : out std_logic);
   end component;
   
   component G_block
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
   
   G_block_0 : G_block port map( PG_IN_1 => PG_matrix_0_0_port, PG_IN_2 => 
                           G_matrix_0_0_port, G_IN => Ci_carry_gen, G_OUT => 
                           G_matrix_1_0_port);
   G_block_2_0 : G_block port map( PG_IN_1 => PG_matrix_1_1_port, PG_IN_2 => 
                           G_matrix_1_1_port, G_IN => G_matrix_1_0_port, G_OUT 
                           => G_matrix_2_0_port);
   G_block_3_0 : G_block port map( PG_IN_1 => PG_matrix_3_2_port, PG_IN_2 => 
                           G_matrix_3_2_port, G_IN => G_matrix_2_0_port, G_OUT 
                           => Co_1_port);
   G_block_7_1 : G_block port map( PG_IN_1 => PG_matrix_7_4_port, PG_IN_2 => 
                           G_matrix_7_4_port, G_IN => Co_1_port, G_OUT => 
                           Co_2_port);
   G_block_cycle_2_1 : G_block port map( PG_IN_1 => PG_matrix_11_8_port, 
                           PG_IN_2 => G_matrix_11_8_port, G_IN => Co_2_port, 
                           G_OUT => Co_3_port);
   G_block_cycle_2_2 : G_block port map( PG_IN_1 => PG_matrix_15_8_port, 
                           PG_IN_2 => G_matrix_15_8_port, G_IN => Co_2_port, 
                           G_OUT => Co_4_port);
   G_block_cycle_3_1 : G_block port map( PG_IN_1 => PG_matrix_19_16_port, 
                           PG_IN_2 => G_matrix_19_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_5_port);
   G_block_cycle_3_2 : G_block port map( PG_IN_1 => PG_matrix_23_16_port, 
                           PG_IN_2 => G_matrix_23_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_6_port);
   G_block_cycle_3_3 : G_block port map( PG_IN_1 => PG_matrix_27_16_port, 
                           PG_IN_2 => G_matrix_27_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_7_port);
   G_block_cycle_3_4 : G_block port map( PG_IN_1 => PG_matrix_31_16_port, 
                           PG_IN_2 => G_matrix_31_16_port, G_IN => Co_4_port, 
                           G_OUT => Co_8_port);
   pre_generation_0_1 : PG_block port map( PG_IN_first_P => PG_matrix_2_2_port,
                           PG_IN_second_P => PG_matrix_3_3_port, PG_IN_first_G 
                           => G_matrix_2_2_port, PG_IN_second_G => 
                           G_matrix_3_3_port, PG_OUT_G => G_matrix_3_2_port, 
                           PG_OUT_PG => PG_matrix_3_2_port);
   pre_generation_0_2 : PG_block port map( PG_IN_first_P => PG_matrix_4_4_port,
                           PG_IN_second_P => PG_matrix_5_5_port, PG_IN_first_G 
                           => G_matrix_4_4_port, PG_IN_second_G => 
                           G_matrix_5_5_port, PG_OUT_G => G_matrix_5_4_port, 
                           PG_OUT_PG => PG_matrix_5_4_port);
   pre_generation_0_3 : PG_block port map( PG_IN_first_P => PG_matrix_6_6_port,
                           PG_IN_second_P => PG_matrix_7_7_port, PG_IN_first_G 
                           => G_matrix_6_6_port, PG_IN_second_G => 
                           G_matrix_7_7_port, PG_OUT_G => G_matrix_7_6_port, 
                           PG_OUT_PG => PG_matrix_7_6_port);
   pre_generation_0_4 : PG_block port map( PG_IN_first_P => PG_matrix_8_8_port,
                           PG_IN_second_P => PG_matrix_9_9_port, PG_IN_first_G 
                           => G_matrix_8_8_port, PG_IN_second_G => 
                           G_matrix_9_9_port, PG_OUT_G => G_matrix_9_8_port, 
                           PG_OUT_PG => PG_matrix_9_8_port);
   pre_generation_0_5 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_10_10_port, PG_IN_second_P => 
                           PG_matrix_11_11_port, PG_IN_first_G => 
                           G_matrix_10_10_port, PG_IN_second_G => 
                           G_matrix_11_11_port, PG_OUT_G => G_matrix_11_10_port
                           , PG_OUT_PG => PG_matrix_11_10_port);
   pre_generation_0_6 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_12_12_port, PG_IN_second_P => 
                           PG_matrix_13_13_port, PG_IN_first_G => 
                           G_matrix_12_12_port, PG_IN_second_G => 
                           G_matrix_13_13_port, PG_OUT_G => G_matrix_13_12_port
                           , PG_OUT_PG => PG_matrix_13_12_port);
   pre_generation_0_7 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_14_14_port, PG_IN_second_P => 
                           PG_matrix_15_15_port, PG_IN_first_G => 
                           G_matrix_14_14_port, PG_IN_second_G => 
                           G_matrix_15_15_port, PG_OUT_G => G_matrix_15_14_port
                           , PG_OUT_PG => PG_matrix_15_14_port);
   pre_generation_0_8 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_16_16_port, PG_IN_second_P => 
                           PG_matrix_17_17_port, PG_IN_first_G => 
                           G_matrix_16_16_port, PG_IN_second_G => 
                           G_matrix_17_17_port, PG_OUT_G => G_matrix_17_16_port
                           , PG_OUT_PG => PG_matrix_17_16_port);
   pre_generation_0_9 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_18_18_port, PG_IN_second_P => 
                           PG_matrix_19_19_port, PG_IN_first_G => 
                           G_matrix_18_18_port, PG_IN_second_G => 
                           G_matrix_19_19_port, PG_OUT_G => G_matrix_19_18_port
                           , PG_OUT_PG => PG_matrix_19_18_port);
   pre_generation_0_10 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_20_20_port, PG_IN_second_P => 
                           PG_matrix_21_21_port, PG_IN_first_G => 
                           G_matrix_20_20_port, PG_IN_second_G => 
                           G_matrix_21_21_port, PG_OUT_G => G_matrix_21_20_port
                           , PG_OUT_PG => PG_matrix_21_20_port);
   pre_generation_0_11 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_22_22_port, PG_IN_second_P => 
                           PG_matrix_23_23_port, PG_IN_first_G => 
                           G_matrix_22_22_port, PG_IN_second_G => 
                           G_matrix_23_23_port, PG_OUT_G => G_matrix_23_22_port
                           , PG_OUT_PG => PG_matrix_23_22_port);
   pre_generation_0_12 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_24_24_port, PG_IN_second_P => 
                           PG_matrix_25_25_port, PG_IN_first_G => 
                           G_matrix_24_24_port, PG_IN_second_G => 
                           G_matrix_25_25_port, PG_OUT_G => G_matrix_25_24_port
                           , PG_OUT_PG => PG_matrix_25_24_port);
   pre_generation_0_13 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_26_26_port, PG_IN_second_P => 
                           PG_matrix_27_27_port, PG_IN_first_G => 
                           G_matrix_26_26_port, PG_IN_second_G => 
                           G_matrix_27_27_port, PG_OUT_G => G_matrix_27_26_port
                           , PG_OUT_PG => PG_matrix_27_26_port);
   pre_generation_0_14 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_28_28_port, PG_IN_second_P => 
                           PG_matrix_29_29_port, PG_IN_first_G => 
                           G_matrix_28_28_port, PG_IN_second_G => 
                           G_matrix_29_29_port, PG_OUT_G => G_matrix_29_28_port
                           , PG_OUT_PG => PG_matrix_29_28_port);
   pre_generation_0_15 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_30_30_port, PG_IN_second_P => 
                           PG_matrix_31_31_port, PG_IN_first_G => 
                           G_matrix_30_30_port, PG_IN_second_G => 
                           G_matrix_31_31_port, PG_OUT_G => G_matrix_31_30_port
                           , PG_OUT_PG => PG_matrix_31_30_port);
   pre_generation_1_0 : PG_block port map( PG_IN_first_P => PG_matrix_5_4_port,
                           PG_IN_second_P => PG_matrix_7_6_port, PG_IN_first_G 
                           => G_matrix_5_4_port, PG_IN_second_G => 
                           G_matrix_7_6_port, PG_OUT_G => G_matrix_7_4_port, 
                           PG_OUT_PG => PG_matrix_7_4_port);
   pre_generation_1_1 : PG_block port map( PG_IN_first_P => PG_matrix_9_8_port,
                           PG_IN_second_P => PG_matrix_11_10_port, 
                           PG_IN_first_G => G_matrix_9_8_port, PG_IN_second_G 
                           => G_matrix_11_10_port, PG_OUT_G => 
                           G_matrix_11_8_port, PG_OUT_PG => PG_matrix_11_8_port
                           );
   pre_generation_1_2 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_13_12_port, PG_IN_second_P => 
                           PG_matrix_15_14_port, PG_IN_first_G => 
                           G_matrix_13_12_port, PG_IN_second_G => 
                           G_matrix_15_14_port, PG_OUT_G => G_matrix_15_12_port
                           , PG_OUT_PG => PG_matrix_15_12_port);
   pre_generation_1_3 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_17_16_port, PG_IN_second_P => 
                           PG_matrix_19_18_port, PG_IN_first_G => 
                           G_matrix_17_16_port, PG_IN_second_G => 
                           G_matrix_19_18_port, PG_OUT_G => G_matrix_19_16_port
                           , PG_OUT_PG => PG_matrix_19_16_port);
   pre_generation_1_4 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_21_20_port, PG_IN_second_P => 
                           PG_matrix_23_22_port, PG_IN_first_G => 
                           G_matrix_21_20_port, PG_IN_second_G => 
                           G_matrix_23_22_port, PG_OUT_G => G_matrix_23_20_port
                           , PG_OUT_PG => PG_matrix_23_20_port);
   pre_generation_1_5 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_25_24_port, PG_IN_second_P => 
                           PG_matrix_27_26_port, PG_IN_first_G => 
                           G_matrix_25_24_port, PG_IN_second_G => 
                           G_matrix_27_26_port, PG_OUT_G => G_matrix_27_24_port
                           , PG_OUT_PG => PG_matrix_27_24_port);
   pre_generation_1_6 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_29_28_port, PG_IN_second_P => 
                           PG_matrix_31_30_port, PG_IN_first_G => 
                           G_matrix_29_28_port, PG_IN_second_G => 
                           G_matrix_31_30_port, PG_OUT_G => G_matrix_31_28_port
                           , PG_OUT_PG => PG_matrix_31_28_port);
   gen_2_0_0 : PG_block port map( PG_IN_first_P => PG_matrix_11_8_port, 
                           PG_IN_second_P => PG_matrix_15_12_port, 
                           PG_IN_first_G => G_matrix_11_8_port, PG_IN_second_G 
                           => G_matrix_15_12_port, PG_OUT_G => 
                           G_matrix_15_8_port, PG_OUT_PG => PG_matrix_15_8_port
                           );
   gen_2_0_1 : PG_block port map( PG_IN_first_P => PG_matrix_19_16_port, 
                           PG_IN_second_P => PG_matrix_23_20_port, 
                           PG_IN_first_G => G_matrix_19_16_port, PG_IN_second_G
                           => G_matrix_23_20_port, PG_OUT_G => 
                           G_matrix_23_16_port, PG_OUT_PG => 
                           PG_matrix_23_16_port);
   gen_2_0_2 : PG_block port map( PG_IN_first_P => PG_matrix_27_24_port, 
                           PG_IN_second_P => PG_matrix_31_28_port, 
                           PG_IN_first_G => G_matrix_27_24_port, PG_IN_second_G
                           => G_matrix_31_28_port, PG_OUT_G => 
                           G_matrix_31_24_port, PG_OUT_PG => 
                           PG_matrix_31_24_port);
   PG_block_cycle_1_1_1 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_23_16_port, PG_IN_second_P => 
                           PG_matrix_27_24_port, PG_IN_first_G => 
                           G_matrix_23_16_port, PG_IN_second_G => 
                           G_matrix_27_24_port, PG_OUT_G => G_matrix_27_16_port
                           , PG_OUT_PG => PG_matrix_27_16_port);
   PG_block_cycle_1_1_2 : PG_block port map( PG_IN_first_P => 
                           PG_matrix_23_16_port, PG_IN_second_P => 
                           PG_matrix_31_24_port, PG_IN_first_G => 
                           G_matrix_23_16_port, PG_IN_second_G => 
                           G_matrix_31_24_port, PG_OUT_G => G_matrix_31_16_port
                           , PG_OUT_PG => PG_matrix_31_16_port);
   C70 : GTECH_AND2 port map( A => ADD_1(0), B => ADD_2(0), Z => 
                           G_matrix_0_0_port);
   C71 : GTECH_XOR2 port map( A => ADD_1(0), B => ADD_2(0), Z => 
                           PG_matrix_0_0_port);
   C72 : GTECH_AND2 port map( A => ADD_1(1), B => ADD_2(1), Z => 
                           G_matrix_1_1_port);
   C73 : GTECH_XOR2 port map( A => ADD_1(1), B => ADD_2(1), Z => 
                           PG_matrix_1_1_port);
   C74 : GTECH_AND2 port map( A => ADD_1(2), B => ADD_2(2), Z => 
                           G_matrix_2_2_port);
   C75 : GTECH_XOR2 port map( A => ADD_1(2), B => ADD_2(2), Z => 
                           PG_matrix_2_2_port);
   C76 : GTECH_AND2 port map( A => ADD_1(3), B => ADD_2(3), Z => 
                           G_matrix_3_3_port);
   C77 : GTECH_XOR2 port map( A => ADD_1(3), B => ADD_2(3), Z => 
                           PG_matrix_3_3_port);
   C78 : GTECH_AND2 port map( A => ADD_1(4), B => ADD_2(4), Z => 
                           G_matrix_4_4_port);
   C79 : GTECH_XOR2 port map( A => ADD_1(4), B => ADD_2(4), Z => 
                           PG_matrix_4_4_port);
   C80 : GTECH_AND2 port map( A => ADD_1(5), B => ADD_2(5), Z => 
                           G_matrix_5_5_port);
   C81 : GTECH_XOR2 port map( A => ADD_1(5), B => ADD_2(5), Z => 
                           PG_matrix_5_5_port);
   C82 : GTECH_AND2 port map( A => ADD_1(6), B => ADD_2(6), Z => 
                           G_matrix_6_6_port);
   C83 : GTECH_XOR2 port map( A => ADD_1(6), B => ADD_2(6), Z => 
                           PG_matrix_6_6_port);
   C84 : GTECH_AND2 port map( A => ADD_1(7), B => ADD_2(7), Z => 
                           G_matrix_7_7_port);
   C85 : GTECH_XOR2 port map( A => ADD_1(7), B => ADD_2(7), Z => 
                           PG_matrix_7_7_port);
   C86 : GTECH_AND2 port map( A => ADD_1(8), B => ADD_2(8), Z => 
                           G_matrix_8_8_port);
   C87 : GTECH_XOR2 port map( A => ADD_1(8), B => ADD_2(8), Z => 
                           PG_matrix_8_8_port);
   C88 : GTECH_AND2 port map( A => ADD_1(9), B => ADD_2(9), Z => 
                           G_matrix_9_9_port);
   C89 : GTECH_XOR2 port map( A => ADD_1(9), B => ADD_2(9), Z => 
                           PG_matrix_9_9_port);
   C90 : GTECH_AND2 port map( A => ADD_1(10), B => ADD_2(10), Z => 
                           G_matrix_10_10_port);
   C91 : GTECH_XOR2 port map( A => ADD_1(10), B => ADD_2(10), Z => 
                           PG_matrix_10_10_port);
   C92 : GTECH_AND2 port map( A => ADD_1(11), B => ADD_2(11), Z => 
                           G_matrix_11_11_port);
   C93 : GTECH_XOR2 port map( A => ADD_1(11), B => ADD_2(11), Z => 
                           PG_matrix_11_11_port);
   C94 : GTECH_AND2 port map( A => ADD_1(12), B => ADD_2(12), Z => 
                           G_matrix_12_12_port);
   C95 : GTECH_XOR2 port map( A => ADD_1(12), B => ADD_2(12), Z => 
                           PG_matrix_12_12_port);
   C96 : GTECH_AND2 port map( A => ADD_1(13), B => ADD_2(13), Z => 
                           G_matrix_13_13_port);
   C97 : GTECH_XOR2 port map( A => ADD_1(13), B => ADD_2(13), Z => 
                           PG_matrix_13_13_port);
   C98 : GTECH_AND2 port map( A => ADD_1(14), B => ADD_2(14), Z => 
                           G_matrix_14_14_port);
   C99 : GTECH_XOR2 port map( A => ADD_1(14), B => ADD_2(14), Z => 
                           PG_matrix_14_14_port);
   C100 : GTECH_AND2 port map( A => ADD_1(15), B => ADD_2(15), Z => 
                           G_matrix_15_15_port);
   C101 : GTECH_XOR2 port map( A => ADD_1(15), B => ADD_2(15), Z => 
                           PG_matrix_15_15_port);
   C102 : GTECH_AND2 port map( A => ADD_1(16), B => ADD_2(16), Z => 
                           G_matrix_16_16_port);
   C103 : GTECH_XOR2 port map( A => ADD_1(16), B => ADD_2(16), Z => 
                           PG_matrix_16_16_port);
   C104 : GTECH_AND2 port map( A => ADD_1(17), B => ADD_2(17), Z => 
                           G_matrix_17_17_port);
   C105 : GTECH_XOR2 port map( A => ADD_1(17), B => ADD_2(17), Z => 
                           PG_matrix_17_17_port);
   C106 : GTECH_AND2 port map( A => ADD_1(18), B => ADD_2(18), Z => 
                           G_matrix_18_18_port);
   C107 : GTECH_XOR2 port map( A => ADD_1(18), B => ADD_2(18), Z => 
                           PG_matrix_18_18_port);
   C108 : GTECH_AND2 port map( A => ADD_1(19), B => ADD_2(19), Z => 
                           G_matrix_19_19_port);
   C109 : GTECH_XOR2 port map( A => ADD_1(19), B => ADD_2(19), Z => 
                           PG_matrix_19_19_port);
   C110 : GTECH_AND2 port map( A => ADD_1(20), B => ADD_2(20), Z => 
                           G_matrix_20_20_port);
   C111 : GTECH_XOR2 port map( A => ADD_1(20), B => ADD_2(20), Z => 
                           PG_matrix_20_20_port);
   C112 : GTECH_AND2 port map( A => ADD_1(21), B => ADD_2(21), Z => 
                           G_matrix_21_21_port);
   C113 : GTECH_XOR2 port map( A => ADD_1(21), B => ADD_2(21), Z => 
                           PG_matrix_21_21_port);
   C114 : GTECH_AND2 port map( A => ADD_1(22), B => ADD_2(22), Z => 
                           G_matrix_22_22_port);
   C115 : GTECH_XOR2 port map( A => ADD_1(22), B => ADD_2(22), Z => 
                           PG_matrix_22_22_port);
   C116 : GTECH_AND2 port map( A => ADD_1(23), B => ADD_2(23), Z => 
                           G_matrix_23_23_port);
   C117 : GTECH_XOR2 port map( A => ADD_1(23), B => ADD_2(23), Z => 
                           PG_matrix_23_23_port);
   C118 : GTECH_AND2 port map( A => ADD_1(24), B => ADD_2(24), Z => 
                           G_matrix_24_24_port);
   C119 : GTECH_XOR2 port map( A => ADD_1(24), B => ADD_2(24), Z => 
                           PG_matrix_24_24_port);
   C120 : GTECH_AND2 port map( A => ADD_1(25), B => ADD_2(25), Z => 
                           G_matrix_25_25_port);
   C121 : GTECH_XOR2 port map( A => ADD_1(25), B => ADD_2(25), Z => 
                           PG_matrix_25_25_port);
   C122 : GTECH_AND2 port map( A => ADD_1(26), B => ADD_2(26), Z => 
                           G_matrix_26_26_port);
   C123 : GTECH_XOR2 port map( A => ADD_1(26), B => ADD_2(26), Z => 
                           PG_matrix_26_26_port);
   C124 : GTECH_AND2 port map( A => ADD_1(27), B => ADD_2(27), Z => 
                           G_matrix_27_27_port);
   C125 : GTECH_XOR2 port map( A => ADD_1(27), B => ADD_2(27), Z => 
                           PG_matrix_27_27_port);
   C126 : GTECH_AND2 port map( A => ADD_1(28), B => ADD_2(28), Z => 
                           G_matrix_28_28_port);
   C127 : GTECH_XOR2 port map( A => ADD_1(28), B => ADD_2(28), Z => 
                           PG_matrix_28_28_port);
   C128 : GTECH_AND2 port map( A => ADD_1(29), B => ADD_2(29), Z => 
                           G_matrix_29_29_port);
   C129 : GTECH_XOR2 port map( A => ADD_1(29), B => ADD_2(29), Z => 
                           PG_matrix_29_29_port);
   C130 : GTECH_AND2 port map( A => ADD_1(30), B => ADD_2(30), Z => 
                           G_matrix_30_30_port);
   C131 : GTECH_XOR2 port map( A => ADD_1(30), B => ADD_2(30), Z => 
                           PG_matrix_30_30_port);
   C132 : GTECH_AND2 port map( A => ADD_1(31), B => ADD_2(31), Z => 
                           G_matrix_31_31_port);
   C133 : GTECH_XOR2 port map( A => ADD_1(31), B => ADD_2(31), Z => 
                           PG_matrix_31_31_port);

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

library IEEE;

use IEEE.std_logic_1164.all;
entity SELECT_OP is
   generic ( num_inputs, input_width : integer );
   port(
      DATA : in std_logic_vector( num_inputs  * input_width - 1 downto 0 );
      CONTROL : in std_logic_vector( num_inputs - 1 downto 0 );
      Z : out std_logic_vector( input_width - 1 downto 0 )
   );
end SELECT_OP;

architecture RTL of SELECT_OP is
begin

   process ( DATA, CONTROL )
      variable index, high, low : integer;
   begin
   
      --  Initialize variables
      index := 0;
      
      -- Loop over the values of the control inputs
      for_loop : for i in CONTROL'range loop
      
         if ( CONTROL(i) = '1' ) then
         
            index := i;
            exit for_loop;
            
         end if;
         
      end loop;
      
      -- Store the corresponding data lines into the output
      low := input_width * index;
      high := low + input_width - 1;
      Z <= DATA( high downto low );
   
   end process;
   
end RTL;
