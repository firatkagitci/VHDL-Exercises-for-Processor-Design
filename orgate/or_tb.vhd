library ieee;
use ieee.std_logic_1164.all;

entity or_tb is 
end or_tb;

architecture test of or_tb is 
component orgate

port (
	a: in std_logic;
	b: in std_logic;
	c: out std_logic
	);

end component;
	signal a, b, c : std_logic;
begin -- now we need to do portmap
mapping: orgate port map(a => a, b => b, c => c);  
	process begin
	
	a <= '0';
	b <= '0';
	wait for 1 ns;
	
	a <= '1';
	b <= '0';
	wait for 1 ns;
	
	assert false report "end of process is reached";
	
	wait;
	
	end process;
	
	
end test;