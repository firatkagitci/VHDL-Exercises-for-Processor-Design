library ieee;
use ieee.std_logic_1164.all;

entity D_FlipFlop_tb is
end entity D_FlipFlop_tb;

architecture test of D_FlipFlop_tb is
    component D_FlipFlop
        port (
            D   : in  std_logic;
            CLK : in  std_logic;
            Q   : out std_logic;
			RES	: in  std_logic
        );
    end component;
	
	signal RES : std_logic := '0';
    signal D   : std_logic := '0';
    signal CLK : std_logic := '0';
    signal Q   : std_logic;

begin
    -- Instantiate the D Flip-Flop
    uut: D_FlipFlop port map (
        D => D,
        CLK => CLK,
        Q => Q,
		RES => RES
    );

    -- Clock generation process
    process
    begin
        while true loop
            CLK <= '0';
            wait for 5 ns;
            CLK <= '1';
            wait for 5 ns;
        end loop;
		assert false report "end of the clock process is reached";
		wait;
	
    end process;

    -- Stimulus process
    process
    begin
	while true loop
        

        D <= '0';
        wait for 10 ns;
		
        D <= '1';
		wait for 10 ns;
		
		RES <= '0';
		wait for 8 ns;
        
        D <= '1';
        wait for 10 ns;
		
		RES <= '1';
		wait for 18 ns;
		
		end loop;
		assert false report "end of the process is reached";
        wait;
    end process;
end architecture test;
