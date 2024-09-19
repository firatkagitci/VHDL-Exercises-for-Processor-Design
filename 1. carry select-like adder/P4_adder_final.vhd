library ieee; 
use ieee.std_logic_1164.all; 

entity p4_adder is 

	inp1: in std_logic_vector(32 downto 1);
	inp2: in std_logic_vector(32 downto 1);
	

end entity p4_adder;


architecture structural of p4_adder is
component carry_gen is
	port(
	ai	: in std_logic_vector (32 downto 1);
	bi	: in std_logic_vector (32 downto 1);
	c0	: in std_logic;
	carry_out : out std_logic_vector (7 downto 0)
	);
end component;

component csla is
	port (
	Cselect		: in std_logic_vector  (7  downto 0);
	a_32	 	: in std_logic_vector  (31 downto 0);
	b_32 		: in std_logic_vector  (31 downto 0);
	result_32	: out std_logic_vector (31 downto 0)
	);
end component;

begin
u1 : carry_gen port map(ai => inp1, bi => inp2, );

end architecture structural;