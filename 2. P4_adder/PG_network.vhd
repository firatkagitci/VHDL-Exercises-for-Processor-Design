library ieee;
use ieee.std_logic_1164.all;

entity PG_network is 
	
	port (
	a	: in std_logic; 
	b	: in std_logic;
	p 	: out std_logic;
	g 	: out std_logic
	);


end entity PG_network;

architecture behav of PG_network is 
begin

	g <= a and b; 
	p <= a xor b; 

end architecture behav;