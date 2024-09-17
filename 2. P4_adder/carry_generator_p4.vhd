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
	constant P: integer := 8;
	type SignalVector_2 is array (P downto 2) of std_logic;
    signal p_sig_2: SignalVector_2;
	
	type SignalVector_2g is array (P downto 1) of std_logic;
	signal g_sig_2: SignalVector_2g;

-- fourth level signals
	constant Z: integer := 4;
	type SignalVector_3 is array (Z downto 2) of std_logic;
    signal p_sig_3: SignalVector_3;
	
	type SignalVector_3g is array (Z downto 1) of std_logic;
	signal g_sig_3: SignalVector_3g;
	
-- fifth level signals
	constant Y: integer := 3;
	type SignalVector_4 is array (Y downto 2) of std_logic;
    signal p_sig_4: SignalVector_4;
	
	type SignalVector_4g is array (Y downto 1) of std_logic;
	signal g_sig_4: SignalVector_4g;

	signal temp1: std_logic;
	signal temp2: std_logic;
	signal temp3: std_logic;
begin

    -- Generate PG_network instances --level zero
pg_network_1: for i in 1 to N generate
        network: PG_network port map (
				a => ai(i),  -- Input bit from operand A
				b => bi(i),  -- Input bit from operand B
				p => p_sig(i),  -- Propagate signal
				g => g_sig(i)   -- Generate signal
        );
 end generate;

	-- Single G block in the first level 
G_block_1: G_block port map( Pik => p_sig(1), Gk1j => c0, Gik => g_sig(1), Gij => g_sig_1(1)); --This Gij will be one bit in second level of the tree

pgblock_1: 	PG_block port map (Gk1j=>g_sig(2),  Pk1j=>p_sig(2),  Pik =>p_sig(3),  Gik =>g_sig(3),  Pij =>p_sig_1(2),  Gij =>g_sig_1(2));
pgblock_2: 	PG_block port map (Gk1j=>g_sig(4),  Pk1j=>p_sig(4),  Pik =>p_sig(5),  Gik =>g_sig(5),  Pij =>p_sig_1(3),  Gij =>g_sig_1(3));		
pgblock_3: 	PG_block port map (Gk1j=>g_sig(6),  Pk1j=>p_sig(6),  Pik =>p_sig(7),  Gik =>g_sig(7),  Pij =>p_sig_1(4),  Gij =>g_sig_1(4));
pgblock_4: 	PG_block port map (Gk1j=>g_sig(8),  Pk1j=>p_sig(8),  Pik =>p_sig(9),  Gik =>g_sig(9),  Pij =>p_sig_1(5),  Gij =>g_sig_1(5));		
pgblock_5: 	PG_block port map (Gk1j=>g_sig(10), Pk1j=>p_sig(10), Pik =>p_sig(11), Gik =>g_sig(11), Pij =>p_sig_1(6),  Gij =>g_sig_1(6));
pgblock_6: 	PG_block port map (Gk1j=>g_sig(12), Pk1j=>p_sig(12), Pik =>p_sig(13), Gik =>g_sig(13), Pij =>p_sig_1(7),  Gij =>g_sig_1(7));
pgblock_7: 	PG_block port map (Gk1j=>g_sig(14), Pk1j=>p_sig(14), Pik =>p_sig(15), Gik =>g_sig(15), Pij =>p_sig_1(8),  Gij =>g_sig_1(8));
pgblock_8: 	PG_block port map (Gk1j=>g_sig(16), Pk1j=>p_sig(16), Pik =>p_sig(17), Gik =>g_sig(17), Pij =>p_sig_1(9),  Gij =>g_sig_1(9));
pgblock_9: 	PG_block port map (Gk1j=>g_sig(18), Pk1j=>p_sig(18), Pik =>p_sig(19), Gik =>g_sig(19), Pij =>p_sig_1(10), Gij =>g_sig_1(10));
pgblock_10: PG_block port map (Gk1j=>g_sig(20), Pk1j=>p_sig(20), Pik =>p_sig(21), Gik =>g_sig(21), Pij =>p_sig_1(11), Gij =>g_sig_1(11));
pgblock_11: PG_block port map (Gk1j=>g_sig(22), Pk1j=>p_sig(22), Pik =>p_sig(23), Gik =>g_sig(23), Pij =>p_sig_1(12), Gij =>g_sig_1(12));
pgblock_12: PG_block port map (Gk1j=>g_sig(24), Pk1j=>p_sig(24), Pik =>p_sig(25), Gik =>g_sig(25), Pij =>p_sig_1(13), Gij =>g_sig_1(13));
pgblock_13: PG_block port map (Gk1j=>g_sig(26), Pk1j=>p_sig(26), Pik =>p_sig(27), Gik =>g_sig(27), Pij =>p_sig_1(14), Gij =>g_sig_1(14));
pgblock_14: PG_block port map (Gk1j=>g_sig(28), Pk1j=>p_sig(28), Pik =>p_sig(29), Gik =>g_sig(29), Pij =>p_sig_1(15), Gij =>g_sig_1(15));
pgblock_15: PG_block port map (Gk1j=>g_sig(30), Pk1j=>p_sig(30), Pik =>p_sig(31), Gik =>g_sig(31), Pij =>p_sig_1(16), Gij =>g_sig_1(16));		
		
	-- Single G block in the second level 
G_block_2: G_block port map( Pik => p_sig_1(2), Gk1j => g_sig_1(1) , Gik => g_sig_1(2), Gij => temp1);
	
	g_sig_2(1) <= temp1;
	carry_out(0) <= temp1;
	
	-- PG blocks in the second level
pgblock1_1:	PG_block port map(Gk1j=>g_sig_1(3),  Pk1j=>p_sig_1(3),  Pik =>p_sig_1(4),  Gik =>g_sig_1(4),  Pij =>p_sig_2(2), Gij =>g_sig_2(2));			
pgblock1_2:	PG_block port map(Gk1j=>g_sig_1(5),  Pk1j=>p_sig_1(5),  Pik =>p_sig_1(6),  Gik =>g_sig_1(6),  Pij =>p_sig_2(3), Gij =>g_sig_2(3));
pgblock1_3:	PG_block port map(Gk1j=>g_sig_1(7),  Pk1j=>p_sig_1(7),  Pik =>p_sig_1(8),  Gik =>g_sig_1(8),  Pij =>p_sig_2(4), Gij =>g_sig_2(4));
pgblock1_4:	PG_block port map(Gk1j=>g_sig_1(9),  Pk1j=>p_sig_1(9),  Pik =>p_sig_1(10), Gik =>g_sig_1(10), Pij =>p_sig_2(5), Gij =>g_sig_2(5));
pgblock1_5:	PG_block port map(Gk1j=>g_sig_1(11), Pk1j=>p_sig_1(11), Pik =>p_sig_1(12), Gik =>g_sig_1(12), Pij =>p_sig_2(6), Gij	=>g_sig_2(6));
pgblock1_6:	PG_block port map(Gk1j=>g_sig_1(13), Pk1j=>p_sig_1(13), Pik =>p_sig_1(14), Gik =>g_sig_1(14), Pij =>p_sig_2(7), Gij	=>g_sig_2(7));
pgblock1_7:	PG_block port map(Gk1j=>g_sig_1(15), Pk1j=>p_sig_1(15), Pik =>p_sig_1(16), Gik =>g_sig_1(16), Pij =>p_sig_2(8), Gij =>g_sig_2(8));
					
							
	-- Single G block in the third level 
G_block_3: G_block port map( Pik => p_sig_2(2), Gk1j => g_sig_2(1) , Gik => g_sig_2(2), Gij => temp2);
	
	g_sig_3(1)   <= temp2;
	carry_out(1) <= temp2;

	-- PG blocks in the third level
		pgblock_3_1: PG_block port map (Gk1j=>g_sig_2(3), Pk1j=>p_sig_2(3), Pik =>p_sig_2(4), Gik =>g_sig_2(4), Pij =>p_sig_3(2), Gij =>g_sig_3(2));
		pgblock_3_2: PG_block port map (Gk1j=>g_sig_2(5), Pk1j=>p_sig_2(5), Pik =>p_sig_2(6), Gik =>g_sig_2(6), Pij	=>p_sig_3(3), Gij =>g_sig_3(3));
		pgblock_3_3: PG_block port map (Gk1j=>g_sig_2(7), Pk1j=>p_sig_2(7), Pik =>p_sig_2(8), Gik =>g_sig_2(8), Pij	=>p_sig_3(4), Gij =>g_sig_3(4));
		
	-- Two G blocks in the fourth level 
G_block_4_1: G_block port map( Pik => p_sig_2(3), Gk1j => g_sig_3(1) , Gik => g_sig_2(3), Gij => carry_out(2));
G_block_4_2: G_block port map( Pik => p_sig_3(2), Gk1j => g_sig_3(1) , Gik => g_sig_3(2), Gij => temp3);	
	
	carry_out(3) <= temp3;
	g_sig_4(1) <= temp3;
	
	-- Two PG blocks in the fourth level 
		pgblock_4_1: PG_block port map (Gk1j=>g_sig_3(3), Pk1j=>p_sig_3(3), Pik =>p_sig_2(7), Gik =>g_sig_2(7), Pij	=>p_sig_4(2), Gij =>g_sig_4(2));					
		pgblock_4_2: PG_block port map (Gk1j=>g_sig_3(3), Pk1j=>p_sig_3(3), Pik =>p_sig_3(4), Gik =>g_sig_3(4), Pij =>p_sig_4(3), Gij =>g_sig_4(3));

	-- 4 G blocks in fifth level, last level
	G_block_5_1: G_block port map( Pik => p_sig_2(5), Gk1j => g_sig_4(1) , Gik => g_sig_2(5), Gij => carry_out(4));
	G_block_5_2: G_block port map( Pik => p_sig_3(3), Gk1j => g_sig_4(1) , Gik => g_sig_3(3), Gij => carry_out(5));		
	G_block_5_3: G_block port map( Pik => p_sig_4(2), Gk1j => g_sig_4(1) , Gik => g_sig_4(2), Gij => carry_out(6));	
	G_block_5_4: G_block port map( Pik => p_sig_4(3), Gk1j => g_sig_4(1) , Gik => g_sig_4(3), Gij => carry_out(7));			
end architecture structural;