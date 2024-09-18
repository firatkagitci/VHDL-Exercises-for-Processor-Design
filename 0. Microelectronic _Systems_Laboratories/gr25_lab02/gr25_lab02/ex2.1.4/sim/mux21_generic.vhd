library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;
use work.constants.all;

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


