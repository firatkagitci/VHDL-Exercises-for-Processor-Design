library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 
use work.constants.all;

-----------------------------------

entity TBSG is 
end TBSG; 

architecture TEST of TBSG is

component sum_generator is 
    generic (NBIT_GEN: integer:= NumBit_generator;
             NBIT_GEN_BLOCK: integer:= NumBit_generator_block); -- length of the carry vector
    Port (    ADD_1:    In    std_logic_vector(NBIT_GEN-1 downto 0);
            ADD_2:    In    std_logic_vector(NBIT_GEN-1 downto 0);
            Ci:    In    std_logic_vector(NBIT_GEN_BLOCK-1 downto 0); -- carry in of each stage
            SUM:    Out    std_logic_vector(NBIT_GEN-1 downto 0));
            --Co:    Out    std_logic); 
end component; 

  signal Ci: std_logic_vector(NumBit_generator_block-1 downto 0);
  signal A, B, S: std_logic_vector(NumBit_generator-1 downto 0);

Begin

  ASB_0: sum_generator 
       generic map (NBIT_GEN => NumBit_generator, NBIT_GEN_BLOCK => NumBit_generator_block) 
       Port Map (ADD_1 => A, ADD_2 => B, Ci => Ci, SUM => S); -- COMPONENT=>SIGNAL
  test: process
  begin
        
  
        A <= X"11111111" after 3 ns; 
        B <= X"00000000" after 3 ns; 
        Ci <= "00000000" after 3 ns; -- generate the correct carry in for each block we calculated it by hand
        wait for 3 ns;

          A <= X"00000000" after 3 ns; 
        B <= X"AAAAAAAA" after 3 ns; 
        Ci <= "00000000" after 3 ns;  -- generate the correct carry in for each block we calculated it by hand
        wait for 3 ns;

         A <= X"55555555" after 3 ns; 
        B <= X"AAAAAAAA" after 3 ns; 
        Ci <= "11111111" after 3 ns;  -- generate the correct carry in for each block we calculated it by hand IF THE FIRST CARRY IS '1' all other blocks need '1' 
        wait for 3 ns;

        A <= X"630BE001" after 3 ns; 
        B <= X"AAAA783E" after 3 ns; 
        Ci <= "00110000" after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '0' 
        wait for 3 ns;

        A <= X"630BE001" after 3 ns; 
        B <= X"AAAA783E" after 3 ns; 
        Ci <= "00110011" after 3 ns;  -- generate the correct carry in for each block we calculated it by hand CASE CARRY IN of whole system = '1' 
        wait for 3 ns;

--          A <= X"FFFF" after 3 ns; 
--        B <= X"0000" after 3 ns; 
--        wait for 3 ns;
-- 
--    A <= X"1236" after 3 ns; 
--B <= X"01AA" after 3 ns; 
--        wait for 3 ns;
 
--        A <= X"0560" after 3 ns; 
--        B <= X"0AA0" after 3 ns; 
--        wait for 3 ns;

--        A <= X"0560" after 3 ns; 
--        B <= X"0AA0" after 3 ns; 
        wait;

end process;  

end TEST;