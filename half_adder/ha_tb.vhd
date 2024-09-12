library ieee;
use ieee.std_logic_1164.all;

entity ha_tb is 
end ha_tb;   --this part should be empty since it does not have any in/out

architecture test of ha_tb is 

	component ha
	
		port (
			
			a: in std_ulogic;
			b: in std_ulogic;
			o: out std_ulogic;	
			c: out std_ulogic
			
	);
	
	end component;

	signal a, b, o, c :std_ulogic;
	
begin --   'half_adder'  is the name of portmap
	half_adder: ha port map(a => a, b => b, c => c, o => o);
	
	process begin  --process is used for delivering signal sequentially 
	
		a <= 'X';
		b <= 'X';
		wait for 1 ns;
		
		a <= '0';
		b <= '0';
		wait for 1 ns;
		
		a <= '0';
		b <= '1';
		wait for 1 ns;

		a <= '1';
		b <= '0';
		wait for 1 ns;
		
		a <= '1';
		b <= '1';
		wait for 1 ns;
		
		assert false report  "reached end of test" ;
		wait;
	
	end process;
end test;