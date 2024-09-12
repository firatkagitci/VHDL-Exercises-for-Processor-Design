library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use work.myTypes.all;
--use ieee.numeric_std.all;
--use work.all;

entity cu is
  generic (
    MICROCODE_MEM_SIZE :     integer := 2**6;  -- Microcode Memory Size
    FUNC_SIZE          :     integer := 11;  -- Func Field Size for R-Type Ops
    OP_CODE_SIZE       :     integer := 6;  -- Op Code Size
    IR_SIZE            :     integer := 32;  -- Instruction Register Size    
    CW_SIZE            :     integer := 13;-- Control Word Size
    MY_OP_CODE_SIZE    :     integer := 4; -- effective portion of the op code needed for addressing the LUT
    MY_FUNC_SIZE       :     integer := 2);  -- effective portion of the func needed for addressing the LUT
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
    end cu;

architecture dlx_cu_rtl of cu is
   type mem_array is array (integer range 0 to MICROCODE_MEM_SIZE-1) of std_logic_vector(CW_SIZE-1 downto 0);
  signal cw_mem : mem_array := ("1111010010001", -- R type ADD
                                "1111010110001", -- R type SUB
                                "1111011010001", -- R type AND
                                "1111011110001", -- R type OR

                                "1011110010001", -- I type ADD1 we assume rf2 (so the respective bit is active) and input 1 
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1011110110001", -- I type SUB1 we assume rf2 (so the respective bit is active) and input 1
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1011111010001", -- I type AND1 we assume rf2 (so the respective bit is active) and input 1
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1011111110001", -- I type OR1 we assume rf2 (so the respective bit is active) and input 1
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1101000010001", -- I type ADD2 we assume rf1 (so the respective bit is active) and input 2 
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1101000110001", -- I type SUB2 we assume rf1 (so the respective bit is active) and input 2
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								 
                                "1101001010001", -- I type AND2 we assume rf1 (so the respective bit is active) and input 2
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								 
                                "1101001110001", -- I type OR2 we assume rf1 (so the respective bit is active) and input 2
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory


                                "1011110010001", -- I type MOV RA=rf2 active and input 1 as immediate equal to zero
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                            "1001100010001", -- I type S_REG1 input 1 and input 2 active the latter of them is equal to zero
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                           "1001100010001", -- I type S_REG2 input 1 and input 2 active the first of them is equal to zero
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1101000010100", -- I type S_MEM2 RA=rf1 the wf1 is not active so the s3 of the third mux is useless
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1011110011011", -- I type L_MEM1 RA=rf2 wf1 is active and select the output of the memory that has just been read
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory

                                "1100010011011", -- I type L_MEM2 RA=rf1 wf1 is active and select the output of the memory that has just been read
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000", -- void memeory
								"0000000000000"); -- void memeory


                                
                                
  signal IR_opcode : std_logic_vector(MY_OP_CODE_SIZE-1 downto 0);  -- OpCode part of IR
  signal IR_func : std_logic_vector(MY_FUNC_SIZE-1 downto 0);   -- Func part of IR when Rtype
  signal cw   : std_logic_vector(CW_SIZE-1 downto 0); -- full control word read from cw_mem EQUAL TO 13 because we have 13 outputs


  -- control word is shifted to the correct stage
  signal cw1 : std_logic_vector(CW_SIZE-1 downto 0); -- first stage
  signal cw2 : std_logic_vector(CW_SIZE-1-3 downto 0); -- second stage
  signal cw3 : std_logic_vector(CW_SIZE-1-3-5 downto 0); -- third stage

 
begin  -- dlx_cu_rtl

  IR_opcode <= OPCODE(OP_CODE_SIZE-3 downto 0); -- mask the bits needed
  IR_func  <= FUNC(FUNC_SIZE-10 downto 0); -- mask the bits needed
 
  cw <= cw_mem(conv_integer(IR_opcode & IR_func)); -- "IR_opcode & IR_func" adresses the correct line containing the control word neeeded

  -- stage one control signals
  EN1 <= cw1(CW_SIZE-1);
  RF1 <= cw1(CW_SIZE-2);
  RF2 <= cw1(CW_SIZE-3);
--  WF1 <= cw1(CW_SIZE-4);
  -- stage two control signals
  EN2  <= cw2(CW_SIZE-4);
  S1   <= cw2(CW_SIZE-5);
  S2   <= cw2(CW_SIZE-6);
  ALU1 <= cw2(CW_SIZE-7);
  ALU2 <= cw2(CW_SIZE-8);
  -- stage three control signals
  EN3 <= cw3(CW_SIZE-9);
  RM  <= cw3(CW_SIZE-10);
  WM  <= cw3(CW_SIZE-11);
  WF1 <= cw3(CW_SIZE-12);
  S3  <= cw3(CW_SIZE-13);
 
  -- process to pipeline control words
  CW_PIPE: process (Clk, Rst)
  begin  -- process Clk
    if Rst = '0' then                   -- asynchronous reset (active low)
      cw1 <= (others => '0');
      cw2 <= (others => '0');
      cw3 <= (others => '0');

    elsif Clk'event and Clk = '1' then  -- rising clock edge
      cw1 <= cw;
      cw2 <= cw1(CW_SIZE-1-3 downto 0);
      cw3 <= cw2(CW_SIZE-1-3-5 downto 0);

    end if;
  end process CW_PIPE;

end dlx_cu_rtl;
