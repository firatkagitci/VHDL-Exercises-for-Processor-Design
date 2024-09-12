library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity RCA is 
	generic (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end RCA; 

architecture BEHAVIORAL of RCA is
signal sum : std_logic_vector(NBIT downto 0);
signal ai : std_logic_vector(NBIT downto 0);
signal bi : std_logic_vector(NBIT downto 0);

begin
  ai <= '0' & A;
  bi <= '0' & B;	 
  sum <= (ai + bi);
  S <= (A + B);
  Co <= sum(NBIT);

end BEHAVIORAL;

