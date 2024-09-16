library ieee;
use ieee.std_logic_1164.all;

entity carry_gen is 

	port(
	
	ai	: in std_logic_vector (32 downto 1);
	bi	: in std_logic_vector (32 downto 1);
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
	Gij		: out buffer std_logic
	
	--Gij <= (Gk1j and Pik) or Gik;
	
	);
end component G_block;

component PG_block is 
	port(
	
	
	Gk1j	: in std_logic;
	Pk1j	: in std_logic;
	Pik 	: in std_logic;
	Gik		: in std_logic;
	Pij		: out buffer std_logic;	
	Gij		: out buffer std_logic
		
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
   
-- first level signals
	type SignalVector is array (N downto 1) of std_logic;
    signal p_sig, g_sig : SignalVector;
	
--second level signals
	constant M: integer := 16;
	type SignalVector_1 is array (M downto 2) of std_logic;
	signal p_sig_1: SignalVector_1;
	
	type SignalVector_1g is array (M downto 1) of std_logic;
	signal g_sig_1: SignalVector_1g;

-- third level signals
	constant P: integer := 12;
	type SignalVector_2 is array (P downto 2) of std_logic;
    signal p_sig_2: SignalVector_2;
	
	type SignalVector_2g is array (P downto 1) of std_logic;
	signal g_sig_2: SignalVector_2g;



begin

    -- Generate PG_network instances
pg_network_: for i in 1 to N generate
        network: PG_network port map (
				a => ai(i),  -- Input bit from operand A
				b => bi(i),  -- Input bit from operand B
				p => p_sig(i),  -- Propagate signal
				g => g_sig(i)   -- Generate signal
        );
 end generate;

	-- Single G block in the first level 
G_block_1: G_block port map( Pik => p_sig(1), Gk1j => c0, Gik => g_sig(1), Gij => p_sig_1(1)); --This Gij will be one bit in second level of the tree

	-- PG blocks in first level
PG_block_1: for i in 2 to M generate
		pgblock: PG_block port map (
				Gk1j=>g_sig(i),
				Pk1j=>p_sig(i),
				Pik =>p_sig(i+1),
				Gik	=>g_sig(i+1),
				Pij	=>p_sig_1(i),	
				Gij	=>g_sig_1(i)	
		);
	
	-- Single G block in the second level 
G_block_2: G_block port map( Pik => p_sig_1(2), Gk1j => g_sig_1(1) , Gik => g_sig_1(2), Gij => p_sig_2(1), Gij => carry_out(0));

	-- PG blocks in the second level

PG_block_2: for i in 2 to 8 generate
		pgblock: PG_block port map (
				Gk1j=>g_sig(i),
				Pk1j=>p_sig(i),
				Pik =>p_sig(i+1),
				Gik	=>g_sig(i+1),
				Pij	=>p_sig_1(i),	
				Gij	=>g_sig_1(i)	
		);

end architecture structural;