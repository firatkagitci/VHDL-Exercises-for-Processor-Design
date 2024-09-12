library ieee;
use ieee.std_logic_1164.all;

entity mux4to1 is 
		port(
		
		I1	: in std_logic;
		I2	: in std_logic;
		I3	: in std_logic;
		I4	: in std_logic;
		SEL	: in std_logic_vector (1 downto 0);
		Y	: out std_logic
		);
		
end entity mux4to1;

architecture behave of mux4to1 is 

begin 
	process(I1, I2, I3, I4, SEL)
	begin 
	
	case SEL is 
	
	when "00" =>
	Y <= I1; 
	
	when "01" =>
	Y <= I2; 
	
	when "10" =>
	Y <= I3; 
	
	when "11" =>
	Y <= I4; 
	
	when others =>
	
	Y <= 'X'; 
	end case;
	
	end process;
	
end architecture behave;