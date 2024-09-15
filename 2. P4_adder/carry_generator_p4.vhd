library ieee;
use ieee.std_logic_1164.all;

entity carry_gen is 

	port(
	
	ai	: in std_logic_vector (31 downto 0);
	bi	: in std_logic_vector (31 downto 0);
	c0	: in std_logic;
	carry_out : out std_logic_vector (7 downto 0)
	
	);
	
end carry_gen;


architecture structural of carry_gen is 

component G_block is 
	port(
	
	Gk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Gij		: out std_logic
	
	--Gij <= (Gk1j and Pik) or Gik;
	
	);
end component G_block;

component PG_block is 
	port(
	
	Gk1j	: in std_logic;
	Pk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Pij		: out std_logic;	
	Gij		: out std_logic
		
	--Pij <= Pk1j and Pik;
	
	--Gij <= (Gk1j and Pik) or Gik;
	);
end component PG_block;

component PG_network is 

	port (
	a	: in std_logic; 
	b	: in std_logic;
	p 	: out std_logic;
	g 	: out std_logic
	--g <= a and b; 
	--p <= a xor b; 
	);

end component PG_network;

    constant N: integer := 32;

    -- Declare signal vectors for propagate and generate signals
    type SignalVector is array (N-1 downto 1) of std_logic;
    signal p_sig, g_sig : SignalVector;

	constant M: integer := 16;
	type SignalVector is array (M-1 downto ) of std_logic;
    signal p_sig_1, g_sig_1 : SignalVector;



begin
    -- Generate PG_network instances
    generate_1: for i in 0 to N-1 generate
        network: PG_network port map (
            a => ai(i),  -- Input bit from operand A
            b => bi(i),  -- Input bit from operand B
            p => p_sig(i),  -- Propagate signal
            g => g_sig(i)   -- Generate signal
        );
    end generate;
	
	
G_block_first_stage: G_block port map( Pik => p_sig(0), Gk1j => c0, Gik => g_sig(0), Gij => p (0) );








end architecture structural;