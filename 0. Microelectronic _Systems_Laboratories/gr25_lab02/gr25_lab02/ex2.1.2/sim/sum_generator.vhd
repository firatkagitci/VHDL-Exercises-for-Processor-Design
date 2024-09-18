library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity sum_generator is 
	generic (NBIT_GEN: integer:= NumBit_generator;
			 NBIT_GEN_BLOCK: integer:= NumBit_generator_block); -- total number of bits of inputs (multiple of nbit of carry select block) 
	Port (	ADD_1:	In	std_logic_vector(NBIT_GEN-1 downto 0);
		    ADD_2:	In	std_logic_vector(NBIT_GEN-1 downto 0);
		    Ci:	In	std_logic_vector(NBIT_GEN_BLOCK-1 downto 0); -- carry in of each stage
		    SUM:	Out	std_logic_vector(NBIT_GEN-1 downto 0));
		    --Co:	Out	std_logic); isn't needed because the carry out is provided to the other block by a carry_generator_block 
end sum_generator; 


architecture STRUCTURAL of sum_generator is
	

component carry_select_block is 
	generic (NBIT: integer:= NumBit);
	Port (	INPUT_1:	In	std_logic_vector(NBIT-1 downto 0);
		    INPUT_2:	In	std_logic_vector(NBIT-1 downto 0);
		    Ci_sel:	In	std_logic; -- carry out of the previous stage, used for selecting the "right" assumption
		    SUM:	Out	std_logic_vector(NBIT-1 downto 0));
		    --Co:	Out	std_logic); isn't needed because the carry out is provided to the other block by a carry_generator_block 
end component; 


begin

  ADDER: for i in 1 to NBIT_GEN_BLOCK generate
    sum_gen : carry_select_block 
	  generic map (NBIT => NumBit) -- NumBit is the number of input's bits for each single block i.e. 4
	  Port Map (INPUT_1 => ADD_1((NumBit*i)-1 downto (NumBit*(i-1))),INPUT_2 => ADD_2 ((NumBit*i)-1 downto (NumBit*(i-1))),Ci_sel=> Ci(i-1),SUM => SUM((NumBit*i)-1 downto (NumBit*(i-1)))); -- assign for each block the corresponding bits 
  end generate;

end STRUCTURAL;


