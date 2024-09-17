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
	constant P: integer := 12;
	type SignalVector_2 is array (P downto 2) of std_logic;
    signal p_sig_2: SignalVector_2;
	
	type SignalVector_2g is array (P downto 1) of std_logic;
	signal g_sig_2: SignalVector_2g;


-- fourth level signals
	constant Z: integer := 4;
	type SignalVector_3 is array (P downto 2) of std_logic;
    signal p_sig_3: SignalVector_3;
	
	type SignalVector_3g is array (P downto 1) of std_logic;
	signal g_sig_3: SignalVector_3g;
	
-- fifth level signals
	constant Y: integer := 3;
	type SignalVector_4 is array (P downto 2) of std_logic;
    signal p_sig_4: SignalVector_4;
	
	type SignalVector_4g is array (P downto 1) of std_logic;
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

	-- PG blocks in first level
PG_block_1: for i in 3 to M generate
		pgblock: PG_block port map (
				Gk1j=>g_sig(i-1),
				Pk1j=>p_sig(i-1),
				Pik =>p_sig(i),
				Gik	=>g_sig(i),
				Pij	=>p_sig_1(i-1),	
				Gij	=>g_sig_1(i-1)	
		);
		end generate;
	 
	-- Single G block in the second level 
G_block_2: G_block port map( Pik => p_sig_1(2), Gk1j => g_sig_1(1) , Gik => g_sig_1(2), Gij => temp1);
	
	g_sig_2(1) <= temp1;
	carry_out(0) <= temp1;

	-- PG blocks in the second level

PG_block_2: for i in 2 to 7 generate
		pgblock: PG_block port map (
				Gk1j=>g_sig_1(i),
				Pk1j=>p_sig_1(i),
				Pik =>p_sig_1(i+1),
				Gik	=>g_sig_1(i+1),
				Pij	=>p_sig_2(i),	
				Gij	=>g_sig_2(i)	
		);
			end generate;		



	-- Single G block in the third level 
G_block_3: G_block port map( Pik => p_sig_2(2), Gk1j => g_sig_2(1) , Gik => g_sig_2(2), Gij => temp2);
	
	g_sig_3(1) <= temp2;
	carry_out(1) <= temp2;

	-- PG blocks in the third level

		pgblock_3_1: PG_block port map (
				Gk1j=>g_sig_2(3),
				Pk1j=>p_sig_2(3),
				Pik =>p_sig_2(4),
				Gik	=>g_sig_2(4),
				Pij	=>p_sig_3(2),	
				Gij	=>g_sig_3(2)	
		);
		
	
		pgblock_3_2: PG_block port map (
				Gk1j=>g_sig_2(5),
				Pk1j=>p_sig_2(5),
				Pik =>p_sig_2(6),
				Gik	=>g_sig_2(6),
				Pij	=>p_sig_3(3),	
				Gij	=>g_sig_3(3)	
		);
		
		pgblock_3_3: PG_block port map (
				Gk1j=>g_sig_2(7),
				Pk1j=>p_sig_2(7),
				Pik =>p_sig_2(8),
				Gik	=>g_sig_2(8),
				Pij	=>p_sig_3(4),	
				Gij	=>g_sig_3(4)	
		);
		
		
		
		
	-- Two G blocks in the fourth level 
G_block_4_1: G_block port map( Pik => p_sig_2(3), Gk1j => g_sig_3(1) , Gik => g_sig_2(3), Gij => carry_out(2));

G_block_4_2: G_block port map( Pik => p_sig_3(2), Gk1j => g_sig_3(1) , Gik => g_sig_3(2), Gij => temp3);	
	
	carry_out(3) <= temp3;
	g_sig_4(1) <= temp3;
	
	-- Two PG blocks in the fourth level 
		
		
		pgblock_4_1: PG_block port map (
				Gk1j=>g_sig_3(3),
				Pk1j=>p_sig_3(3),
				Pik =>p_sig_2(7),
				Gik	=>g_sig_2(7),
				Pij	=>p_sig_4(2),	
				Gij	=>g_sig_4(2)	
		);
			
				
		pgblock_4_2: PG_block port map (
				Gk1j=>g_sig_3(3),
				Pk1j=>p_sig_3(3),
				Pik =>p_sig_3(4),
				Gik	=>g_sig_3(4),
				Pij	=>p_sig_4(3),	
				Gij	=>g_sig_4(3)	
		);
			
	
	-- 4 G blocks in fifth level, last level
	
	G_block_5_1: G_block port map( Pik => p_sig_2(5), Gk1j => g_sig_4(1) , Gik => g_sig_2(5), Gij => carry_out(4));
	G_block_5_2: G_block port map( Pik => p_sig_3(3), Gk1j => g_sig_4(1) , Gik => g_sig_3(3), Gij => carry_out(5));		
	G_block_5_3: G_block port map( Pik => p_sig_4(2), Gk1j => g_sig_4(1) , Gik => g_sig_4(2), Gij => carry_out(6));	
	G_block_5_4: G_block port map( Pik => p_sig_4(3), Gk1j => g_sig_4(1) , Gik => g_sig_4(3), Gij => carry_out(7));		
	
		
		
end architecture structural;