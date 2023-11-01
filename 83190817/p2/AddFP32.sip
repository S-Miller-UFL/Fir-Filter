set_global_assignment -entity "AddFP32" -library "lib_AddFP32" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "AddFP32" -library "lib_AddFP32" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "AddFP32" -library "lib_AddFP32" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_AddFP32" -name SPD_FILE [file join $::quartus(sip_path) "AddFP32.spd"]

set_global_assignment -library "lib_AddFP32" -name MISC_FILE [file join $::quartus(sip_path) "AddFP32_sim/dspba_library_package.vhd"]
set_global_assignment -library "lib_AddFP32" -name MISC_FILE [file join $::quartus(sip_path) "AddFP32_sim/dspba_library.vhd"]
set_global_assignment -library "lib_AddFP32" -name MISC_FILE [file join $::quartus(sip_path) "AddFP32_sim/AddFP32.vhd"]
