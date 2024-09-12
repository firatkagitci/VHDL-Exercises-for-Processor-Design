package CONSTANTS is
   constant IVDELAY : time := 0.1 ns;
   constant NDDELAY : time := 0.2 ns;
   constant NDDELAYRISE : time := 0.6 ns;
   constant NDDELAYFALL : time := 0.4 ns;
   constant NRDELAY : time := 0.2 ns;
   constant DRCAS : time := 0 ns;
   constant DRCAC : time := 0 ns;
   constant NumBit : integer := 4;	
   constant NumBit_generator_block : integer:= 8;
   constant NumBit_generator : integer:= 16;
   constant NumBit_encoder : integer:= 3;
   constant TP_MUX : time := 0.5 ns; 	
end CONSTANTS;
