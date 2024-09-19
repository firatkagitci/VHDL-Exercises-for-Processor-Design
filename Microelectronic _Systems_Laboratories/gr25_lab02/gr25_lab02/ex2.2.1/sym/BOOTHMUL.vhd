library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use work.constants.all;
use IEEE.NUMERIC_STD.all; -- added to perform the shift

entity BOOTHMUL is 
	generic (NBIT: integer:= NumBit); -- the parallelism of the whole structure is 2*nbit-1 
	Port (	INPUT_1:	In	std_logic_vector(NBIT-1 downto 0); -- A
		    INPUT_2:	In	std_logic_vector(NBIT-1 downto 0); -- B
		    MUL_OUT:	Out	std_logic_vector(2*NBIT-1 downto 0));
end BOOTHMUL; 

architecture STRUCTURAL of BOOTHMUL is
	
component MUX81_GENERIC is
GENERIC (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			B:	In	std_logic_vector(NBIT-1 downto 0);
			C:	In	std_logic_vector(NBIT-1 downto 0);
			D:	In	std_logic_vector(NBIT-1 downto 0);
			E:	In	std_logic_vector(NBIT-1 downto 0);
			F:	In	std_logic_vector(NBIT-1 downto 0);
			G:	In	std_logic_vector(NBIT-1 downto 0);
			H:	In	std_logic_vector(NBIT-1 downto 0);
			SEL:	In	std_logic_vector(2 downto 0);
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end component;

component booth_encoder is
GENERIC (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			Y:	Out	std_logic_vector(NBIT*3/2-1 downto 0));
end component;

component complement is
GENERIC (NBIT: integer:= NumBit_encoder);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
end component;

component RCA is 
	generic (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end component; 

  signal zero_signal: std_logic_vector(2*NBIT-1 downto 0) := (others => '0');
  signal Encoder_out : std_logic_vector(NBIT*3/2-1 downto 0);
  SIGNAL positive_inputs_temp : std_logic_vector(2*NBIT-1 downto 0);
  type SignalVector is array (NBIT-1 downto 0) of std_logic_vector(2*NBIT-1 downto 0); -- matrix for the signal inputs of the MUXes
  type SignalVector_second_type is array (NBIT/2-1 downto 0) of std_logic_vector(2*NBIT-1 downto 0); -- matrix for the signal inputs of the MUXes
  type SignalVector_third_type is array (NBIT/2-2 downto 0) of std_logic_vector(2*NBIT-1 downto 0);  
  signal positive_inputs : SignalVector;
  signal negative_inputs : SignalVector;
  signal ADDER_IN_from_mux: SignalVector_second_type; 
  signal ADDER_IN_from_sum: SignalVector_third_type;
  signal Carry_out : std_logic;

begin
	

    --positive_inputs(0)  <= (others => '0'); -- nbit   check on old computer to have the same size, then we replace the nbit MSB filling as a signed number
 	
    positive_inputs_temp(NBIT-1 downto 0) <=  INPUT_1;

	positive_inputs_0_generation: for i in NBIT to 2*NBIT-1 generate
		positive_inputs_temp(i) <=  INPUT_1(NBIT-1)  ; -- generate the mux inputs of the correct length
  end generate;

	positive_inputs(0)<=  positive_inputs_temp;

	positive_signals_generation: for i in 0 to NBIT-2 generate -- the  "-2" because the element zero is already instatiated
		positive_inputs(i+1) <=  std_logic_vector(unsigned(positive_inputs(0)) sll (i+1)); -- check the length
  end generate;

	negative_signals_generation: for i in 0 to NBIT-1 generate
		complement_A_signal : complement 
			generic map (NBIT => 2*NBIT)
			Port Map (A => positive_inputs(i), Y => negative_inputs(i)); -- complement the matrix of A to create negative SIGNED inputs for the MUXes 
  end generate;

	BOOTH_enc : booth_encoder
		generic map(NBIT => NBIT)
		 Port Map (A => INPUT_2, Y => Encoder_out); -- COMPONENT=>SIGNAL
  
   MUX: for i in 0 to NBIT/2-1 generate
    MUX81_N :  MUX81_GENERIC
	  generic map (NBIT => 2*NBIT) -- worst case is -2^(nbit-1)*2^(nbit-1) => 2*nbit-1
	  Port Map (A => zero_signal, B => positive_inputs(2*i), C => positive_inputs(1+2*i),   -- A 0,B A,C 2A,D doesn't exist,E -A,F doesn't exist,G -2A,H doesn't exist
				D => zero_signal, E => negative_inputs(2*i), F => zero_signal,
				G => negative_inputs(1+2*i), H => zero_signal, 
				SEL => Encoder_out((i+2+2*i) downto (i+2*i)) ,Y => ADDER_IN_from_mux(i)); 
  end generate;
	
  first_adder: RCA
	  generic map (NBIT => 2*NBIT) 
	  Port Map (A => ADDER_IN_from_mux(0), B => ADDER_IN_from_mux(1), S => ADDER_IN_from_sum(0), Co => Carry_out ); -- see what to do with the carry out
 
  ADDER: for i in 0 to NBIT/2-3 generate -- WARNING!!!!! TO UNDERSTAND THE RANGE OF i
    RCA_n :  RCA
	  generic map (NBIT => 2*NBIT) 
	  Port Map (A => ADDER_IN_from_sum(i), B => ADDER_IN_from_mux(2+i), S => ADDER_IN_from_sum(i+1), Co => Carry_out ); -- see what to do with the carry out
  end generate;

  MUL_OUT <= ADDER_IN_from_sum(NBIT/2-2);

end STRUCTURAL;


