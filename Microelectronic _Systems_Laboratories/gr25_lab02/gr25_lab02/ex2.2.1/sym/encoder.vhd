
library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;


entity encoder is
	Port (	B_triplet:	In	std_logic_vector(2 downto 0);
		in_A_0:		In	std_logic_vector(NBIT downto 0)
		in_A:		In	std_logic_vector(NBIT downto 0)
		in_not_A:	In	std_logic_vector(NBIT downto 0)
		in_2A:		In	std_logic_vector(NBIT downto 0)
		in_not_2A:	In	std_logic_vector(NBIT downto 0)
			Y:	Out	std_logic_vector(NBIT downto 0));
end encoder;
 
architecture BEHAVIORAL of encoder is

begin
	process (A)
	begin
		case A is 
			when "000" => Y <= in_A_0; --mux input 0
			when "001" => Y <= in_A;--mux input A
			when "010" => Y <= in_A;--mux input A
			when "011" => Y <= in_2A;--mux input 2A
			when "100" => Y <= in_not_2A;--mux input -2A
			when "101" => Y <= in_not_A;--mux input -A
			when "110" => Y <= in_not_A;--mux input -A
			when "111" => Y <= in_A_0;--mux input 0
			when others=> null;
		end case;
	end process;
end BEHAVIORAL;


