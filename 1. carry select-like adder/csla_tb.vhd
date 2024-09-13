library ieee;
use ieee.std_logic_1164.all;

entity csla_tb is 
end entity csla_tb;


architecture test of csla_tb is 
	component csla is
		
	port (
	
	Cselect		: in std_logic_vector (7  downto 0);
	a_32	 	: in std_logic_vector (31 downto 0);
	b_32 		: in std_logic_vector (31 downto 0);
	result_32	: out std_logic_vector(31 downto 0)
	
	);
	
	end component csla;
	
	signal input_a: std_logic_vector (31 downto 0);
	signal input_b: std_logic_vector (31 downto 0);
	signal carry : std_logic_vector  (7  downto 0);
	signal result_s : std_logic_vector (31 downto 0);
begin
-- instance of csla
u1: csla port map (Cselect => carry, a_32 => input_a, b_32 => input_b, result_32 => result_s);
	
	process
	begin 
	
		input_a <= x"FBFBABAB";
		input_b <= x"00000000";
		carry <= x"01";
		wait for 100 ns;
		
		input_a <= x"BCBCBCBC";
		input_b <= x"00000000";
		carry <= x"00";
		wait for 100 ns;
	
       
        input_a <= x"FBFBABAB";
        input_b <= x"00000000";
        carry   <= x"01";
        wait for 100 ns;

     
        input_a <= x"00000000";
        input_b <= x"FFFFFFFF";
        carry   <= x"00";
        wait for 100 ns;

        input_a <= x"12345678";
        input_b <= x"87654321";
        carry   <= x"FF";
        wait for 100 ns;	
		
	wait;
	end process;
end architecture test;
