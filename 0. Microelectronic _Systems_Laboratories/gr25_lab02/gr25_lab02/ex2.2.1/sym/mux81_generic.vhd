library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;
use work.constants.all;

entity MUX81_GENERIC is
GENERIC (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			C:	In	std_logic_vector(NBIT-1 downto 0);
			D:	In	std_logic_vector(NBIT-1 downto 0);
			E:	In	std_logic_vector(NBIT-1 downto 0);
			F:	In	std_logic_vector(NBIT-1 downto 0);
			G:	In	std_logic_vector(NBIT-1 downto 0);
			H:	In	std_logic_vector(NBIT-1 downto 0);
			SEL:	In	std_logic_vector(2 downto 0);
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end MUX81_GENERIC;
 
architecture BEHAVIORAL of MUX81_GENERIC is

begin
	process (SEL)
	begin
		case SEL is 
			when "000" => Y <= A;
			when "001" => Y <= B;
			when "010" => Y <= C;
			when "011" => Y <= D;-- cannot recieve this input from the booth_encoder
			when "100" => Y <= E;
			when "101" => Y <= F;-- cannot recieve this input from the booth_encoder
			when "110" => Y <= G;
			when "111" => Y <= H;-- cannot recieve this input from the booth_encoder
			when others=> null;
		end case;
	end process;
end BEHAVIORAL;


