library IEEE;
use IEEE.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TB_P4_ADDER is
end TB_P4_ADDER;

architecture TEST of TB_P4_ADDER is
	
	-- P4 component declaration
	component P4_adder is
	generic (NBIT: integer:= NumBit);
	Port (	INPUT_1:	In	std_logic_vector(NBIT-1 downto 0);
		    INPUT_2:	In	std_logic_vector(NBIT-1 downto 0);
		    C_in:	In	std_logic; 
		    SUM:	Out	std_logic_vector(NBIT-1 downto 0);
		    C_out:	Out	std_logic); 
	end component;

  signal A: std_logic_vector(NumBit_generator-1 downto 0) := (others => '0');
  signal B : std_logic_vector(NumBit_generator-1 downto 0) := (others => '0');
  signal Ci : std_logic;

  -- output
  signal Y : std_logic_vector(NumBit-1 downto 0);
  signal Carry_out : std_logic;

	
begin
	-- P4 instantiation
 P4_add : P4_adder
	generic map(NBIT=> NumBit)
	Port Map (INPUT_1 => A, INPUT_2 => B, C_in => Ci, SUM => Y, C_out => Carry_out);
	
-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin
		
        A <= X"11111111" after 3 ns; 
		B <= X"00000000" after 3 ns; 
        Ci <= '0' after 3 ns; -- generate the correct carry in for each block we calculated it by hand
		wait for 3 ns;

  		A <= X"00000000" after 3 ns; 
		B <= X"AAAAAAAA" after 3 ns; 
		Ci <= '0' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand
		wait for 3 ns;

 		A <= X"55555555" after 3 ns; 
		B <= X"AAAAAAAA" after 3 ns; 
		Ci <= '0' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand IF THE FIRST CARRY IS '1' all other blocks need '1' 
		wait for 3 ns;

 		A <= X"55555555" after 3 ns; 
		B <= X"AAAAAAAA" after 3 ns; 
		Ci <= '1' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand IF THE FIRST CARRY IS '1' all other blocks need '1' 
		wait for 3 ns;

		A <= X"630BE001" after 3 ns; 
		B <= X"AAAA783E" after 3 ns; 
		Ci <= '0' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '0' 
		wait for 3 ns;

		A <= X"630BE001" after 3 ns; 
		B <= X"AAAA783E" after 3 ns; 
		Ci <= '1' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '0' 
		wait for 3 ns;

		A <= X"FFFFFFFF" after 3 ns; 
		B <= X"00000000" after 3 ns; 
		Ci <= '1' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '0' 
		wait for 3 ns;

		A <= X"630BE001" after 3 ns; 
		B <= X"AAAA783E" after 3 ns; 
		Ci <= '1' after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '1' 
		wait;

end process;  
	
end TEST;

