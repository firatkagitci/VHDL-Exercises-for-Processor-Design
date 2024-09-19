library ieee; 
use ieee.std_logic_1164.all; 

entity p4_adder is 
port(
	inp1: in std_logic_vector(64 downto 1);
	inp2: in std_logic_vector(64 downto 1);
	result: out std_logic_vector(64 downto 1);
	carry_in: in std_logic
	);
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
	Cselect		: in std_logic_vector (6 downto 0);
	a_32	 	: in std_logic_vector (31 downto 0);
	b_32 		: in std_logic_vector (31 downto 0);
	result_32	: out std_logic_vector(31 downto 0);
	carry_in_csla: in std_logic
	);
end component;

signal temp5: std_logic_vector (7 downto 0); --index 7 is carry bit 32
signal temp6: std_logic_vector (7 downto 0); --index 7 is carry bit 64
begin

u1 : carry_gen port map(ai => inp1(32 downto 1), bi => inp2(32 downto 1), c0 => carry_in, carry_out => temp5);
u2 : carry_gen port map(ai => inp1(64 downto 33), bi => inp2(64 downto 33), c0 => temp5(7), carry_out => temp6);

u3 : csla port map(Cselect => temp5(6 downto 0), carry_in_csla => carry_in, a_32 => inp1(32 downto 1 ), b_32 => inp2(32 downto 1 ), result_32 => result(32 downto 1));
u4 : csla port map(Cselect => temp6(6 downto 0), carry_in_csla => temp5(7), a_32 => inp1(64 downto 33), b_32 => inp2(64 downto 33), result_32 => result(64 downto 33));


end architecture structural;

configuration CFG_p4 of p4_adder is 
	for structural
		for u1: carry_gen
			use configuration WORK.CFG_carry_gen;
		end for;
		
		for u2: carry_gen
			use configuration WORK.CFG_carry_gen;
		end for;

		for u3: carry_gen
			use configuration WORK.CFG_carry_gen;
		end for;

		for u4: carry_gen
			use configuration WORK.CFG_carry_gen;
		end for;

	end for;
	
end CFG_p4;
