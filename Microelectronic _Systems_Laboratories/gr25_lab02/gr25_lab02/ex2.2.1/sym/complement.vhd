library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;
use IEEE.NUMERIC_STD.all; -- added 

entity complement is
GENERIC (NBIT: integer:= NumBit_encoder);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end complement;
 
architecture BEHAVIORAL of complement is

begin
     Y <= std_logic_vector(unsigned(not(A)) + 1);

end BEHAVIORAL;


