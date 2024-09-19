library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity PG_BLOCK is 

	port(

	Gk1j	: in std_logic;
	Pk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Pij		: out std_logic;	
	Gij		: out std_logic
	
	);

end PG_BLOCK;

architecture BEHAVIORAL of PG_BLOCK is
begin
	
	Pij <= Pk1j and Pik;
	
	Gij <= (Gk1j and Pik) or Gik;
	
end architecture BEHAVIORAL;

configuration CFG_PG of PG_BLOCK is 
	for BEHAVIORAL 
	end for;
end CFG_PG;