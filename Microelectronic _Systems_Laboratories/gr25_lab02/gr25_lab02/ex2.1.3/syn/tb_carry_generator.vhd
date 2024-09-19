library ieee; 
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity TB_CARRY_GENERATOR is 
end TB_CARRY_GENERATOR; 

architecture TEST of TB_CARRY_GENERATOR is


	component CARRY_GENERATOR is
		generic (NBIT_GEN: integer:= NumBit_generator;
			 NBIT_Co: integer:= NumBit_carry_provided;
			 N_ITERATION: integer:=NumBit_iteration); -- number of iteration=log2(numbit_generator)
	Port (	ADD_1:	In	std_logic_vector(NBIT_GEN-1 downto 0);
		    ADD_2:	In	std_logic_vector(NBIT_GEN-1 downto 0);
		    Ci:	In	std_logic; -- carry in of carry generator block that is the same of the whole system
		    Co:	Out	std_logic_vector(NBIT_Co downto 0));
	end component;

  signal A_mp_i : std_logic_vector(NumBit_generator-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(NumBit_generator-1 downto 0) := (others => '0');
  signal Carry_in : std_logic;
  -- output
  signal Y_mp_i : std_logic_vector(NumBit_carry_provided downto 0);
 

begin
-- CARRY_GENERATOR instantiation
 CARRY_GEN : CARRY_GENERATOR
	generic map(NBIT_GEN => NumBit_generator, NBIT_Co => NumBit_carry_provided,  N_ITERATION => NumBit_iteration)
	Port Map (ADD_1 => A_mp_i, ADD_2 => B_mp_i, Ci => Carry_in, Co => Y_mp_i);


-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin
		
   
	    B_mp_i <= X"11111111" after 3 ns; 
		A_mp_i <= X"00000000" after 3 ns;
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;

  		B_mp_i <= X"00000000" after 3 ns; 
		A_mp_i <= X"AAAAAAAA" after 3 ns; 
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;

 		B_mp_i <= X"55555555" after 3 ns; 
		A_mp_i <= X"AAAAAAAA" after 3 ns; 
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;

 		B_mp_i <= X"55555555" after 3 ns; 
		A_mp_i <= X"AAAAAAAA" after 3 ns; 
		Carry_in <= '1' after 3 ns; 
		wait for 3 ns;

		B_mp_i <= X"55555556" after 3 ns; 
		A_mp_i <= X"AAAAAAAA" after 3 ns; 
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;

  		B_mp_i <= X"FFFFFFFF" after 3 ns; 
		A_mp_i <= X"00000000" after 3 ns; 
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;

  		B_mp_i <= X"FFFFFFFF" after 3 ns; 
		A_mp_i <= X"00000000" after 3 ns; 
		Carry_in <= '1' after 3 ns; 
		wait for 3 ns;
 
		B_mp_i <= X"11112356" after 3 ns; 
		A_mp_i <= X"000001AA" after 3 ns; 
		Carry_in <= '0' after 3 ns; 
		wait for 3 ns;
 
		B_mp_i <= X"00005600" after 3 ns; 
		A_mp_i <= X"0000AA00" after 3 ns; 
		wait for 3 ns;

		B_mp_i <= X"00056000" after 3 ns; 
		A_mp_i <= X"000AA000" after 3 ns; 
		wait;

end process;  

end TEST;
