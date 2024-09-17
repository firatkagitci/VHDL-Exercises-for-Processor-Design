library ieee; 
use ieee.std_logic_1164.all; 

entity carry_gen_tb is
end carry_gen_tb;


architecture test of carry_gen_tb is 
	component carry_gen is
		port(
		
		ai	: in std_logic_vector (32 downto 1);
		bi	: in std_logic_vector (32 downto 1);
		c0	: in std_logic;
		carry_out : out std_logic_vector (7 downto 0)
		
		);
	end component carry_gen;
	
	signal in1: std_logic_vector(32 downto 1);
	signal in2: std_logic_vector(32 downto 1);
	signal carr: std_logic;

	begin 
	
	process 
	begin
	
	in1 <= x"FFFFFFFF";
	in2 <= x"00000001";
	carr<= '0';
	
	
	
	end process;
	


end architecture test;
