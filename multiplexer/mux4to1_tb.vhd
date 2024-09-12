library ieee;
use ieee.std_logic_1164.all;

entity mux4to1_tb is 
end entity mux4to1_tb;

architecture test of mux4to1_tb is

component mux4to1 is
		port(
		
		I1	: in std_logic;
		I2	: in std_logic;
		I3	: in std_logic;
		I4	: in std_logic;
		SEL	: in std_logic_vector (1 downto 0);
		Y	: out std_logic
		);
		
end component mux4to1;

signal		I1	: std_logic;
signal		I2	: std_logic;
signal		I3	: std_logic;
signal		I4	: std_logic;
signal		SEL	: std_logic_vector (1 downto 0);
signal		Y	: std_logic;

begin

u1: mux4to1 port map (I1 => I1, I2 => I2, I3 => I3, I4 => I4, SEL => SEL, Y => Y);
	
	
	
	process 
	begin
	    
		I1 <= '0';
        I2 <= '1';
		I3 <= '0';
        I4 <= '1';
		
	while true loop
	
        SEL <= "01";  -- Select I2
        wait for 10 ns;
		
	
	    SEL <= "10";  -- Select I3
        wait for 10 ns;
		
		
		SEL <= "11";  -- Select I4
        wait for 10 ns;
	
	end loop;
	end process;
	
	
end architecture test;	