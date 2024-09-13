library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;
use work.constants.all;

entity RCA is 
	generic (--DRCAS : 	Time := 0 ns;
	         --DRCAC : 	Time := 0 ns;
			 NBIT: integer:= NumBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
end RCA; 


architecture STRUCTURAL of RCA is

  signal STMP : std_logic_vector(NBIT-1 downto 0);
  signal CTMP : std_logic_vector(NBIT downto 0);

  component FA 
 -- generic (DFAS : 	Time := 0 ns;
  --         DFAC : 	Time := 0 ns);
  Port ( A:	In	std_logic;
	 B:	In	std_logic;
	 Ci:	In	std_logic;
	 S:	Out	std_logic;
	 Co:	Out	std_logic);
  end component; 
	

begin

  CTMP(0) <= Ci;
 
  ADDER1: for I in 1 to NBIT generate
    FAI : FA 
	--  generic map (DFAS => DRCAS, DFAC => DRCAC) 
	  Port Map (A(I-1), B(I-1), CTMP(I-1), STMP(I-1), CTMP(I)); 
  end generate;
  
  S <= STMP; 
  Co <= CTMP(NBIT);

end STRUCTURAL;


architecture BEHAVIORAL of RCA is
signal sum : std_logic_vector(NBIT downto 0);
signal ai : std_logic_vector(NBIT downto 0);
signal bi : std_logic_vector(NBIT downto 0);
begin
  ai <= '0' & A;
  bi <= '0' & B;	 
  sum <= (ai + bi + Ci);
  S <= (A + B + Ci);-- after DRCAS ;
  Co <= sum(NBIT) ;--after DRCAC;

end BEHAVIORAL;

configuration CFG_RCA_STRUCTURAL of RCA is
  for STRUCTURAL 
    for ADDER1
      for all : FA
        use configuration WORK.CFG_FA_BEHAVIORAL;
      end for;
    end for;
  end for;
end CFG_RCA_STRUCTURAL;

configuration CFG_RCA_BEHAVIORAL of RCA is
  for BEHAVIORAL 
  end for;
end CFG_RCA_BEHAVIORAL;
