library ieee;
use ieee.std_logic_1164.all;

entity csla is 

		
	port (
	
	Cselect		: in std_logic_vector (7 downto 0);
	a_32	 	: in std_logic_vector (31 downto 0);
	b_32 		: in std_logic_vector (31 downto 0);
	result_32	: out std_logic_vector (31 downto 0)
	
	);

end csla;

architecture structural of csla is 

	component csla_block
		
	port (
	
	a			: in std_logic_vector (3 downto 0);
	b			: in std_logic_vector (3 downto 0);
	C_sel 		: in std_logic;
	Sum			: out std_logic_vector (3 downto 0)
	
	);
	
	end component csla_block;

begin 	

-- instances of csla_block
	
u1: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(0), Sum => result_32(3 downto 0));
u2: csla_block port map (a => a_32(7 downto 4), b => b_32(7 downto 4), C_sel => Cselect(4), Sum => result_32(7 downto 4));
u3: csla_block port map (a => a_32(11 downto 8), b => b_32(11 downto 8), C_sel => Cselect(8), Sum => result_32(11 downto 8));
u4: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(12), Sum => result_32(15 downto 12)); 
u5: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(16), Sum => result_32(3 downto 0));
u6: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(20), Sum => result_32(3 downto 0));
u7: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(24), Sum => result_32(3 downto 0));
u8: csla_block port map (a => a_32(3 downto 0), b => b_32(3 downto 0), C_sel => Cselect(28), Sum => result_32(3 downto 0)); 
	

end architecture structural;
