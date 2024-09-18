library ieee; 
use ieee.std_logic_1164.all; 

entity p4_test is
end entity p4_test;

architecture test of p4_test is 

component p4_adder is
	port(
		inp1: in std_logic_vector(64 downto 1);
		inp2: in std_logic_vector(64 downto 1);
		result: out std_logic_vector(64 downto 1);
		carry_in: in std_logic
		);
end component;

signal		inp1: std_logic_vector(64 downto 1);
signal		inp2: std_logic_vector(64 downto 1);
signal 		result: std_logic_vector(64 downto 1);
signal		carry_in: std_logic;

begin
u1: p4_adder port map (inp1 => inp1, inp2 => inp2, result => result, carry_in => carry_in);

	process 
	begin
	
	inp1 <=x"FFFFFFFFFFFFFFFF";
	inp1 <=x"0000000000000001";	
	carry_in <='0';	
	wait for 500 ns;
	
	end process;

end architecture test;
