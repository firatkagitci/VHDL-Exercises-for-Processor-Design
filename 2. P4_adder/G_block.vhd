library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity G_BLOCK is
	
	port(
	
	Gk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Gij		: out std_logic;
	
	);
	
end G_BLOCK;

architecture BEHAVIORAL of G_BLOCK is
begin

	Gij <= (Gk1j and Pik) or Gik;	


end architecture BEHAVIORAL;