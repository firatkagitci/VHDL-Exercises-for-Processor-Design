library ieee;
use ieee.std_logic_1164.all;

entity csla is 

		
	port (
	
	Cselect		: in std_logic_vector (6 downto 0);
	a_32	 	: in std_logic_vector (31 downto 0);
	b_32 		: in std_logic_vector (31 downto 0);
	result_32	: out std_logic_vector (31 downto 0);
	carry_in_csla : in std_logic
	
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

-- instances of csla_block										--Cselect(0) is the carry in
	
csla_block_1: csla_block port map (a => a_32(3 downto 0),   b => b_32(3 downto 0),   C_sel => carry_in_csla , Sum => result_32(3 downto 0));
csla_block_2: csla_block port map (a => a_32(7 downto 4),   b => b_32(7 downto 4),   C_sel => Cselect(0), Sum => result_32(7 downto 4));
csla_block_3: csla_block port map (a => a_32(11 downto 8),  b => b_32(11 downto 8),  C_sel => Cselect(1), Sum => result_32(11 downto 8));
csla_block_4: csla_block port map (a => a_32(15 downto 12), b => b_32(15 downto 12), C_sel => Cselect(2), Sum => result_32(15 downto 12)); 
csla_block_5: csla_block port map (a => a_32(19 downto 16), b => b_32(19 downto 16), C_sel => Cselect(3), Sum => result_32(19 downto 16));
csla_block_6: csla_block port map (a => a_32(23 downto 20), b => b_32(23 downto 20), C_sel => Cselect(4), Sum => result_32(23 downto 20));
csla_block_7: csla_block port map (a => a_32(27 downto 24), b => b_32(27 downto 24), C_sel => Cselect(5), Sum => result_32(27 downto 24));
csla_block_8: csla_block port map (a => a_32(31 downto 28), b => b_32(31 downto 28), C_sel => Cselect(6), Sum => result_32(31 downto 28)); 
																--Cselect(7) represents carry bit 28

end architecture structural;

configuration CFG_csla of csla is
for structural 
	
	for csla_block_1
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;

	for csla_block_2
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;
	
	for csla_block_3
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;	

	for csla_block_4
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;
	
	for csla_block_5
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;

	for csla_block_6
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;
	
	for csla_block_7
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;
	
	for csla_block_8
		for csla_block 
		use configuration WORK.CFG_csla_block;
		end for;
	end for;

end for;
end CFG_csla;