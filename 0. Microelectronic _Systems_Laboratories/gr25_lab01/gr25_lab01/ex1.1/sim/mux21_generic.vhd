library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;

entity MUX21_GENERIC is
GENERIC (NBIT: integer:= NumBit;
		DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0) ;
			B:	In	std_logic_vector(NBIT-1 downto 0);
			SEL:	In	std_logic;
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end MUX21_GENERIC;
 
architecture BEHAVIORAL of MUX21_GENERIC is

begin
	Y <= A after DELAY_MUX when SEL='1' else B after DELAY_MUX; -- behavioral of mux21 on n bit

end BEHAVIORAL;


	architecture STRUCTURAL of MUX21_GENERIC is
  		component MUX21
			port (	A:	In	std_logic;
					B:	In	std_logic;
					S:	In	std_logic;
					Y:	Out	std_logic);
	end component;

begin
 gen : for i in 0 to NBIT-1 generate -- generation of n MUXs 2 to 1, each one "mux" one bit from the inputs 
m_i: MUX21 port map
     (A => A(i) , B => B(i), S => SEL, Y => Y(i));
  end generate;
 
end STRUCTURAL;
 
configuration CFG_MUX21_GEN_BEHAVIORAL of MUX21_GENERIC is
	for BEHAVIORAL
	end for;
end CFG_MUX21_GEN_BEHAVIORAL;

configuration CFG_MUX21_GEN_STRUCTURAL of MUX21_GENERIC is
	for STRUCTURAL
	end for;
end CFG_MUX21_GEN_STRUCTURAL;

