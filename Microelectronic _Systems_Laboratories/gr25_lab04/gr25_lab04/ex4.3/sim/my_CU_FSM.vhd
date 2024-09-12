library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

entity cu_fsm is
  generic (
    MICROCODE_MEM_SIZE :     integer := 2**6;  -- Microcode Memory Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 13;-- Control Word Size
    MY_OP_CODE_SIZE    :     integer := 4; -- effective portion of the op code needed for decoding the state
    MY_FUNC_SIZE       :     integer := 2);  -- effective portion of the func needed for decoding the state
        port (
              -- FIRST PIPE STAGE OUTPUTS
              EN1    : out std_logic;               -- enables the register file and the pipeline registers
              RF1    : out std_logic;               -- enables the read port 1 of the register file
              RF2    : out std_logic;               -- enables the read port 2 of the register file
              WF1    : out std_logic;               -- enables the write port of the register file
              -- SECOND PIPE STAGE OUTPUTS
              EN2    : out std_logic;               -- enables the pipe registers
              S1     : out std_logic;               -- input selection of the first multiplexer
              S2     : out std_logic;               -- input selection of the second multiplexer
              ALU1   : out std_logic;               -- alu control bit
              ALU2   : out std_logic;               -- alu control bit
              -- THIRD PIPE STAGE OUTPUTS
              EN3    : out std_logic;               -- enables the memory and the pipeline registers
              RM     : out std_logic;               -- enables the read-out of the memory
              WM     : out std_logic;               -- enables the write-in of the memory
              S3     : out std_logic;               -- input selection of the multiplexer
              -- INPUTS
              OPCODE : in  std_logic_vector(OP_CODE_SIZE-1 downto 0);
              FUNC   : in  std_logic_vector(FUNC_SIZE-1 downto 0);              
              Clk : in std_logic;
              Rst : in std_logic);                  -- Active Low
    end cu_fsm;

architecture dlx_cu_rtl of cu_fsm is
                             
  signal IR_opcode : std_logic_vector(MY_OP_CODE_SIZE-1 downto 0);  -- OpCode part of IR
  signal IR_func : std_logic_vector(MY_FUNC_SIZE-1 downto 0);   -- Func part of IR when Rtype
  signal code  : std_logic_vector(MY_OP_CODE_SIZE+MY_FUNC_SIZE-1 downto 0); 

  signal cw1 : std_logic_vector(CW_SIZE-11 downto 0); -- first stage
  signal cw2 : std_logic_vector(CW_SIZE-8-1 downto 0); -- second stage
  signal cw3 : std_logic_vector(CW_SIZE-8-1 downto 0); -- third stage

  -- declarations for FSM implementation 
	type TYPE_STATE is (--STATE FOR STAGE 1
						RESET, STATE_1_R_ADD, STATE_1_R_SUB, STATE_1_R_AND, STATE_1_R_OR, STATE_1_I_ADD1, STATE_1_I_SUB1,
						STATE_1_I_AND1, STATE_1_I_OR1, STATE_1_I_ADD2, STATE_1_I_SUB2,
						STATE_1_I_AND2, STATE_1_I_OR2, STATE_1_I_MOV, STATE_1_S_REG1, STATE_1_S_REG2,
						STATE_1_S_MEM2, STATE_1_L_MEM1, STATE_1_L_MEM2, 
    					--STATE FOR STAGE 2
						STATE_2_R_ADD, STATE_2_R_SUB, STATE_2_R_AND, STATE_2_R_OR, STATE_2_I_ADD1, STATE_2_I_SUB1,
						STATE_2_I_AND1, STATE_2_I_OR1, STATE_2_I_ADD2, STATE_2_I_SUB2,
						STATE_2_I_AND2, STATE_2_I_OR2, STATE_2_S_REG1_2, 
						STATE_2_S_MEM2, STATE_2_L_MEM1, STATE_2_L_MEM2,
   					    --STATE FOR STAGE 3
						WB_1, WB_2, WB_3
	);
	signal CURRENT_STATE : TYPE_STATE := RESET;
	signal NEXT_STATE : TYPE_STATE := RESET;
 
begin  -- dlx_cu_rtl
  
  code <=  IR_func & IR_opcode ; -- code is the signal in the sensitivity list of the fsm process; has to be equal to one of the my_type
   
  IR_opcode <= OPCODE(OP_CODE_SIZE-3 downto 0); -- mask the bits needed
  IR_func  <= FUNC(FUNC_SIZE-10 downto 0); -- mask the bits needed

  -- stage one control signals
  EN1 <= cw1(CW_SIZE-10-1);
  RF1 <= cw1(CW_SIZE-10-2);
  RF2 <= cw1(CW_SIZE-10-3);
  -- stage two control signals
  EN2  <= cw2(CW_SIZE-8-1);
  S1   <= cw2(CW_SIZE-8-2);
  S2   <= cw2(CW_SIZE-8-3);
  ALU1 <= cw2(CW_SIZE-8-4);
  ALU2 <= cw2(CW_SIZE-8-5);
  -- stage three control signals
  EN3 <= cw3(CW_SIZE-8-1);
  RM  <= cw3(CW_SIZE-8-2);
  WM  <= cw3(CW_SIZE-8-3);
  WF1 <= cw3(CW_SIZE-8-4);
  S3  <= cw3(CW_SIZE-8-5);
-----------------------------------------------------
-- transition state process 
 	P_OPC : process(Clk, Rst)		
	begin
		if Rst='0' then
	        	CURRENT_STATE <= reset;
		elsif (Clk ='1' and Clk'EVENT) then 
			CURRENT_STATE <= NEXT_STATE;
		end if;
	end process P_OPC;

	P_NEXT_STATE : process(CURRENT_STATE, code)
	begin
		--NEXT_STATE <= CURRENT_STATE;

		case CURRENT_STATE is
			--when others => -- R-TYPE first stage
----------------------------------------------------------------------
--SECOND STAGE R_TYPE
			when STATE_1_R_ADD => NEXT_STATE <= STATE_2_R_ADD;
			when STATE_1_R_SUB => NEXT_STATE <= STATE_2_R_SUB;
			when STATE_1_R_AND => NEXT_STATE <= STATE_2_R_AND;
			when STATE_1_R_OR => NEXT_STATE <= STATE_2_R_OR;
--------------------------------------------------------------------
--SECOND STAGE I_TYPE
			when STATE_1_I_ADD1 => NEXT_STATE <= STATE_2_I_ADD1;
			when STATE_1_I_SUB1 => NEXT_STATE <= STATE_2_I_SUB1;
			when STATE_1_I_AND1 => NEXT_STATE <= STATE_2_I_AND1;
			when STATE_1_I_OR1 => NEXT_STATE <= STATE_2_I_OR1;
--------------------------------------------------------------------
			when STATE_1_I_ADD2 => NEXT_STATE <= STATE_2_I_ADD2;
			when STATE_1_I_SUB2 => NEXT_STATE <= STATE_2_I_SUB2;
			when STATE_1_I_AND2 => NEXT_STATE <= STATE_2_I_AND2;
			when STATE_1_I_OR2 => NEXT_STATE <= STATE_2_I_OR2;
------------------------------------------------------------------
			when STATE_1_I_MOV => NEXT_STATE <= STATE_2_I_ADD1; -- since the outputs are equal to the add1 state
			when STATE_1_S_REG1 => NEXT_STATE <= STATE_2_S_REG1_2; 
			when STATE_1_S_REG2 => NEXT_STATE <= STATE_2_S_REG1_2;
			when STATE_1_S_MEM2 => NEXT_STATE <= STATE_2_S_MEM2;
			when STATE_1_L_MEM1 => NEXT_STATE <= STATE_2_L_MEM1;
			when STATE_1_L_MEM2 => NEXT_STATE <= STATE_2_L_MEM2;
-------------------------------------------------------------------
-- THIRD STAGE R-TYPE
			when STATE_2_R_ADD => NEXT_STATE <= WB_1;
			when STATE_2_R_SUB => NEXT_STATE <= WB_1;
			when STATE_2_R_AND => NEXT_STATE <= WB_1;
			when STATE_2_R_OR => NEXT_STATE <= WB_1;
--------------------------------------------------------------------
--THIRD STAGE I-TYPE
			when STATE_2_I_ADD1 => NEXT_STATE <=  WB_1;
			when STATE_2_I_SUB1 => NEXT_STATE <=  WB_1;
			when STATE_2_I_AND1 => NEXT_STATE <=  WB_1;
			when STATE_2_I_OR1 => NEXT_STATE <=  WB_1;
--------------------------------------------------------------------
			when STATE_2_I_ADD2 => NEXT_STATE <=  WB_1;
			when STATE_2_I_SUB2 => NEXT_STATE <=  WB_1;
			when STATE_2_I_AND2 => NEXT_STATE <=  WB_1;
			when STATE_2_I_OR2 => NEXT_STATE <=  WB_1;
------------------------------------------------------------------
			when STATE_2_S_REG1_2 => NEXT_STATE <=  WB_1;
			when STATE_2_S_MEM2 => NEXT_STATE <=  WB_2;
			when STATE_2_L_MEM1 => NEXT_STATE <=  WB_3;
			when STATE_2_L_MEM2 => NEXT_STATE <=  WB_3;
			
			when others => -- if the state is reset or any of the 3 wb	
------------------------------------------------		   
			if IR_opcode=RTYPE then				-- if is a R-type operation check the func code
				if IR_func = RTYPE_ADD then
					NEXT_STATE <= STATE_1_R_ADD;
				elsif 
					IR_func = RTYPE_SUB then
					NEXT_STATE <= STATE_1_R_SUB;
				elsif 
					IR_func = RTYPE_AND then
					NEXT_STATE <= STATE_1_R_AND;
				elsif 
					IR_func = RTYPE_OR then
					NEXT_STATE <= STATE_1_R_OR;
			end if;
------------------------------------------------		   
				-- I-TYPE first stage
				elsif code = ITYPE_ADDI1 then  -- otherwise check if it is a existing I-type 
					NEXT_STATE <= STATE_1_I_ADD1;
				elsif 
					code = ITYPE_SUBI1 then
					NEXT_STATE <= STATE_1_I_SUB1;
				elsif 
					code = ITYPE_ANDI1 then
					NEXT_STATE <= STATE_1_I_AND1;
				elsif 
					code = ITYPE_ORI1 then
					NEXT_STATE <= STATE_1_I_OR1;
--------------------------------------------------------------------
				elsif code = ITYPE_ADDI2 then
					NEXT_STATE <= STATE_1_I_ADD2;
				elsif 
					code = ITYPE_SUBI2 Then
					NEXT_STATE <= STATE_1_I_SUB2;
				elsif 
					code = ITYPE_ANDI2 then
					NEXT_STATE <= STATE_1_I_AND2;
				elsif 
					code = ITYPE_ORI2 then
					NEXT_STATE <= STATE_1_I_OR2;
--------------------------------------------------------------------
				elsif code = ITYPE_MOV  then
					NEXT_STATE <= STATE_1_I_MOV;
				elsif 
					code = ITYPE_S_REG1 Then
					NEXT_STATE <= STATE_1_S_REG1;
				elsif 
					code = ITYPE_S_REG2 then
					NEXT_STATE <= STATE_1_S_REG2;
				elsif 
					code = ITYPE_S_MEM2 then
					NEXT_STATE <= STATE_1_S_MEM2;
				elsif 
					code = ITYPE_L_MEM1 then
					NEXT_STATE <= STATE_1_L_MEM1;
				elsif 
					code = ITYPE_L_MEM2 then
					NEXT_STATE <= STATE_1_L_MEM2;
			end if;					
		
		end case;	
	end process P_NEXT_STATE;
---------------------------------------
-- outputs process	
	P_OUTPUTS: process(CURRENT_STATE)
	begin
		--O <= '0';
		case CURRENT_STATE is	
			when RESET => cw1 <= "000";
--FIRST STAGE R_TYPE OUT => CONTROL WORD 1
			when STATE_1_R_ADD => cw1 <= "111";
			when STATE_1_R_SUB => cw1 <= "111";
			when STATE_1_R_AND => cw1 <= "111";
			when STATE_1_R_OR => cw1 <=  "111";
--------------------------------------------------------------------
--FIRST STAGE I_TYPE OUT => CONTROL WORD 1
			when STATE_1_I_ADD1 => cw1 <= "101";
			when STATE_1_I_SUB1 => cw1 <= "101";
			when STATE_1_I_AND1 => cw1 <= "101";
			when STATE_1_I_OR1 => cw1 <= "101";
--------------------------------------------------------------------
			when STATE_1_I_ADD2 => cw1 <= "110";
			when STATE_1_I_SUB2 => cw1 <= "110";
			when STATE_1_I_AND2 => cw1 <= "110";
			when STATE_1_I_OR2 => cw1 <= "110";
------------------------------------------------------------------
			when STATE_1_I_MOV => cw1 <= "101";
			when STATE_1_S_REG1 => cw1 <= "100";
			when STATE_1_S_REG2 => cw1 <= "100";
			when STATE_1_S_MEM2 => cw1 <= "110";
			when STATE_1_L_MEM1 => cw1 <= "101";
			when STATE_1_L_MEM2 => cw1 <= "110";
-------------------------------------------------------------------
--SECOND STAGE R_TYPE OUT => CONTROL WORD 2
			when STATE_2_R_ADD => cw2 <= "10100";
			when STATE_2_R_SUB => cw2 <= "10101";
			when STATE_2_R_AND => cw2 <= "10110";
			when STATE_2_R_OR => cw2 <= "10111";
--------------------------------------------------------------------
--SECOND STAGE I_TYPE OUT => CONTROL WORD 2
			when STATE_2_I_ADD1 => cw2 <= "11100";
			when STATE_2_I_SUB1 => cw2 <= "11100";
			when STATE_2_I_AND1 => cw2 <= "11100";
			when STATE_2_I_OR1 => cw2 <= "11100";
--------------------------------------------------------------------
			when STATE_2_I_ADD2 => cw2 <= "10000";
			when STATE_2_I_SUB2 => cw2 <= "10001";
			when STATE_2_I_AND2 => cw2 <= "10010";
			when STATE_2_I_OR2 => cw2 <= "10011";
------------------------------------------------------------------
			when STATE_2_S_REG1_2 => cw2 <= "11000";
			when STATE_2_S_MEM2 => cw2 <= "10000";
			when STATE_2_L_MEM1 => cw2 <= "11100";
			when STATE_2_L_MEM2 => cw2 <= "00100";
----------------------------------------------------
			when WB_1 => cw3 <= "10001";
			when WB_2 => cw3 <= "10100";
			when WB_3 => cw3 <= "11011";
--------------------------------------
			when others => cw1 <= "000"; -- error 		
		end case; 	
	end process P_OUTPUTS;

end dlx_cu_rtl;
