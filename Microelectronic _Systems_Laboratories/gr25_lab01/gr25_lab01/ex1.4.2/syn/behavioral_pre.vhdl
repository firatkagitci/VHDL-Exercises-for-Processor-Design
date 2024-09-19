
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_RCA_NBIT7 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_RCA_NBIT7;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_RCA_NBIT7.all;

entity RCA_NBIT7 is

   port( A, B : in std_logic_vector (6 downto 0);  Ci : in std_logic;  S : out 
         std_logic_vector (6 downto 0);  Co : out std_logic);

end RCA_NBIT7;

architecture SYN_BEHAVIORAL of RCA_NBIT7 is

signal A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, A_0_port, 
   B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, B_0_port, 
   Ci_port, S_6_port, S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, 
   S_0_port, Co_port, N0, N1, N2, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, 
   N13, N14, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006 : std_logic
   ;

begin
   ( A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, A_0_port ) <= 
      A;
   ( B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, B_0_port ) <= 
      B;
   Ci_port <= Ci;
   S <= ( S_6_port, S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, S_0_port 
      );
   Co <= Co_port;
   
   add_57 : process ( A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
         A_1_port, A_0_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, 
         B_1_port, B_0_port )
      variable A : UNSIGNED( 6 downto 0 );
      variable B : UNSIGNED( 6 downto 0 );
      variable Z : UNSIGNED( 6 downto 0 );
   begin
      A := ( A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, 
            A_0_port );
      B := ( B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, 
            B_0_port );
      Z := A + B;
      ( N14, N13, N12, N11, N10, N9, N8 ) <= Z;
   end process;
   
   add_57_2 : process ( N14, N13, N12, N11, N10, N9, N8, Ci_port )
      variable A : UNSIGNED( 6 downto 0 );
      variable B : UNSIGNED( 6 downto 0 );
      variable Z : UNSIGNED( 6 downto 0 );
   begin
      A := ( N14, N13, N12, N11, N10, N9, N8 );
      B := ( '0', '0', '0', '0', '0', '0', Ci_port );
      Z := A + B;
      ( S_6_port, S_5_port, S_4_port, S_3_port, S_2_port, S_1_port, S_0_port ) 
            <= Z;
   end process;
   
   add_56 : process ( A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, 
         A_1_port, A_0_port, B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, 
         B_1_port, B_0_port )
      variable A : UNSIGNED( 7 downto 0 );
      variable B : UNSIGNED( 7 downto 0 );
      variable Z : UNSIGNED( 7 downto 0 );
   begin
      A := ( '0', A_6_port, A_5_port, A_4_port, A_3_port, A_2_port, A_1_port, 
            A_0_port );
      B := ( '0', B_6_port, B_5_port, B_4_port, B_3_port, B_2_port, B_1_port, 
            B_0_port );
      Z := A + B;
      ( N7, N6, N5, N4, N3, N2, N1, N0 ) <= Z;
   end process;
   
   add_56_2 : process ( N7, N6, N5, N4, N3, N2, N1, N0, Ci_port )
      variable A : UNSIGNED( 7 downto 0 );
      variable B : UNSIGNED( 7 downto 0 );
      variable Z : UNSIGNED( 7 downto 0 );
   begin
      A := ( N7, N6, N5, N4, N3, N2, N1, N0 );
      B := ( '0', '0', '0', '0', '0', '0', '0', Ci_port );
      Z := A + B;
      ( Co_port, n_1000, n_1001, n_1002, n_1003, n_1004, n_1005, n_1006 ) <= Z;
   end process;
   

end SYN_BEHAVIORAL;
