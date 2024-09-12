library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes_for_uP.all;

entity cu_up is
  generic (
    INSTRUCTIONS_EXECUTION_CYCLES : integer := 3;  -- Instructions Execution
                                                   -- Clock Cycles
    MICROCODE_MEM_SIZE            : integer := 2**6;  -- Microcode Memory Size
  
    OP_CODE_SIZE : integer := 6;        -- Op Code Size
    IR_SIZE      : integer := 32;       -- Instruction Register Size
    FUNC_SIZE    : integer := 11;       -- Func Field Size for R-Type Ops
    CW_SIZE      : integer := 13;		-- Control Word Size
	MY_FUNC_FOR_DECODE_SIZE : integer := 6;-- size for aligning the addresses of R-type (from 2 which is the func_size to 6 which is the size for addresing the microcode)  
    MY_FUNC_SIZE : integer := 2);  -- effective portion of the func needed 
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
end cu_up;

architecture dlx_cu_rtl of cu_up is

  type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE-1) of std_logic_vector(CW_SIZE-1 downto 0);
		-- EACH INSTRUCTION USES 3 LINES OF MEM
  signal microcode : mem_array := ("1110000000000", -- R type ADD
                                   "0001010000000", 
                                   "0000000010001",  
                                   "1010000000000", -- I type ADD1
                                   "0001110000000", 
                                   "0000000010001", 
                                   "1010000000000", -- I type SUB1
                                   "0001110100000", 
                                   "0000000010001", 
                                   "1010000000000", -- I type AND1
                                   "0001111000000", 
                                   "0000000010001", 
                                   "1010000000000", -- I type OR1
                                   "0001111100000", 
                                   "0000000010001",  
                                   "0000000000000", --VOID
                                   "1110000000000", -- R type SUB ADD = 16
                                   "0001010100000", 
                                   "0000000010001",  
                                   "1100000000000", -- I type ADD2
                                   "0001000000000", 
                                   "0000000010001", 
                                   "1100000000000", -- I type SUB2
                                   "0001000100000", 
                                   "0000000010001", 
                                   "1100000000000", -- I type AND2
                                   "0001001000000", 
                                   "0000000010001",  
                                   "1100000000000", -- I type OR2 ADD = 28
                                   "0001001100000", 
                                   "0000000010001", 
                                   "0000000000000", --VOID
                                   "1110000000000", -- R type AND
                                   "0001011000000", 
                                   "0000000010001", 
                                   "1010000000000", -- I type MOVE
                                   "0001110000000", 
                                   "0000000010001", 
                                   "1000000000000", -- I type S_REG1
                                   "0001100000000", 
                                   "0000000010001", 
                                   "1000000000000", -- I type S_REG2
                                   "0001100000000", 
                                   "0000000010001", 
                                   "1100000000000", -- I type S_MEM2 ADD = 44
                                   "0001000000000", 
                                   "0000000010100", 
                                   "0000000000000", -- VOID
                                   "1110000000000", -- R type OR ADD = 48
                                   "0001011100000", 
                                   "0000000010001",                                   
                                   "1010000000000", -- I type L_MEM1
                                   "0001110000000", 
                                   "0000000011011", 
                                   "1100000000000", -- I type L_MEM2
                                   "0000010000000", 
                                   "0000000011011",--  ADD = 56 VOID
                                   "0000000000000", 
                                   "0000000000000", -- VOID
                                   "0000000000000", -- VOID
                                   "0000000000000", -- VOID
                                   "0000000000000", -- VOID AND IDLE ADDRESS WHEN RESET ADD = 60 
                                   "0000000000000", -- VOID
                                   "0000000000000"); -- VOID

  signal cw : std_logic_vector(CW_SIZE-1 downto 0);

  signal uPC : integer range 0 to 63; -- the microcode is contained in a memory of 64 addresses
  signal ICount : integer range 0 to INSTRUCTIONS_EXECUTION_CYCLES;

  signal IR_opcode : std_logic_vector(OP_CODE_SIZE-1 downto 0);  -- OpCode part of IR
  signal IR_func : std_logic_vector(MY_FUNC_SIZE-1 downto 0);   -- Func part of IR when Rtype
                                                        
  signal func_for_decode : std_logic_vector(6-1 downto 0);

begin  -- dlx_cu_rtl

  cw <= microcode(uPC);

  IR_opcode <= OPCODE; -- assignement of the op code
  IR_func  <= FUNC(FUNC_SIZE-10 downto 0); -- mask the bits needed

  -- stage one control signals
  EN1 <= cw(CW_SIZE-1);
  RF1 <= cw(CW_SIZE-2);
  RF2 <= cw(CW_SIZE-3);
  -- stage two control signals
  EN2  <= cw(CW_SIZE-4);
  S1   <= cw(CW_SIZE-5);
  S2   <= cw(CW_SIZE-6);
  ALU1 <= cw(CW_SIZE-7);
  ALU2 <= cw(CW_SIZE-8);
  -- stage three control signals
  EN3 <= cw(CW_SIZE-9);
  RM  <= cw(CW_SIZE-10);
  WM  <= cw(CW_SIZE-11);
  WF1 <= cw(CW_SIZE-12);
  S3  <= cw(CW_SIZE-13);

  func_for_decode <=  IR_func & "0000";  -- Multiply func value by 16  to allign with the memory of 64 add

uPC_Proc: process (Rst, Clk, opcode)
  begin  -- process uPC_Proc
    if Rst = '0' then                   -- asynchronous reset (active low)
      uPC <= 60; -- is a address without control word  
      ICount <= 0;
    elsif Clk'event and Clk = '1' then  -- rising clock edge
----------------------------- first stage     
		if (ICount < 1) then
        	 ICount <= ICount+1;
		    if (IR_opcode = RTYPE) then -- check if it is a R-type instruction
		      uPC <= conv_integer(unsigned(func_for_decode)); -- assignt to uPC the address which contains the first control word of the respective instruction
		    else
		      uPC <= conv_integer(IR_opcode); -- assignt to uPC the address which contains the first control word of the respective instruction
		    end if;
----------------------------- second stage
 	  elsif (ICount < 2) then
		uPC <= uPC+1; -- update the adress to the next line which contains the second control word
        ICount <= ICount+1; -- update the counter to know the actual offset to the base address 
----------------------------- third stage
      elsif (ICount < INSTRUCTIONS_EXECUTION_CYCLES) then -- i.e. is minor than 3
        upc <= upc+1; -- upddate
	    ICount <= 0; -- reset the offset	
      else
        uPC <= 60; -- idle address
      end if; 
    end if;
  end process uPC_Proc;
end dlx_cu_rtl;
