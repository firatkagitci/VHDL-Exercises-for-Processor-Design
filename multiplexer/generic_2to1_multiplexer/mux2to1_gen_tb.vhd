library ieee;
use ieee.std_logic_1164.all;

entity mux2to1_gen_tb is
end entity mux2to1_gen_tb;


architecture test of mux2to1_gen_tb is 

	constant N : integer := 8;

	component mux2to1_gen is 
	
		port (
	
	I1	: in std_logic_vector (N-1 downto 0);
	I2	: in std_logic_vector (N-1 downto 0);
	SEL	: in std_logic;
	Y	: out std_logic_vector (N-1 downto 0)
	
	);

	end component mux2to1_gen;

	signal 	I1	: std_logic_vector (N-1 downto 0);
	signal 	I2	: std_logic_vector (N-1 downto 0);
	signal 	SEL	: std_logic;
	signal 	Y	: std_logic_vector (N-1 downto 0);
	
begin
	
u1:	mux2to1_gen port map (I1 => I1, I2 => I2, SEL => SEL, Y => Y);

	process
	begin 


    I1 <= x"FA";
	I2 <= x"AB";
	
	while true loop
	SEL <= '0';
	wait for 20 ns;
	
	SEL <= '1';
	wait for 20 ns;
	
	end loop;
	
	end process;
		
end architecture test;
 	
