library ieee;
use ieee.std_logic_1164.all;

entity csla_block is 
		
		
	port (
	
	a			: in std_logic_vector (3 downto 0);
	b			: in std_logic_vector (3 downto 0);
	
	C_sel 		: in std_logic;
	Sum			: out std_logic_vector (3 downto 0);
	
	);


end csla_block;


architecture structural of csla_block is 

	component rca_gen is  
		generic (
			constant N: integer :=4 
			);
			port (
					
					a	: 	in std_logic_vector (N-1 downto 0);
					b	: 	in std_logic_vector (N-1 downto 0);
					cin	: 	in std_logic;
					s	: 	out std_logic_vector (N-1 downto 0);	
					cout: 	out std_logic			
			);
			
	end component rca_gen;

	component mux2to1_gen is 
	generic (
	N : integer := 4
	);
	
	port (
	
	I1	: in std_logic_vector (N-1 downto 0);
	I2	: in std_logic_vector (N-1 downto 0);
	SEL	: in std_logic;
	Y	: out std_logic_vector (N-1 downto 0)
	
	);
	end component mux2to1_gen;
	
	constant N: integer := 4;
	
	signal result_0 : std_logic_vector (N-1  downto 0); -- result for carry 0 
	signal result_1 : std_logic_vector (N-1  downto 0); -- result for carry 1
	signal carry_0	: std_logic := '0';
	signal carry_1	: std_logic := '1';
	signal s		: std_logic_vector (N-1  downto 0); -- final result of the block
	signal c_sel 	: std_logic;  -- actual signal input
	signal a : std_logic_vector (N-1  downto 0);
	signal b : std_logic_vector (N-1  downto 0);
	
begin 
-- instance of rca_gen
u1: rca_gen port map (a => a, b => b, carry_0 => cin, result_0 => s);	
u2: rca_gen port map (a => a, b => b, carry_1 => cin, result_1 => s);	


end architecture structural;
