library ieee;
use ieee.std_logic_1164.all;

entity orgate is

	port (
	a: in std_logic;
	b: in std_logic;
	c: out std_logic
	);
end orgate;
	
	architecture behav of orgate is 
	
	begin
	
	c <= a or b;
	
	end behav;