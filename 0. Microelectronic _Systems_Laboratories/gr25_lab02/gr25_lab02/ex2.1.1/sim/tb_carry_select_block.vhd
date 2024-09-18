library ieee; 
use ieee.std_logic_1164.all; 
use ieee.numeric_std.all; -- we need a conversion to unsigned 
use work.constants.all;

-----------------------------------

entity TBCSB is 
end TBCSB; 

architecture TEST of TBCSB is
	--constant NBIT_test: integer := 4;
  component LFSR16 
    port (CLK, RESET, LD, EN : in std_logic; 
          DIN : in std_logic_vector(15 downto 0); 
          PRN : out std_logic_vector(15 downto 0); 
          ZERO_D : out std_logic);
  end component;

component carry_select_block is 
	generic (NBIT: integer:= NumBit);
	Port (	INPUT_1:	In	std_logic_vector(NBIT-1 downto 0);
		    INPUT_2:	In	std_logic_vector(NBIT-1 downto 0);
		    Ci_sel:	In	std_logic; -- carry out of the previous stage, used for selecting the "right" assumption
		    SUM:	Out	std_logic_vector(NBIT-1 downto 0));
		    --Co:	Out	std_logic); isn't needed because the carry out is provided to the other block by a carry_generator_block 
end component; 

  
   
  constant Period: time := 1 ns; -- Clock period (1 GHz)
  signal CLK : std_logic :='0';
  signal RESET,LD,EN,ZERO_D : std_logic;
  signal DIN, PRN : std_logic_vector(15 downto 0);

  signal A, B, S1, S2: std_logic_vector(NumBit-1 downto 0);

Begin

-- Instanciate the carry block, forcing the "carry in sel" to '0'
  ASB_0: carry_select_block 
	   generic map (NBIT => NumBit) 
	   Port Map (INPUT_1 => A, INPUT_2 => B, Ci_sel => '0', SUM => S1); -- COMPONENT=>SIGNAL

-- Instanciate the carry block, forcing the "carry in sel" to '1'
  ASB_1: carry_select_block 
	   generic map (NBIT => NumBit) 
	   Port Map (INPUT_1 => A, INPUT_2 => B, Ci_sel => '1', SUM => S2); -- COMPONENT=>SIGNAL



-- Forcing adder input to LFSR output
  A(0) <= PRN(0);
  A(3) <= PRN(4);
  A(1) <= PRN(6);
  A(2) <= PRN(10);-- added this line to simulate the generic

  B(0) <= PRN(15);
  B(3) <= PRN(11);
  B(1) <= PRN(9);
  B(2) <= PRN(5);-- added this line to simulate the generic

-- Instanciate the Unit Under Test (UUT)
  UUT: LFSR16 port map (CLK=>CLK, RESET=>RESET, LD=>LD, EN=>EN, 
                        DIN=>DIN,PRN=>PRN, ZERO_D=>ZERO_D);
-- Create the permanent Clock and the Reset pulse
  CLK <= not CLK after Period/2;
  RESET <= '1', '0' after Period;
-- Open file, make a load, and wait for a timeout in case of design error.
  STIMULUS1: process
  begin
    DIN <= "0000000000000001";
    EN <='1';
    LD <='1';
    wait for 2 * PERIOD;
    LD <='0';
    wait for (65600 * PERIOD);
  end process STIMULUS1;

end TEST;

