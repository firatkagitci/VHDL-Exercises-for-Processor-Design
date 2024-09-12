library IEEE;

use IEEE.std_logic_1164.all;
use WORK.constants.all;
use work.constants.all;

entity booth_encoder is
GENERIC (NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
			Y:	Out	std_logic_vector(NBIT*3/2-1 downto 0));
end booth_encoder;
 
architecture STRUCTURAL of booth_encoder is

component encoder is
	Port (	A:	In	std_logic_vector(2 downto 0);
			Y:	Out	std_logic_vector(2 downto 0));
end component;
 
  signal input : std_logic_vector(NBIT downto 0);

begin

	input <= A & '0'; -- add the B(-1) that is always equal to '0'  
  ENC: for i in 0 to NBIT/2-1 generate
    ENCODER_N :  encoder
	  Port Map ( Y => Y((i+2+2*i) downto (i+2*i)),
				 A => input((2+2*i) downto (2*i))); 
  end generate;
  

end STRUCTURAL;


