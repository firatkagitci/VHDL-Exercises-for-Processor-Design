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
	end component;
	
	signal in1: std_logic_vector(32 downto 1);
	signal in2: std_logic_vector(32 downto 1);
	signal carr: std_logic;
	signal carry_out_signal: std_logic_vector(7 downto 0);

	begin 
	
u1:	carry_gen port map (ai => in1, bi => in2, c0 => carr, carry_out => carry_out_signal); 

	
	process 
	begin

	in1 <= x"FFFFFFFF";
	in2 <= x"00000001";
	carr<= '0';
	
	wait for 400 ns;
 	
	end process;
	


end architecture test;
