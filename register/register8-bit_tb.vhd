library ieee;
use ieee.std_logic_1164.all;


entity reg_tb is 
end entity reg_tb;


architecture beh of reg_tb is 
component register8bit is 
	port(
			D 	: in 	std_logic_vector (7 downto 0);
			CLK	: in 	std_logic;
			RES : in 	std_logic;
			Q	: out 	std_logic_vector (7 downto 0)	
	);
end component;

	signal D: std_logic_vector (7 downto 0) := "00000000";  -- for signal assignments use this sign --->  "
	signal CLK: std_logic := '0';
	signal RES: std_logic := '0';
	signal Q: std_logic_vector (7 downto 0);

begin 

u1:	register8bit port map (D => D, CLK => CLK, RES => RES, Q => Q);

   -- Clock generation process
    process
    begin
        while true loop
            CLK <= '0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end loop;
    end process;

-- stimulus process
	
	process
 	begin
	        -- Reset the register
        RES <= '1';
        wait for 10 ns;
        RES <= '0';
	
	while true loop 
	wait for 10 ns;
	
	D <= "11110000";
	
	wait for 10 ns;
	
	D <= "10101010"; 

	end loop;
	
	end process;
	
end architecture beh;