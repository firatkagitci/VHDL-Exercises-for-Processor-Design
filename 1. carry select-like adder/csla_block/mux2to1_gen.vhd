library ieee;

use ieee.std_logic_1164.all;

entity mux2to1_gen is 
	generic (
	N : integer := 4
	);
	
	port (
	
	I1	: in std_logic_vector (N-1 downto 0);
	I2	: in std_logic_vector (N-1 downto 0);
	SEL	: in std_logic;
	Y	: out std_logic_vector (N-1 downto 0)
	
	);

end entity mux2to1_gen;


architecture behave of mux2to1_gen is
begin 

	process (I1, I2, SEL)
	begin 
	
	case SEL is 
	
	when '0' => 
	Y <= I1;
	
	when '1' =>
	Y <= I2;
	
	when others =>
	Y <= (others => '0');  -- Assign 'X' to all bits of Y
	
	end case;
	end process;

end architecture behave;