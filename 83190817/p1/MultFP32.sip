set_global_assignment -entity "MultFP32" -library "lib_MultFP32" -name IP_TOOL_NAME "altera_fp_functions"
set_global_assignment -entity "MultFP32" -library "lib_MultFP32" -name IP_TOOL_VERSION "20.1"
set_global_assignment -entity "MultFP32" -library "lib_MultFP32" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_MultFP32" -name SPD_FILE [file join $::quartus(sip_path) "MultFP32.spd"]

set_global_assignment -library "lib_MultFP32" -name MISC_FILE [file join $::quartus(sip_path) "MultFP32_sim/dspba_library_package.vhd"]
set_global_assignment -library "lib_MultFP32" -name MISC_FILE [file join $::quartus(sip_path) "MultFP32_sim/dspba_library.vhd"]
set_global_assignment -library "lib_MultFP32" -name MISC_FILE [file join $::quartus(sip_path) "MultFP32_sim/MultFP32.vhd"]
