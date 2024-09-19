-- Testbench for the ACCUMULATOR

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

-- Include the package where NumBit is defined
use WORK.CONSTANTS.all;

-- Declare a testbench entity with no ports
entity tb_ACCUMULATOR is
end tb_ACCUMULATOR;

architecture test of tb_ACCUMULATOR is

    -- Constants
    constant CLK_PERIOD : time := 10 ns;
    constant NBIT_ACC   : integer := NumBit;  -- Use the NumBit from the CONSTANTS package

    -- Signals to connect to the accumulator
    signal A_sig, B_sig, Y_sig : std_logic_vector(NBIT_ACC - 1 downto 0);
    signal CLK_sig, RST_n_sig, ACCUMULATE_sig : std_logic;

    -- Instantiate the accumulator component
    component ACCUMULATOR is
        generic (NBIT_ACC: integer := NumBit);
        port (
            A          : in  std_logic_vector(NBIT_ACC - 1 downto 0);
            B          : in  std_logic_vector(NBIT_ACC - 1 downto 0);
            CLK        : in  std_logic;
            RST_n      : in  std_logic;
            ACCUMULATE : in  std_logic;
            Y          : out std_logic_vector(NBIT_ACC - 1 downto 0)
        );
    end component;

begin

    -- Instantiate the accumulator
    UUT: ACCUMULATOR
        generic map (
            NBIT_ACC => NBIT_ACC
        )
        port map (
            A          => A_sig,
            B          => B_sig,
            CLK        => CLK_sig,
            RST_n      => RST_n_sig,
            ACCUMULATE => ACCUMULATE_sig,
            Y          => Y_sig
        );

    -- Clock generation process
    clk_process: process
    begin
        CLK_sig <= '0';
        wait for CLK_PERIOD / 2;
        CLK_sig <= '1';
        wait for CLK_PERIOD / 2;
    end process;

    -- Stimulus process to apply test vectors
    stim_proc: process
    begin
        -- Initialize inputs
        A_sig          <= (others => '0');
        B_sig          <= (others => '0');
        ACCUMULATE_sig <= '0';
        RST_n_sig      <= '0';  -- Apply reset
        wait for CLK_PERIOD * 2;

        RST_n_sig <= '1';  -- Release reset
        wait for CLK_PERIOD;

        -- First test: Load initial value into accumulator
        A_sig          <= x"0000000000000001";   -- 64-bit hexadecimal equivalent of "1"
        B_sig          <= x"0000000000000005";   -- 64-bit hexadecimal equivalent of "5"
        ACCUMULATE_sig <= '0';  -- Not accumulating, load B
        wait for CLK_PERIOD;

        -- Start accumulating
        ACCUMULATE_sig <= '1';  -- Start accumulating
        A_sig          <= x"0000000000000002";   -- 64-bit hexadecimal equivalent of "2"
        wait for CLK_PERIOD;

        A_sig <= x"0000000000000003";  -- 64-bit hexadecimal equivalent of "3"
        wait for CLK_PERIOD;

        A_sig <= x"0000000000000004";  -- 64-bit hexadecimal equivalent of "4"
        wait for CLK_PERIOD;

        -- Stop accumulating and load a new value
        ACCUMULATE_sig <= '0';
        A_sig          <= x"0000000000000000";  -- 64-bit equivalent of "0"
        B_sig          <= x"0000000000000002";   -- 64-bit hexadecimal equivalent of "2"
        wait for CLK_PERIOD;

        -- Start accumulating again
        ACCUMULATE_sig <= '1';
        A_sig          <= x"0000000000000001";   -- 64-bit hexadecimal equivalent of "1"
        wait for CLK_PERIOD;

        A_sig <= x"0000000000000002";  -- 64-bit hexadecimal equivalent of "2"
        wait for CLK_PERIOD;

        A_sig <= x"0000000000000003";  -- 64-bit hexadecimal equivalent of "3"
        wait for CLK_PERIOD;

        -- Finish simulation
        wait;
    end process;

end test;
