library IEEE;
use IEEE.std_logic_1164.all; 

use WORK.constants.all;

entity FD_GENERIC is
GENERIC (NBIT: integer:= NumBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0));
end FD_GENERIC;

architecture PIPPO of FD_GENERIC is -- flip flop D with syncronous reset
			component fd
			Port (	D:	In	std_logic;
					CK:	In	std_logic;
					RESET:	In	std_logic;
					Q:	Out	std_logic);
	end component;

begin
 	gen_pippo : for i in 0 to NBIT-1 generate -- generation on n FD syncronous each for one bit of the input
	FD_i: fd port map
     (D => D(i) , CK => CK, RESET => RESET, Q => Q(i));
  end generate;

end PIPPO;

architecture PLUTO of FD_GENERIC is -- flip flop D with asyncronous reset
					component fd
			Port (	D:	In	std_logic;
					CK:	In	std_logic;
					RESET:	In	std_logic;
					Q:	Out	std_logic);
	end component;

begin
 	gen_pluto : for z in 0 to NBIT-1 generate -- generation on n FD asyncronous each for one bit of the input
	FD_z: fd port map
     (D => D(z) , CK => CK, RESET => RESET, Q => Q(z));
  end generate;

end PLUTO;


configuration CFG_FD_GEN_PIPPO of FD_GENERIC is
	for PIPPO
	 for gen_pippo
	  for all: fd
			use configuration WORK.CFG_FD_PIPPO;
	  end for;
	 end for;
	end for;
end CFG_FD_GEN_PIPPO;


configuration CFG_FD_GEN_PLUTO of FD_GENERIC is
	for PLUTO
	 for gen_pluto
	  for all: fd
			use configuration WORK.CFG_FD_PLUTO;
	  end for;
	 end for;
	end for;
end CFG_FD_GEN_PLUTO;


