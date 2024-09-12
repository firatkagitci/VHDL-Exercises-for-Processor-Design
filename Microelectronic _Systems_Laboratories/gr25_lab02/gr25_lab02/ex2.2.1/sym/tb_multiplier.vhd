library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use WORK.constants.all;

entity MULTIPLIER_tb is
end MULTIPLIER_tb;


architecture TEST of MULTIPLIER_tb is


  constant numBit : integer :=32;    

  --  input	 
  signal A_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');
  signal B_mp_i : std_logic_vector(numBit-1 downto 0) := (others => '0');

  -- output
  signal Y_mp_i : std_logic_vector(2*numBit-1 downto 0);


-- MUL component declaration
component BOOTHMUL is 
	generic (NBIT: integer:= NumBit); -- the parallelism of the whole structure is 2*nbit-1 
	Port (	INPUT_1:	In	std_logic_vector(NBIT-1 downto 0); -- A
		    INPUT_2:	In	std_logic_vector(NBIT-1 downto 0); -- B
		    MUL_OUT:	Out	std_logic_vector(2*NBIT-1 downto 0));
end component; 


begin

-- MUL instantiation
 MUL : BOOTHMUL 
	generic map(NBIT => numBit)
	Port Map (INPUT_1 => A_mp_i, INPUT_2 => B_mp_i, MUL_OUT => Y_mp_i);


-- PROCESS FOR TESTING TEST - COMLETE CYCLE ---------
  test: process
  begin

    -- cycle for operand A
    NumROW : for i in 0 to 2**(NumBit-20)-1 loop

        -- cycle for operand B
    	NumCOL : for i in 0 to 2**(NumBit-20)-1 loop
	    wait for 10 ns;
	    B_mp_i <= B_mp_i + "1111111111111111";
	end loop NumCOL ;
        
	A_mp_i <= A_mp_i + "1111111111111111"; 	
    end loop NumROW ;

    wait;          
  end process test;


end TEST;
