###################################################################

# Created by write_sdc on Tue Jun 16 12:17:34 2020

###################################################################
set sdc_version 1.9

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current mA
set_wire_load_model -name 5K_hvratio_1_4 -library NangateOpenCellLibrary
create_clock [get_ports Clk]  -period 0.5  -waveform {0 0.25}
set_max_delay 0.5  -from [list [get_ports {INPUT_1[31]}] [get_ports {INPUT_1[30]}] [get_ports    \
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
{INPUT_2[1]}] [get_ports {INPUT_2[0]}] [get_ports C_in] [get_ports reset]      \
[get_ports Clk]]  -to [list [get_ports {SUM[32]}] [get_ports {SUM[31]}] [get_ports {SUM[30]}]   \
[get_ports {SUM[29]}] [get_ports {SUM[28]}] [get_ports {SUM[27]}] [get_ports   \
{SUM[26]}] [get_ports {SUM[25]}] [get_ports {SUM[24]}] [get_ports {SUM[23]}]   \
[get_ports {SUM[22]}] [get_ports {SUM[21]}] [get_ports {SUM[20]}] [get_ports   \
{SUM[19]}] [get_ports {SUM[18]}] [get_ports {SUM[17]}] [get_ports {SUM[16]}]   \
[get_ports {SUM[15]}] [get_ports {SUM[14]}] [get_ports {SUM[13]}] [get_ports   \
{SUM[12]}] [get_ports {SUM[11]}] [get_ports {SUM[10]}] [get_ports {SUM[9]}]    \
[get_ports {SUM[8]}] [get_ports {SUM[7]}] [get_ports {SUM[6]}] [get_ports      \
{SUM[5]}] [get_ports {SUM[4]}] [get_ports {SUM[3]}] [get_ports {SUM[2]}]       \
[get_ports {SUM[1]}] [get_ports {SUM[0]}] [get_ports C_out]]
