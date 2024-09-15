library ieee;
use ieee.std_logic_1164.all;

entity carry_gen is 

	port(
	
	a_	: in std_logic (31 downto 0);
	b_	: in std_logic (31 downto 0);
	
	carry_out : out std_logic_vector (7 downto 0);
	
	);
	
end carry_gen;


architecture structural of carry_gen is 

component G_block is 
	port(
	
	Gk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Gij		: out std_logic;
	
	);
end component G_block;

component PG_block is 
	port(
	
	Gk1j	: in std_logic;
	Pk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Pij		: out std_logic;	
	Gij		: out std_logic;
	
	);
end component PG_block;

component PG_network is 

	port (
	a	: in std_logic; 
	b	: in std_logic;
	p 	: out std_logic;
	g 	: out std_logic
	);


end component PG_network;





end architecture structural;