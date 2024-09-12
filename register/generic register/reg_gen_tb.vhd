library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;

entity reg_gen_tb is 
end entity reg_gen_tb;


architecture beh of reg_gen_tb is 
	component reg_gen is
	
	generic (
		N : integer :=16
	);

	port(
			D 	: in 	std_logic_vector (N-1 downto 0);
			CLK	: in 	std_logic;
			RES : in 	std_logic;
			Q	: out 	std_logic_vector (N-1 downto 0)	
	);
	end component;
	
	constant N: integer := 16;

	signal D: std_logic_vector (N-1 downto 0);  -- for signal assignments use this sign --->  "
	signal CLK: std_logic := '0';
	signal RES: std_logic := '0';
	signal Q: std_logic_vector (N-1 downto 0);

begin 

u1:	reg_gen
	generic map (N => N)
	port map (D => D, CLK => CLK, RES => RES, Q => Q);

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
    --    RES <= '1';
    --    wait for 10 ns;
        RES <= '0';
	
	while true loop 
	
	D <= x"FAFB";
	
	wait for 10 ns;
	
	D <= x"BCDA"; 
	wait for 10 ns;
	end loop;
	
	end process;
	
end architecture beh;