library ieee;
use ieee.std_logic_1164.all;

entity rca is 

	port (
			
			a	: 	in std_logic_vector (7 downto 0);
			b	: 	in std_logic_vector (7 downto 0);
			cin	: 	in std_logic;
			s	: 	out std_logic_vector (7 downto 0);	
			cout: 	out std_logic			
	);
	
end rca;

architecture structural of rca is 
	component fa
	port (
			
			a	: 	in std_logic;
			b	: 	in std_logic;
			cin	: 	in std_logic;
			s	: 	out std_logic;	
			cout: 	out std_logic
			
	);
	end component;

	signal c:  std_logic_vector (7 downto 0); -- internal carry signals 

begin 

--instances of full adders (fa)

u1:	fa	port map (a(0), b(0), cin, s(0), c(0));
u2:	fa	port map (a(1), b(1), c(0), s(1), c(1));   
u3:	fa	port map (a(2), b(2), c(1), s(2), c(2)); 
u4:	fa	port map (a(3), b(3), c(2), s(3), c(3)); 
u5:	fa	port map (a(4), b(4), c(3), s(4), c(4)); 
u6:	fa	port map (a(5), b(5), c(4), s(5), c(5)); 
u7:	fa	port map (a(6), b(6), c(5), s(6), c(6)); 
u8:	fa	port map (a(7), b(7), c(6), s(7), cout); 
			
end architecture structural;