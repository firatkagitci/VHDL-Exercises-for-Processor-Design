library ieee;
use ieee.std_logic_1164.all;


	entity mux is  -- a simple two input multiplexer
			
			port(
			
					I1: in std_logic;
					I2: in std_logic;
					SEL : in std_logic;
					Y : out std_logic
			);

	end entity mux;
	
	
	architecture behav of mux is 
	begin
		process(SEL, I1, I2) 
		begin
		
		case SEL is 
		
		when '0' =>
			Y <= I1;
		
		when '1' =>
			Y <= I2;
		
		when others =>
			Y <= 'X';
			
		end case;
		
		end process;
		
	end architecture behav;
	


	
	
	