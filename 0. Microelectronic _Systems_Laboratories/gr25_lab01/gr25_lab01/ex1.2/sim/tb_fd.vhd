library IEEE;
use IEEE.std_logic_1164.all;

use WORK.constants.all;

entity TBFD is
end TBFD;

architecture TEST of TBFD is
	constant NBIT: integer := 4; 
	signal	CK:		std_logic:='0';
	signal	RESET:		std_logic :='0';
	signal	D:		std_logic_vector(NBIT-1 downto 0);
	signal	QSYNCH:		std_logic_vector(NBIT-1 downto 0);
	signal	QASYNCH:	std_logic_vector(NBIT-1 downto 0);
	
	component FD_GENERIC
	
	GENERIC (NBIT: integer:= NumBit);
	Port (	D:	In	std_logic_vector(NBIT-1 downto 0);
			CK:	In	std_logic;
			RESET:	In	std_logic;
			Q:	Out	std_logic_vector(NBIT-1 downto 0));
	end component;

begin 
		
	UFD1 : FD_GENERIC
	Generic Map (NBIT)
	Port Map ( D, CK, RESET, QSYNCH); -- sinc

	UFD2 : FD_GENERIC
	Generic Map (NBIT)
	Port Map ( D,CK, RESET, QASYNCH); -- asinc
	

	RESET <= '0', '1' after 0.6 ns, '0' after 1.1 ns, '1' after 2.2 ns, '0' after 3.2 ns;	
	
	D <= "0011", "1011" after 0.4 ns, "0000" after 1.1 ns, "1101" after 1.4 ns, "0110" after 1.7 ns, "0001" after 1.9 ns;

	
	PCLOCK : process(CK)
	begin
		CK <= not(CK) after 0.5 ns;	
	end process;


end TEST;

configuration FDTEST of TBFD is
   for TEST
      for UFD1 : FD_GENERIC
         use configuration WORK.CFG_FD_GEN_PIPPO; -- sincrono
      end for;
      for UFD2 : FD_GENERIC
         use configuration WORK.CFG_FD_GEN_PLUTO; -- asincrono
      end for;

   end for;
end FDTEST;

