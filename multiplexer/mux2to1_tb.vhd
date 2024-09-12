library ieee;
use ieee.std_logic_1164.all;


entity mux_tb is 
end entity mux_tb;

architecture test of mux_tb is
 
	component mux
	
			port(
			
					I1: in std_logic;
					I2: in std_logic;
					SEL : in std_logic;
					Y : out std_logic
			);
	
	end component; 

	signal I1 : std_logic;
	signal I2 : std_logic;
	signal SEL: std_logic;
	signal Y  : std_logic;
begin

u1: mux port map (I1 => I1, I2 => I2, SEL => SEL, Y => Y);


	process 
	begin
	

	
	while true loop

        I1 <= '0';
        I2 <= '1';
        SEL <= '0';  -- Select I1
        wait for 10 ns;
		

        SEL <= '1';  -- Select I2
        wait for 10 ns;
	
	
	end loop;
	end process;

end architecture test;

