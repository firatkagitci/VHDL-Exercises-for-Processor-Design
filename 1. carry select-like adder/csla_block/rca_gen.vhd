library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;

entity rca_gen is 
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
	
end rca_gen;

architecture structural of rca_gen is 
	component fa
	port (
			
			a	: 	in std_logic;
			b	: 	in std_logic;
			cin	: 	in std_logic;
			s	: 	out std_logic;	
			cout: 	out std_logic
			
	);
	end component;

	signal c:  std_logic_vector (N downto 0); -- internal carry signals 

begin 
	c(0) <= cin;

--instances of full adders (fa)
	
generation_of_FAs: for i in 0 to N-1 generate 
	
u:	fa	port map (a => a(i), b => b(i), cin => c(i), s => s(i), cout => c(i+1));   
		end generate;

	cout <= c(N);

			
end architecture structural;


configuration CFG_structural of rca_gen is
	for structural 
		for generation_of_FAs
			for all : fa
			use configuration WORK.CFG_FA_BEHAVIORAL;
			end for;
		end for;
	end for;
end CFG_structural;	