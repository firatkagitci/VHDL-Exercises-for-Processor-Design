library ieee;
use ieee.std_logic_1164.all;


entity rca_tb is 
end entity rca_tb;


architecture test of rca_tb is
	component rca
	
	port (
			
			a	: 	in std_logic_vector (7 downto 0);
			b	: 	in std_logic_vector (7 downto 0);
			cin	: 	in std_logic;
			s	: 	out std_logic_vector (7 downto 0);	
			cout: 	out std_logic			
	);	
	
	end component;
	
	signal	a	:	std_logic_vector (7 downto 0):="00000000";
	signal	b	: 	std_logic_vector (7 downto 0):="00000000";
	signal 	cin	: 	std_logic:='0';
	signal	s	: 	std_logic_vector (7 downto 0);	
	signal cout	:	std_logic;		
	
	begin
	
rca_instatnce:	rca port map (a => a, b => b, cin => cin, s => s, cout => cout);

		process 
		begin 
		
		--s<= "00000000";
		--cout<='0';
		
		while true loop
		
		a <= "00000001";
		b <= "00000010";
		cin <= '0';
		
		wait for 20 ns;
		
		
		a <= "00100000";
		b <= "00000101";
		cin <= '0';
		
		wait for 20 ns;
		
		a <= "11111000";
		b <= "00001111";
		cin <= '0';
		
		wait for 20 ns;
		
		a <= "11111000";
		b <= "00001111";
		cin <= '0';
		
		wait for 20 ns;
		
		end loop;
		end process;
		
		end architecture test; 