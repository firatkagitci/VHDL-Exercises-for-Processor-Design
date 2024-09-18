library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

package CONSTANTS is
   constant NumBit : integer := 32;	
   constant N_bit_address : integer := 5;

  constant width : integer := 32;  -- register width
  constant fw : integer := 4;    -- # of windows
  constant mw : integer := 8;   -- # of global registers
  constant nw : natural := 8; -- # of registers in each IN-LOCAL-OUT window
  -- depth : # of registers in the physical RF
  constant depth_w : integer := (2*nw)*fw + nw + mw;
  constant log_port : integer := 4;
 constant address_width_const : integer := 5;
 constant address_ext_const : integer := 4;

end CONSTANTS;
