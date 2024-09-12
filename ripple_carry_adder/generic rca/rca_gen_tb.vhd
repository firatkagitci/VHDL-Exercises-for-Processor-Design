library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std;

entity rca_gen_tb is 
end entity rca_gen_tb;


architecture test of rca_gen_tb is
	
	component rca_gen
	
	generic (
	constant N: integer :=32 
	);
	port (
			
			a	: 	in std_logic_vector (N-1 downto 0);
			b	: 	in std_logic_vector (N-1 downto 0);
			cin	: 	in std_logic;
			s	: 	out std_logic_vector (N-1 downto 0);	
			cout: 	out std_logic			
	);
	
	end component;
	
	constant N: integer := 32;
	
	signal	a	:	std_logic_vector (N-1 downto 0);  --:="00000100";
	signal	b	: 	std_logic_vector (N-1 downto 0);  --:="00010000";
	signal 	cin	: 	std_logic:='0';
	signal	s	: 	std_logic_vector (N-1 downto 0);	
	signal 	cout:	std_logic;		
	
	begin
	
rca_instance:	rca_gen
			generic map (N => N)	
			port map (a => a, b => b, cin => cin, s => s, cout => cout);

		process 
		begin 
		
		--s<= "00000000";
		--cout<='0';
		
		
		a <= x"FAFABABA";
		b <= x"CDCDDDCA";
		cin <= '0';
		
		wait for 100 ns;
		
		
		a <= x"CCCAAABB";
		b <= x"DDD88882";
		cin <= '0';
		
		wait for 100 ns;
		
		a <= x"12345678";
		b <= x"44444444";
		cin <= '0';
		
		wait for 100 ns;
		
		a <= x"65656565";
		b <= x"00000000";
		cin <= '0';
		
		wait for 100 ns;
		
		end process;
		
		end architecture test; 
		
configuration CFG_rca_gen_tb_test of rca_gen_tb is 
		for test
			for rca_instance: rca_gen
				use configuration WORK.CFG_structural;
			end for;
		end for;
end configuration CFG_rca_gen_tb_test;
	
			
			
			
				
			