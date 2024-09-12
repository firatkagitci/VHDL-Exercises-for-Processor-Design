library ieee;
use ieee.std_logic_1164.all;

entity D_FlipFlop is
    port (
        D   : in  std_logic;
        CLK : in  std_logic;
        Q   : out std_logic;
		RES	: in std_logic
    );
end entity D_FlipFlop;

architecture Behavioral of D_FlipFlop is
begin
    process(CLK) --creating syncronous reset ff
    begin
	if rising_edge(CLK) then
	
		if RES = '1' then
			Q <= '0'; -- reset case
			
		else 
            Q <= D;   -- normal operation
			
        end if;
	end if;
	end process;
end architecture Behavioral;
