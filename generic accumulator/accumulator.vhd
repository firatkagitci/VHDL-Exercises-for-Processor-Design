library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
------------------------------------------


entity ACCUMULATOR is 
    generic ( NBIT_ACC: integer:= numBit);
    port (
      A          : in  std_logic_vector(NBIT_ACC - 1 downto 0);
      B          : in  std_logic_vector(NBIT_ACC - 1 downto 0);
      CLK        : in  std_logic;
      RST_n      : in  std_logic;
      ACCUMULATE : in  std_logic;
      Y          : out std_logic_vector(NBIT_ACC - 1 downto 0));

end ACCUMULATOR; 



architecture STRUCTURAL of ACCUMULATOR is

--signals here
	signal MUX_OUT  : std_logic_vector(NBIT_ACC - 1 downto 0);
    signal REG_OUT  : std_logic_vector(NBIT_ACC - 1 downto 0);
    signal ADD_OUT  : std_logic_vector(NBIT_ACC - 1 downto 0);
	SIGNAL Co_signal : std_logic;

	component RCA is 
	generic (--DRCAS : 	Time := 0 ns;
	         --DRCAC : 	Time := 0 ns;
			 NBIT: integer:= numBit);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0);
		B:	In	std_logic_vector(NBIT-1 downto 0);
		Ci:	In	std_logic;
		S:	Out	std_logic_vector(NBIT-1 downto 0);
		Co:	Out	std_logic);
    end component; 

    component MUX21_GENERIC is
    GENERIC (NBIT: integer:= NumBit);
		--DELAY_MUX: Time:= tp_mux);
	Port (	A:	In	std_logic_vector(NBIT-1 downto 0) ;
			B:	In	std_logic_vector(NBIT-1 downto 0);
			SEL:	In	std_logic;
			Y:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

  	component FD_GENERIC is
	GENERIC (NBIT: integer:= NumBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

begin

	MUX: MUX21_GENERIC 
	  generic map (NBIT => NBIT_ACC)--,DELAY_MUX => tp_mux) 
	  Port Map (A => REG_OUT, B=>B, SEL=> ACCUMULATE, Y=> MUX_OUT);   

   ADDER: RCA
	  generic map (NBIT => NBIT_ACC) 
	  Port Map (A => A, B => MUX_OUT, Ci => '0', S => ADD_OUT, Co => Co_signal); 

   FF: FD_GENERIC
	  generic map (NBIT => NBIT_ACC) 
	  Port Map (D => ADD_OUT, CK => CLK, RESET => RST_n, Q => REG_OUT);
	Y <= REG_OUT;  


end STRUCTURAL;



architecture BEHAVIORAL of ACCUMULATOR is

	signal ADD_OUT: std_logic_vector(NBIT_ACC - 1 downto 0);
	signal MUX_OUT: std_logic_vector(NBIT_ACC - 1 downto 0);
	signal REG_OUT: std_logic_vector(NBIT_ACC -1 downto 0);
	
begin

	Y <= REG_OUT;
--Multiplexer process: if ACCUMULATE='1' select as input the output of the register 
	MuxProc:process(B,REG_OUT,ACCUMULATE)
	begin
		if (ACCUMULATE='0') then
			MUX_OUT <= B;
		else 
			MUX_OUT <= REG_OUT;
		end if;
	end process MuxProc;
	
--Adder process: perform the sum
	AddProc:process(A, MUX_OUT)
	begin
		ADD_OUT <= A + MUX_OUT;
	end process AddProc;
	
--Register process: stores the result of the ADDER
	RegProc: process(ADD_OUT,CLK,RST_n)
	begin
		if (CLK'event AND CLK='1') then
			if (RST_n='0') then	
				REG_OUT <= (OTHERS=>'0'); --reset output to all zeros
			else
					REG_OUT <= ADD_OUT;
			end if;
		end if;
	end process RegProc;
end BEHAVIORAL;



configuration CFG_ACC_STRUCTURAL of ACCUMULATOR is
  for STRUCTURAL 
    for MUX : MUX21_GENERIC
        use configuration WORK.CFG_MUX21_GEN_BEHAVIORAL;
    end for;
      for  ADDER : RCA
        use configuration WORK.CFG_RCA_STRUCTURAL;
    end for;
  for FF : FD_GENERIC 
        use configuration WORK.CFG_FD_GEN_PIPPO;
    end for;
  end for;
end CFG_ACC_STRUCTURAL;

configuration CFG_ACC_BEHAVIORAL of ACCUMULATOR is
  for BEHAVIORAL 
  end for;
end CFG_ACC_BEHAVIORAL;
