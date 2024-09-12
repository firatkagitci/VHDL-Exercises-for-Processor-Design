library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;
use WORK.all;
use work.constants.all;

entity register_file is
GENERIC (NBIT: integer:= NumBit;
		NADDRESS: integer:= N_bit_address);
 port ( CLK: 		IN std_logic;
         RESET: 	IN std_logic;
	 ENABLE: 	IN std_logic;
	 RD1: 		IN std_logic;
	 RD2: 		IN std_logic;
	 WR: 		IN std_logic;
	 ADD_WR: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 ADD_RD1: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 ADD_RD2: 	IN std_logic_vector(N_bit_address-1 downto 0);
	 DATAIN: 	IN std_logic_vector(NumBit-1 downto 0);
     OUT1: 		OUT std_logic_vector(NumBit-1 downto 0);
	 OUT2: 		OUT std_logic_vector(NumBit-1 downto 0));
end register_file;

architecture A of register_file is

        -- suggested structures
        subtype REG_ADDR is natural range 0 to 2**N_bit_address-1; -- using natural type
	type REG_ARRAY is array(REG_ADDR) of std_logic_vector(NumBit-1 downto 0); 
	signal REGISTERS : REG_ARRAY; 

	
begin 
 regFileProcess : process (CLK) is
  begin
    if(CLK = '1' and clk'event)then
  if(RESET = '1')then
   registers <= (others =>(others =>'0'));
  else
   if( ENABLE = '1')then
    if(RD1 = '1' and RD2='0' and WR='0')then
     OUT1 <= registers(to_integer(unsigned(ADD_RD1)));
    	elsif(RD1 = '0' and RD2='1' and WR='0')then
			 OUT2 <= registers(to_integer(unsigned(ADD_RD2)));
				elsif (RD1 = '0' and RD2='0' and WR='1')then
					  registers(to_integer(unsigned(ADD_WR))) <= DATAIN;  -- Write
						elsif(RD1 = '1' and RD2='1' and WR='0')then
						 OUT2 <= registers(to_integer(unsigned(ADD_RD2)));
						 OUT1 <= registers(to_integer(unsigned(ADD_RD1)));
							elsif (RD1 = '1' and RD2='0' and WR='1')then
							   OUT1 <= registers(to_integer(unsigned(ADD_RD1)));
							   registers(to_integer(unsigned(ADD_WR))) <= DATAIN;
								elsif (RD1 = '0' and RD2='1' and WR='1')then
								   OUT2 <= registers(to_integer(unsigned(ADD_RD2)));
								   registers(to_integer(unsigned(ADD_WR))) <= DATAIN;
									elsif (RD1 = '1' and RD2='1' and WR='1')then
								   		OUT2 <= registers(to_integer(unsigned(ADD_RD2)));
 										OUT1 <= registers(to_integer(unsigned(ADD_RD1)));
								   		registers(to_integer(unsigned(ADD_WR))) <= DATAIN;
  			 end if;
 		 end if; 
    end if; 
end if;
 end process;

end A;

