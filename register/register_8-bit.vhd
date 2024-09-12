library ieee;
use ieee.std_logic_1164.all;

entity register8bit is 
	port(
			D 	: in 	std_logic_vector (7 downto 0);
			CLK	: in 	std_logic;
			RES : in 	std_logic;
			Q	: out 	std_logic_vector (7 downto 0)	
	);
	
end entity register8bit; 

architecture behave of register8bit is
begin
    process(CLK) --creating syncronous reset register
    begin
	
	if rising_edge(CLK) then
	
		if RES = '1' then
			Q <= (others => '0'); -- reset case		
		else
            Q <= D;   -- normal operation
			
        end if;
	end if;
	
	end process;
end architecture behave;
	