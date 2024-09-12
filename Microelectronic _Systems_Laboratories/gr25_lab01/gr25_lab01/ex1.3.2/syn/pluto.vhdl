
library IEEE;

use IEEE.std_logic_1164.all;

package CONV_PACK_FD_GENERIC_NBIT8_1 is

-- define attributes
attribute ENUM_ENCODING : STRING;

end CONV_PACK_FD_GENERIC_NBIT8_1;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_15 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_15;

architecture SYN_PLUTO of FD_15 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1000 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1000);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_14 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_14;

architecture SYN_PLUTO of FD_14 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1001 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1001);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_13 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_13;

architecture SYN_PLUTO of FD_13 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1002 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1002);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_12 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_12;

architecture SYN_PLUTO of FD_12 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1003 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1003);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_11 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_11;

architecture SYN_PLUTO of FD_11 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1004 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1004);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_10 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_10;

architecture SYN_PLUTO of FD_10 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1005 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1005);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_9 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_9;

architecture SYN_PLUTO of FD_9 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n2, n_1006 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n2, Q => Q, QN => n_1006);
   U3 : INV_X1 port map( A => RESET, ZN => n2);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_8 is

   port( D, CK, RESET : in std_logic;  Q : out std_logic);

end FD_8;

architecture SYN_PLUTO of FD_8 is

   component INV_X1
      port( A : in std_logic;  ZN : out std_logic);
   end component;
   
   component DFFR_X1
      port( D, CK, RN : in std_logic;  Q, QN : out std_logic);
   end component;
   
   signal n1, n_1007 : std_logic;

begin
   
   Q_reg : DFFR_X1 port map( D => D, CK => CK, RN => n1, Q => Q, QN => n_1007);
   U3 : INV_X1 port map( A => RESET, ZN => n1);

end SYN_PLUTO;

library IEEE;

use IEEE.std_logic_1164.all;

use work.CONV_PACK_FD_GENERIC_NBIT8_1.all;

entity FD_GENERIC_NBIT8_1 is

   port( D : in std_logic_vector (7 downto 0);  CK, RESET : in std_logic;  Q : 
         out std_logic_vector (7 downto 0));

end FD_GENERIC_NBIT8_1;

architecture SYN_PLUTO of FD_GENERIC_NBIT8_1 is

   component FD_9
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_10
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_11
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_12
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_13
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_14
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_15
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;
   
   component FD_8
      port( D, CK, RESET : in std_logic;  Q : out std_logic);
   end component;

begin
   
   FD_z_0 : FD_8 port map( D => D(0), CK => CK, RESET => RESET, Q => Q(0));
   FD_z_1 : FD_15 port map( D => D(1), CK => CK, RESET => RESET, Q => Q(1));
   FD_z_2 : FD_14 port map( D => D(2), CK => CK, RESET => RESET, Q => Q(2));
   FD_z_3 : FD_13 port map( D => D(3), CK => CK, RESET => RESET, Q => Q(3));
   FD_z_4 : FD_12 port map( D => D(4), CK => CK, RESET => RESET, Q => Q(4));
   FD_z_5 : FD_11 port map( D => D(5), CK => CK, RESET => RESET, Q => Q(5));
   FD_z_6 : FD_10 port map( D => D(6), CK => CK, RESET => RESET, Q => Q(6));
   FD_z_7 : FD_9 port map( D => D(7), CK => CK, RESET => RESET, Q => Q(7));

end SYN_PLUTO;
