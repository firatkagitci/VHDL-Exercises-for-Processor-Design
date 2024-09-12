###################################################################

# Created by write_sdc on Tue Jun 16 13:43:47 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
create_clock [get_ports Clk]  -period 6  -waveform {0 3}
set_max_delay 6  -from [list [get_ports {INPUT_1[31]}] [get_ports {INPUT_1[30]}] [get_ports    \
{INPUT_1[29]}] [get_ports {INPUT_1[28]}] [get_ports {INPUT_1[27]}] [get_ports  \
{INPUT_1[26]}] [get_ports {INPUT_1[25]}] [get_ports {INPUT_1[24]}] [get_ports  \
{INPUT_1[23]}] [get_ports {INPUT_1[22]}] [get_ports {INPUT_1[21]}] [get_ports  \
{INPUT_1[20]}] [get_ports {INPUT_1[19]}] [get_ports {INPUT_1[18]}] [get_ports  \
{INPUT_1[17]}] [get_ports {INPUT_1[16]}] [get_ports {INPUT_1[15]}] [get_ports  \
{INPUT_1[14]}] [get_ports {INPUT_1[13]}] [get_ports {INPUT_1[12]}] [get_ports  \
{INPUT_1[11]}] [get_ports {INPUT_1[10]}] [get_ports {INPUT_1[9]}] [get_ports   \
{INPUT_1[8]}] [get_ports {INPUT_1[7]}] [get_ports {INPUT_1[6]}] [get_ports     \
{INPUT_1[5]}] [get_ports {INPUT_1[4]}] [get_ports {INPUT_1[3]}] [get_ports     \
{INPUT_1[2]}] [get_ports {INPUT_1[1]}] [get_ports {INPUT_1[0]}] [get_ports     \
{INPUT_2[31]}] [get_ports {INPUT_2[30]}] [get_ports {INPUT_2[29]}] [get_ports  \
{INPUT_2[28]}] [get_ports {INPUT_2[27]}] [get_ports {INPUT_2[26]}] [get_ports  \
{INPUT_2[25]}] [get_ports {INPUT_2[24]}] [get_ports {INPUT_2[23]}] [get_ports  \
{INPUT_2[22]}] [get_ports {INPUT_2[21]}] [get_ports {INPUT_2[20]}] [get_ports  \
{INPUT_2[19]}] [get_ports {INPUT_2[18]}] [get_ports {INPUT_2[17]}] [get_ports  \
{INPUT_2[16]}] [get_ports {INPUT_2[15]}] [get_ports {INPUT_2[14]}] [get_ports  \
{INPUT_2[13]}] [get_ports {INPUT_2[12]}] [get_ports {INPUT_2[11]}] [get_ports  \
{INPUT_2[10]}] [get_ports {INPUT_2[9]}] [get_ports {INPUT_2[8]}] [get_ports    \
{INPUT_2[7]}] [get_ports {INPUT_2[6]}] [get_ports {INPUT_2[5]}] [get_ports     \
{INPUT_2[4]}] [get_ports {INPUT_2[3]}] [get_ports {INPUT_2[2]}] [get_ports     \
{INPUT_2[1]}] [get_ports {INPUT_2[0]}] [get_ports reset] [get_ports Clk]]  -to [list [get_ports {MUL_OUT[63]}] [get_ports {MUL_OUT[62]}] [get_ports      \
{MUL_OUT[61]}] [get_ports {MUL_OUT[60]}] [get_ports {MUL_OUT[59]}] [get_ports  \
{MUL_OUT[58]}] [get_ports {MUL_OUT[57]}] [get_ports {MUL_OUT[56]}] [get_ports  \
{MUL_OUT[55]}] [get_ports {MUL_OUT[54]}] [get_ports {MUL_OUT[53]}] [get_ports  \
{MUL_OUT[52]}] [get_ports {MUL_OUT[51]}] [get_ports {MUL_OUT[50]}] [get_ports  \
{MUL_OUT[49]}] [get_ports {MUL_OUT[48]}] [get_ports {MUL_OUT[47]}] [get_ports  \
{MUL_OUT[46]}] [get_ports {MUL_OUT[45]}] [get_ports {MUL_OUT[44]}] [get_ports  \
{MUL_OUT[43]}] [get_ports {MUL_OUT[42]}] [get_ports {MUL_OUT[41]}] [get_ports  \
{MUL_OUT[40]}] [get_ports {MUL_OUT[39]}] [get_ports {MUL_OUT[38]}] [get_ports  \
{MUL_OUT[37]}] [get_ports {MUL_OUT[36]}] [get_ports {MUL_OUT[35]}] [get_ports  \
{MUL_OUT[34]}] [get_ports {MUL_OUT[33]}] [get_ports {MUL_OUT[32]}] [get_ports  \
{MUL_OUT[31]}] [get_ports {MUL_OUT[30]}] [get_ports {MUL_OUT[29]}] [get_ports  \
{MUL_OUT[28]}] [get_ports {MUL_OUT[27]}] [get_ports {MUL_OUT[26]}] [get_ports  \
{MUL_OUT[25]}] [get_ports {MUL_OUT[24]}] [get_ports {MUL_OUT[23]}] [get_ports  \
{MUL_OUT[22]}] [get_ports {MUL_OUT[21]}] [get_ports {MUL_OUT[20]}] [get_ports  \
{MUL_OUT[19]}] [get_ports {MUL_OUT[18]}] [get_ports {MUL_OUT[17]}] [get_ports  \
{MUL_OUT[16]}] [get_ports {MUL_OUT[15]}] [get_ports {MUL_OUT[14]}] [get_ports  \
{MUL_OUT[13]}] [get_ports {MUL_OUT[12]}] [get_ports {MUL_OUT[11]}] [get_ports  \
{MUL_OUT[10]}] [get_ports {MUL_OUT[9]}] [get_ports {MUL_OUT[8]}] [get_ports    \
{MUL_OUT[7]}] [get_ports {MUL_OUT[6]}] [get_ports {MUL_OUT[5]}] [get_ports     \
{MUL_OUT[4]}] [get_ports {MUL_OUT[3]}] [get_ports {MUL_OUT[2]}] [get_ports     \
{MUL_OUT[1]}] [get_ports {MUL_OUT[0]}]]
