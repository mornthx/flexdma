# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page0 [ipgui::add_page $IPINST -name "flexDMA" -layout vertical]
  # set C_S_AXI_DATA_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_DATA_WIDTH" -parent ${Page0} -widget comboBox]
	ipgui::add_row $IPINST -parent $Page0
  # set C_S_AXI_ADDR_WIDTH [ipgui::add_param $IPINST -name "C_S_AXI_ADDR_WIDTH" -parent ${Page0} -widget comboBox]
  set NUM_TYPE [ipgui::add_param $IPINST -name "NUM_TYPE" -parent ${Page0}]
  set MAX_REG_OFFSET [ipgui::add_param $IPINST -name "MAX_REG_OFFSET" -parent ${Page0}]

   	set table [ipgui::add_table $IPINST  -name "table" -rows "17" -columns "3" -parent $Page0 -table_header true]
	ipgui::add_static_text  $IPINST -name r0c0 -parent $table -text "module"
	ipgui::add_static_text  $IPINST -name r0c1 -parent $table -text "module count"
	ipgui::add_static_text  $IPINST -name r0c2 -parent $table -text "register count"
	set_property cell_location 0,0 [ipgui::get_textspec r0c0  -of $IPINST]
	set_property cell_location 0,1 [ipgui::get_textspec r0c1  -of $IPINST]
	set_property cell_location 0,2 [ipgui::get_textspec r0c2  -of $IPINST]
        ipgui::add_row $IPINST -parent $Page0
for {set peripheral_num 0} {$peripheral_num < 16} {incr peripheral_num} {

		set row_num [expr $peripheral_num+1]
        set parameters(r${peripheral_num}c1) [ipgui::add_static_text  $IPINST -name r1c1 -parent $table -text "type $peripheral_num"]
		set parameters(TYPE${peripheral_num}_NUM) [ipgui::add_param $IPINST -parent $table -name  TYPE${peripheral_num}_NUM ]
		set parameters(TYPE${peripheral_num}_REG_OFFSET) [ipgui::add_param $IPINST -parent $table -name  TYPE${peripheral_num}_REG_OFFSET ]

		set_property cell_location $row_num,0 $parameters(r${peripheral_num}c1)
        set_property cell_location $row_num,1 $parameters(TYPE${peripheral_num}_NUM)
        set_property cell_location $row_num,2 $parameters(TYPE${peripheral_num}_REG_OFFSET)

  }



	set page_sum [ipgui::add_page $IPINST  -name "Summary" -layout vertical]
   ipgui::add_dynamic_text $IPINST -parent $page_sum -name total_module_num -tclproc total_module_num
   ipgui::add_dynamic_text $IPINST -parent $page_sum -name total_reg_num -tclproc total_reg_num
   ipgui::add_dynamic_text $IPINST -parent $page_sum -name total_reg_offset -tclproc total_reg_offset

#    ipgui::add_dynamic_text $IPINST -parent $page_sum -name type12_ttal_reg -tclproc type12_total_reg1
	# set results [test]
#    ipgui::add_dynamic_text $IPINST -parent $page_sum -name t0 -text [lindex $results 0]

#    	set table_sum [ipgui::add_table $IPINST  -name "table_sum" -rows "3" -columns "4" -parent $page_sum -table_header true]
# 	ipgui::add_static_text  $IPINST -name r0c0 -parent $table_sum -text "module"
# 	ipgui::add_static_text  $IPINST -name r0c1 -parent $table_sum -text "register count"
# 	ipgui::add_static_text  $IPINST -name r0c2 -parent $table_sum -text "Base Address"
# 	ipgui::add_static_text  $IPINST -name r0c3 -parent $table_sum -text  "High Address"
# 	set_property cell_location 0,0 [ipgui::get_textspec r0c0  -of $IPINST]
# 	set_property cell_location 0,1 [ipgui::get_textspec r0c1  -of $IPINST]
# 	set_property cell_location 0,2 [ipgui::get_textspec r0c2  -of $IPINST]	
# 	set_property cell_location 0,3 [ipgui::get_textspec r0c3  -of $IPINST]	
# 	ipgui::add_row $IPINST -parent $page_sum
# for {set peripheral_num 0} {$peripheral_num < 16} {incr peripheral_num} {
# 		set row_num [expr $peripheral_num+1]
#         set parameters(r${peripheral_num}c1) [ipgui::add_static_text  $IPINST -name r1c1 -parent $table_sum -text "type $peripheral_num"]
# 		set_property cell_location $row_num,0 $parameters(r${peripheral_num}c1)
#   }
}

proc total_module_num {IPINST PARAM_VALUE.TYPE0_NUM PARAM_VALUE.TYPE1_NUM PARAM_VALUE.TYPE2_NUM PARAM_VALUE.TYPE3_NUM PARAM_VALUE.TYPE4_NUM PARAM_VALUE.TYPE5_NUM PARAM_VALUE.TYPE6_NUM PARAM_VALUE.TYPE7_NUM PARAM_VALUE.TYPE8_NUM PARAM_VALUE.TYPE9_NUM PARAM_VALUE.TYPE10_NUM PARAM_VALUE.TYPE11_NUM PARAM_VALUE.TYPE12_NUM PARAM_VALUE.TYPE13_NUM PARAM_VALUE.TYPE14_NUM PARAM_VALUE.TYPE15_NUM } {
  set type0_num [get_property value ${PARAM_VALUE.TYPE0_NUM}] 
  set type1_num [get_property value ${PARAM_VALUE.TYPE1_NUM}] 
  set type2_num [get_property value ${PARAM_VALUE.TYPE2_NUM}] 
  set type3_num [get_property value ${PARAM_VALUE.TYPE3_NUM}] 
  set type4_num [get_property value ${PARAM_VALUE.TYPE4_NUM}] 
  set type5_num [get_property value ${PARAM_VALUE.TYPE5_NUM}] 
  set type6_num [get_property value ${PARAM_VALUE.TYPE6_NUM}] 
  set type7_num [get_property value ${PARAM_VALUE.TYPE7_NUM}] 
  set type8_num [get_property value ${PARAM_VALUE.TYPE8_NUM}] 
  set type9_num [get_property value ${PARAM_VALUE.TYPE9_NUM}] 
  set type10_num [get_property value ${PARAM_VALUE.TYPE10_NUM}] 
  set type11_num [get_property value ${PARAM_VALUE.TYPE11_NUM}] 
  set type12_num [get_property value ${PARAM_VALUE.TYPE12_NUM}] 
  set type13_num [get_property value ${PARAM_VALUE.TYPE13_NUM}] 
  set type14_num [get_property value ${PARAM_VALUE.TYPE14_NUM}] 
  set type15_num [get_property value ${PARAM_VALUE.TYPE15_NUM}] 
  set total_num [expr $type0_num + $type1_num + $type2_num + $type3_num + $type4_num + $type5_num + $type6_num + $type7_num + $type8_num + $type9_num + $type10_num + $type11_num + $type12_num + $type13_num + $type14_num + $type15_num]
  return "total number of modules: $total_num"
}

proc total_reg_num {IPINST PARAM_VALUE.TYPE0_NUM PARAM_VALUE.TYPE1_NUM PARAM_VALUE.TYPE2_NUM PARAM_VALUE.TYPE3_NUM PARAM_VALUE.TYPE4_NUM PARAM_VALUE.TYPE5_NUM PARAM_VALUE.TYPE6_NUM PARAM_VALUE.TYPE7_NUM PARAM_VALUE.TYPE8_NUM PARAM_VALUE.TYPE9_NUM PARAM_VALUE.TYPE10_NUM PARAM_VALUE.TYPE11_NUM PARAM_VALUE.TYPE12_NUM PARAM_VALUE.TYPE13_NUM PARAM_VALUE.TYPE14_NUM PARAM_VALUE.TYPE15_NUM \
PARAM_VALUE.TYPE0_REG_OFFSET PARAM_VALUE.TYPE1_REG_OFFSET PARAM_VALUE.TYPE2_REG_OFFSET PARAM_VALUE.TYPE3_REG_OFFSET PARAM_VALUE.TYPE4_REG_OFFSET PARAM_VALUE.TYPE5_REG_OFFSET PARAM_VALUE.TYPE6_REG_OFFSET PARAM_VALUE.TYPE7_REG_OFFSET PARAM_VALUE.TYPE8_REG_OFFSET PARAM_VALUE.TYPE9_REG_OFFSET PARAM_VALUE.TYPE10_REG_OFFSET PARAM_VALUE.TYPE11_REG_OFFSET PARAM_VALUE.TYPE12_REG_OFFSET PARAM_VALUE.TYPE13_REG_OFFSET PARAM_VALUE.TYPE14_REG_OFFSET PARAM_VALUE.TYPE15_REG_OFFSET } {
  global type0_total_reg
  set type0_num [get_property value ${PARAM_VALUE.TYPE0_NUM}] 
  set type0_reg [get_property value ${PARAM_VALUE.TYPE0_REG_OFFSET}] 
  set type0_total_reg [expr $type0_num * $type0_reg]
  set type1_num [get_property value ${PARAM_VALUE.TYPE1_NUM}] 
  set type1_reg [get_property value ${PARAM_VALUE.TYPE1_REG_OFFSET}] 
  set type1_total_reg [expr $type1_num * $type1_reg]
  set type2_num [get_property value ${PARAM_VALUE.TYPE2_NUM}] 
  set type2_reg [get_property value ${PARAM_VALUE.TYPE2_REG_OFFSET}] 
  set type2_total_reg [expr $type2_num * $type2_reg]
  set type3_num [get_property value ${PARAM_VALUE.TYPE3_NUM}] 
  set type3_reg [get_property value ${PARAM_VALUE.TYPE3_REG_OFFSET}] 
  set type3_total_reg [expr $type3_num * $type3_reg]
  set type4_num [get_property value ${PARAM_VALUE.TYPE4_NUM}] 
  set type4_reg [get_property value ${PARAM_VALUE.TYPE4_REG_OFFSET}] 
  set type4_total_reg [expr $type4_num * $type4_reg]
  set type5_num [get_property value ${PARAM_VALUE.TYPE5_NUM}] 
  set type5_reg [get_property value ${PARAM_VALUE.TYPE5_REG_OFFSET}] 
  set type5_total_reg [expr $type5_num * $type5_reg]
  set type6_num [get_property value ${PARAM_VALUE.TYPE6_NUM}] 
  set type6_reg [get_property value ${PARAM_VALUE.TYPE6_REG_OFFSET}] 
  set type6_total_reg [expr $type6_num * $type6_reg]
  set type7_num [get_property value ${PARAM_VALUE.TYPE7_NUM}] 
  set type7_reg [get_property value ${PARAM_VALUE.TYPE7_REG_OFFSET}] 
  set type7_total_reg [expr $type7_num * $type7_reg]
  set type8_num [get_property value ${PARAM_VALUE.TYPE8_NUM}] 
  set type8_reg [get_property value ${PARAM_VALUE.TYPE8_REG_OFFSET}] 
  set type8_total_reg [expr $type8_num * $type8_reg]
  set type9_num [get_property value ${PARAM_VALUE.TYPE9_NUM}] 
  set type9_reg [get_property value ${PARAM_VALUE.TYPE9_REG_OFFSET}] 
  set type9_total_reg [expr $type9_num * $type9_reg]
  set type10_num [get_property value ${PARAM_VALUE.TYPE10_NUM}] 
  set type10_reg [get_property value ${PARAM_VALUE.TYPE10_REG_OFFSET}] 
  set type10_total_reg [expr $type10_num * $type10_reg]
  set type11_num [get_property value ${PARAM_VALUE.TYPE11_NUM}] 
  set type11_reg [get_property value ${PARAM_VALUE.TYPE11_REG_OFFSET}] 
  set type11_total_reg [expr $type11_num * $type11_reg]
  set type12_num [get_property value ${PARAM_VALUE.TYPE12_NUM}] 
  set type12_reg [get_property value ${PARAM_VALUE.TYPE12_REG_OFFSET}] 
  set type12_total_reg [expr $type12_num * $type12_reg]
  set type13_num [get_property value ${PARAM_VALUE.TYPE13_NUM}] 
  set type13_reg [get_property value ${PARAM_VALUE.TYPE13_REG_OFFSET}] 
  set type13_total_reg [expr $type13_num * $type13_reg]
  set type14_num [get_property value ${PARAM_VALUE.TYPE14_NUM}] 
  set type14_reg [get_property value ${PARAM_VALUE.TYPE14_REG_OFFSET}] 
  set type14_total_reg [expr $type14_num * $type14_reg]
  set type15_num [get_property value ${PARAM_VALUE.TYPE15_NUM}] 
  set type15_reg [get_property value ${PARAM_VALUE.TYPE15_REG_OFFSET}] 
  set type15_total_reg [expr $type15_num * $type15_reg]
  set total_num [expr $type0_num + $type1_num + $type2_num + $type3_num + $type4_num + $type5_num + $type6_num + $type7_num + $type8_num + $type9_num + $type10_num + $type11_num + $type12_num + $type13_num + $type14_num + $type15_num]
  set total_reg_num [expr $type0_num * $type0_reg +   $type1_num * $type1_reg +   $type2_num * $type2_reg +   $type3_num * $type3_reg +   $type4_num * $type4_reg +   $type5_num * $type5_reg +   $type6_num * $type6_reg +   $type7_num * $type7_reg +   $type8_num * $type8_reg +   $type9_num * $type9_reg +   $type10_num * $type10_reg +   $type11_num * $type11_reg +   $type12_num * $type12_reg +   $type13_num * $type13_reg +   $type14_num * $type14_reg +   $type15_num * $type15_reg]
  return "total registers of modules: $total_reg_num"
}
proc total_reg_offset {IPINST PARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.TYPE0_NUM PARAM_VALUE.TYPE1_NUM PARAM_VALUE.TYPE2_NUM PARAM_VALUE.TYPE3_NUM PARAM_VALUE.TYPE4_NUM PARAM_VALUE.TYPE5_NUM PARAM_VALUE.TYPE6_NUM PARAM_VALUE.TYPE7_NUM PARAM_VALUE.TYPE8_NUM PARAM_VALUE.TYPE9_NUM PARAM_VALUE.TYPE10_NUM PARAM_VALUE.TYPE11_NUM PARAM_VALUE.TYPE12_NUM PARAM_VALUE.TYPE13_NUM PARAM_VALUE.TYPE14_NUM PARAM_VALUE.TYPE15_NUM \
PARAM_VALUE.TYPE0_REG_OFFSET PARAM_VALUE.TYPE1_REG_OFFSET PARAM_VALUE.TYPE2_REG_OFFSET PARAM_VALUE.TYPE3_REG_OFFSET PARAM_VALUE.TYPE4_REG_OFFSET PARAM_VALUE.TYPE5_REG_OFFSET PARAM_VALUE.TYPE6_REG_OFFSET PARAM_VALUE.TYPE7_REG_OFFSET PARAM_VALUE.TYPE8_REG_OFFSET PARAM_VALUE.TYPE9_REG_OFFSET PARAM_VALUE.TYPE10_REG_OFFSET PARAM_VALUE.TYPE11_REG_OFFSET PARAM_VALUE.TYPE12_REG_OFFSET PARAM_VALUE.TYPE13_REG_OFFSET PARAM_VALUE.TYPE14_REG_OFFSET PARAM_VALUE.TYPE15_REG_OFFSET } {
  set data_width [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] 
  set type0_num [get_property value ${PARAM_VALUE.TYPE0_NUM}] 
  set type0_reg [get_property value ${PARAM_VALUE.TYPE0_REG_OFFSET}] 
  set type0_total_reg [expr $type0_num * $type0_reg]
  set type1_num [get_property value ${PARAM_VALUE.TYPE1_NUM}] 
  set type1_reg [get_property value ${PARAM_VALUE.TYPE1_REG_OFFSET}] 
  set type1_total_reg [expr $type1_num * $type1_reg]
  set type2_num [get_property value ${PARAM_VALUE.TYPE2_NUM}] 
  set type2_reg [get_property value ${PARAM_VALUE.TYPE2_REG_OFFSET}] 
  set type2_total_reg [expr $type2_num * $type2_reg]
  set type3_num [get_property value ${PARAM_VALUE.TYPE3_NUM}] 
  set type3_reg [get_property value ${PARAM_VALUE.TYPE3_REG_OFFSET}] 
  set type3_total_reg [expr $type3_num * $type3_reg]
  set type4_num [get_property value ${PARAM_VALUE.TYPE4_NUM}] 
  set type4_reg [get_property value ${PARAM_VALUE.TYPE4_REG_OFFSET}] 
  set type4_total_reg [expr $type4_num * $type4_reg]
  set type5_num [get_property value ${PARAM_VALUE.TYPE5_NUM}] 
  set type5_reg [get_property value ${PARAM_VALUE.TYPE5_REG_OFFSET}] 
  set type5_total_reg [expr $type5_num * $type5_reg]
  set type6_num [get_property value ${PARAM_VALUE.TYPE6_NUM}] 
  set type6_reg [get_property value ${PARAM_VALUE.TYPE6_REG_OFFSET}] 
  set type6_total_reg [expr $type6_num * $type6_reg]
  set type7_num [get_property value ${PARAM_VALUE.TYPE7_NUM}] 
  set type7_reg [get_property value ${PARAM_VALUE.TYPE7_REG_OFFSET}] 
  set type7_total_reg [expr $type7_num * $type7_reg]
  set type8_num [get_property value ${PARAM_VALUE.TYPE8_NUM}] 
  set type8_reg [get_property value ${PARAM_VALUE.TYPE8_REG_OFFSET}] 
  set type8_total_reg [expr $type8_num * $type8_reg]
  set type9_num [get_property value ${PARAM_VALUE.TYPE9_NUM}] 
  set type9_reg [get_property value ${PARAM_VALUE.TYPE9_REG_OFFSET}] 
  set type9_total_reg [expr $type9_num * $type9_reg]
  set type10_num [get_property value ${PARAM_VALUE.TYPE10_NUM}] 
  set type10_reg [get_property value ${PARAM_VALUE.TYPE10_REG_OFFSET}] 
  set type10_total_reg [expr $type10_num * $type10_reg]
  set type11_num [get_property value ${PARAM_VALUE.TYPE11_NUM}] 
  set type11_reg [get_property value ${PARAM_VALUE.TYPE11_REG_OFFSET}] 
  set type11_total_reg [expr $type11_num * $type11_reg]
  set type12_num [get_property value ${PARAM_VALUE.TYPE12_NUM}] 
  set type12_reg [get_property value ${PARAM_VALUE.TYPE12_REG_OFFSET}] 
  set type12_total_reg [expr $type12_num * $type12_reg]
  set type13_num [get_property value ${PARAM_VALUE.TYPE13_NUM}] 
  set type13_reg [get_property value ${PARAM_VALUE.TYPE13_REG_OFFSET}] 
  set type13_total_reg [expr $type13_num * $type13_reg]
  set type14_num [get_property value ${PARAM_VALUE.TYPE14_NUM}] 
  set type14_reg [get_property value ${PARAM_VALUE.TYPE14_REG_OFFSET}] 
  set type14_total_reg [expr $type14_num * $type14_reg]
  set type15_num [get_property value ${PARAM_VALUE.TYPE15_NUM}] 
  set type15_reg [get_property value ${PARAM_VALUE.TYPE15_REG_OFFSET}] 
  set type15_total_reg [expr $type15_num * $type15_reg]
  set total_num [expr $type0_num + $type1_num + $type2_num + $type3_num + $type4_num + $type5_num + $type6_num + $type7_num + $type8_num + $type9_num + $type10_num + $type11_num + $type12_num + $type13_num + $type14_num + $type15_num]
  set total_reg_num [expr $type0_num * $type0_reg +   $type1_num * $type1_reg +   $type2_num * $type2_reg +   $type3_num * $type3_reg +   $type4_num * $type4_reg +   $type5_num * $type5_reg +   $type6_num * $type6_reg +   $type7_num * $type7_reg +   $type8_num * $type8_reg +   $type9_num * $type9_reg +   $type10_num * $type10_reg +   $type11_num * $type11_reg +   $type12_num * $type12_reg +   $type13_num * $type13_reg +   $type14_num * $type14_reg +   $type15_num * $type15_reg]
  return [format "0x%08x" [expr $total_reg_num*$data_width/8]]
}
proc update_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to update C_S_AXI_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_DATA_WIDTH { PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to validate C_S_AXI_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {

	# Procedure called to update C_S_AXI_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_ADDR_WIDTH { PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to validate C_S_AXI_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to update C_S_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_BASEADDR { PARAM_VALUE.C_S_AXI_BASEADDR } {
	# Procedure called to validate C_S_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S_AXI_HIGHADDR { PARAM_VALUE.C_S_AXI_HIGHADDR } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.NUM_TYPE { PARAM_VALUE.NUM_TYPE } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NUM_TYPE { PARAM_VALUE.NUM_TYPE } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.MAX_REG_OFFSET { PARAM_VALUE.MAX_REG_OFFSET } {
	# Procedure called to update C_S_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_REG_OFFSET { PARAM_VALUE.MAX_REG_OFFSET } {
	# Procedure called to validate C_S_AXI_HIGHADDR
	return true
}

proc update_PARAM_VALUE.TYPE0_REG_OFFSET { PARAM_VALUE.TYPE0_REG_OFFSET } {

	# Procedure called to update TYPE0_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE0_REG_OFFSET { PARAM_VALUE.TYPE0_REG_OFFSET } {
	# Procedure called to validate TYPE0_REG_OFFSET
	return true
}

proc update_PARAM_VALUE.TYPE1_REG_OFFSET { PARAM_VALUE.TYPE1_REG_OFFSET } {

	# Procedure called to update TYPE1_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE1_REG_OFFSET { PARAM_VALUE.TYPE1_REG_OFFSET } {
	# Procedure called to validate TYPE1_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE2_REG_OFFSET { PARAM_VALUE.TYPE2_REG_OFFSET } {

	# Procedure called to update TYPE2_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE2_REG_OFFSET { PARAM_VALUE.TYPE2_REG_OFFSET } {
	# Procedure called to validate TYPE2_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE3_REG_OFFSET { PARAM_VALUE.TYPE3_REG_OFFSET } {

	# Procedure called to update TYPE3_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE3_REG_OFFSET { PARAM_VALUE.TYPE3_REG_OFFSET } {
	# Procedure called to validate TYPE3_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE4_REG_OFFSET { PARAM_VALUE.TYPE4_REG_OFFSET } {

	# Procedure called to update TYPE4_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE4_REG_OFFSET { PARAM_VALUE.TYPE4_REG_OFFSET } {
	# Procedure called to validate TYPE4_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE5_REG_OFFSET { PARAM_VALUE.TYPE5_REG_OFFSET } {

	# Procedure called to update TYPE5_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE5_REG_OFFSET { PARAM_VALUE.TYPE5_REG_OFFSET } {
	# Procedure called to validate TYPE5_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE6_REG_OFFSET { PARAM_VALUE.TYPE6_REG_OFFSET } {

	# Procedure called to update TYPE6_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE6_REG_OFFSET { PARAM_VALUE.TYPE6_REG_OFFSET } {
	# Procedure called to validate TYPE6_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE7_REG_OFFSET { PARAM_VALUE.TYPE7_REG_OFFSET } {

	# Procedure called to update TYPE7_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE7_REG_OFFSET { PARAM_VALUE.TYPE7_REG_OFFSET } {
	# Procedure called to validate TYPE7_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE8_REG_OFFSET { PARAM_VALUE.TYPE8_REG_OFFSET } {

	# Procedure called to update TYPE8_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE8_REG_OFFSET { PARAM_VALUE.TYPE8_REG_OFFSET } {
	# Procedure called to validate TYPE8_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE9_REG_OFFSET { PARAM_VALUE.TYPE9_REG_OFFSET } {

	# Procedure called to update TYPE9_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE9_REG_OFFSET { PARAM_VALUE.TYPE9_REG_OFFSET } {
	# Procedure called to validate TYPE9_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE10_REG_OFFSET { PARAM_VALUE.TYPE10_REG_OFFSET } {

	# Procedure called to update TYPE10_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE10_REG_OFFSET { PARAM_VALUE.TYPE10_REG_OFFSET } {
	# Procedure called to validate TYPE10_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE11_REG_OFFSET { PARAM_VALUE.TYPE11_REG_OFFSET } {

	# Procedure called to update TYPE11_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE11_REG_OFFSET { PARAM_VALUE.TYPE11_REG_OFFSET } {
	# Procedure called to validate TYPE11_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE12_REG_OFFSET { PARAM_VALUE.TYPE12_REG_OFFSET } {

	# Procedure called to update TYPE12_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE12_REG_OFFSET { PARAM_VALUE.TYPE12_REG_OFFSET } {
	# Procedure called to validate TYPE12_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE13_REG_OFFSET { PARAM_VALUE.TYPE13_REG_OFFSET } {

	# Procedure called to update TYPE13_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE13_REG_OFFSET { PARAM_VALUE.TYPE13_REG_OFFSET } {
	# Procedure called to validate TYPE13_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE14_REG_OFFSET { PARAM_VALUE.TYPE14_REG_OFFSET } {

	# Procedure called to update TYPE14_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE14_REG_OFFSET { PARAM_VALUE.TYPE14_REG_OFFSET } {
	# Procedure called to validate TYPE14_REG_OFFSET
	return true
}


proc update_PARAM_VALUE.TYPE15_REG_OFFSET { PARAM_VALUE.TYPE15_REG_OFFSET } {

	# Procedure called to update TYPE15_REG_OFFSET when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE15_REG_OFFSET { PARAM_VALUE.TYPE15_REG_OFFSET } {
	# Procedure called to validate TYPE15_REG_OFFSET
	return true
}

proc update_PARAM_VALUE.TYPE0_NUM { PARAM_VALUE.TYPE0_NUM } {

	# Procedure called to update TYPE0_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE0_NUM { PARAM_VALUE.TYPE0_NUM } {
	# Procedure called to validate TYPE0_NUM
	return true
}

proc update_PARAM_VALUE.TYPE1_NUM { PARAM_VALUE.TYPE1_NUM } {

	# Procedure called to update TYPE1_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE1_NUM { PARAM_VALUE.TYPE1_NUM } {
	# Procedure called to validate TYPE1_NUM
	return true
}
proc update_PARAM_VALUE.TYPE2_NUM { PARAM_VALUE.TYPE2_NUM } {

	# Procedure called to update TYPE2_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE2_NUM { PARAM_VALUE.TYPE2_NUM } {
	# Procedure called to validate TYPE2_NUM
	return true
}
proc update_PARAM_VALUE.TYPE3_NUM { PARAM_VALUE.TYPE3_NUM } {

	# Procedure called to update TYPE3_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE3_NUM { PARAM_VALUE.TYPE3_NUM } {
	# Procedure called to validate TYPE3_NUM
	return true
}
proc update_PARAM_VALUE.TYPE4_NUM { PARAM_VALUE.TYPE4_NUM } {

	# Procedure called to update TYPE4_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE4_NUM { PARAM_VALUE.TYPE4_NUM } {
	# Procedure called to validate TYPE4_NUM
	return true
}
proc update_PARAM_VALUE.TYPE5_NUM { PARAM_VALUE.TYPE5_NUM } {

	# Procedure called to update TYPE5_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE5_NUM { PARAM_VALUE.TYPE5_NUM } {
	# Procedure called to validate TYPE5_NUM
	return true
}
proc update_PARAM_VALUE.TYPE6_NUM { PARAM_VALUE.TYPE6_NUM } {

	# Procedure called to update TYPE6_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE6_NUM { PARAM_VALUE.TYPE6_NUM } {
	# Procedure called to validate TYPE6_NUM
	return true
}
proc update_PARAM_VALUE.TYPE7_NUM { PARAM_VALUE.TYPE7_NUM } {

	# Procedure called to update TYPE7_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE7_NUM { PARAM_VALUE.TYPE7_NUM } {
	# Procedure called to validate TYPE7_NUM
	return true
}
proc update_PARAM_VALUE.TYPE8_NUM { PARAM_VALUE.TYPE8_NUM } {

	# Procedure called to update TYPE8_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE8_NUM { PARAM_VALUE.TYPE8_NUM } {
	# Procedure called to validate TYPE8_NUM
	return true
}
proc update_PARAM_VALUE.TYPE9_NUM { PARAM_VALUE.TYPE9_NUM } {

	# Procedure called to update TYPE9_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE9_NUM { PARAM_VALUE.TYPE9_NUM } {
	# Procedure called to validate TYPE9_NUM
	return true
}
proc update_PARAM_VALUE.TYPE10_NUM { PARAM_VALUE.TYPE10_NUM } {

	# Procedure called to update TYPE10_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE10_NUM { PARAM_VALUE.TYPE10_NUM } {
	# Procedure called to validate TYPE10_NUM
	return true
}
proc update_PARAM_VALUE.TYPE11_NUM { PARAM_VALUE.TYPE11_NUM } {

	# Procedure called to update TYPE11_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE11_NUM { PARAM_VALUE.TYPE11_NUM } {
	# Procedure called to validate TYPE11_NUM
	return true
}
proc update_PARAM_VALUE.TYPE12_NUM { PARAM_VALUE.TYPE12_NUM } {

	# Procedure called to update TYPE12_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE12_NUM { PARAM_VALUE.TYPE12_NUM } {
	# Procedure called to validate TYPE12_NUM
	return true
}
proc update_PARAM_VALUE.TYPE13_NUM { PARAM_VALUE.TYPE13_NUM } {

	# Procedure called to update TYPE13_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE13_NUM { PARAM_VALUE.TYPE13_NUM } {
	# Procedure called to validate TYPE13_NUM
	return true
}
proc update_PARAM_VALUE.TYPE14_NUM { PARAM_VALUE.TYPE14_NUM } {

	# Procedure called to update TYPE14_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE14_NUM { PARAM_VALUE.TYPE14_NUM } {
	# Procedure called to validate TYPE14_NUM
	return true
}
proc update_PARAM_VALUE.TYPE15_NUM { PARAM_VALUE.TYPE15_NUM } {

	# Procedure called to update TYPE15_NUM when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TYPE15_NUM { PARAM_VALUE.TYPE15_NUM } {
	# Procedure called to validate TYPE15_NUM
	return true
}
proc update_MODELPARAM_VALUE.TYPE0_NUM { MODELPARAM_VALUE.TYPE0_NUM PARAM_VALUE.TYPE0_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE0_NUM}] ${MODELPARAM_VALUE.TYPE0_NUM}
}

proc update_MODELPARAM_VALUE.TYPE0_REG_OFFSET { MODELPARAM_VALUE.TYPE0_REG_OFFSET PARAM_VALUE.TYPE0_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE0_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE0_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE1_NUM { MODELPARAM_VALUE.TYPE1_NUM PARAM_VALUE.TYPE1_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE1_NUM}] ${MODELPARAM_VALUE.TYPE1_NUM}
}

proc update_MODELPARAM_VALUE.TYPE1_REG_OFFSET { MODELPARAM_VALUE.TYPE1_REG_OFFSET PARAM_VALUE.TYPE1_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE1_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE1_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE2_NUM { MODELPARAM_VALUE.TYPE2_NUM PARAM_VALUE.TYPE2_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE2_NUM}] ${MODELPARAM_VALUE.TYPE2_NUM}
}

proc update_MODELPARAM_VALUE.TYPE2_REG_OFFSET { MODELPARAM_VALUE.TYPE2_REG_OFFSET PARAM_VALUE.TYPE2_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE2_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE2_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE3_NUM { MODELPARAM_VALUE.TYPE3_NUM PARAM_VALUE.TYPE3_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE3_NUM}] ${MODELPARAM_VALUE.TYPE3_NUM}
}

proc update_MODELPARAM_VALUE.TYPE3_REG_OFFSET { MODELPARAM_VALUE.TYPE3_REG_OFFSET PARAM_VALUE.TYPE3_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE3_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE3_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE4_NUM { MODELPARAM_VALUE.TYPE4_NUM PARAM_VALUE.TYPE4_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE4_NUM}] ${MODELPARAM_VALUE.TYPE4_NUM}
}

proc update_MODELPARAM_VALUE.TYPE4_REG_OFFSET { MODELPARAM_VALUE.TYPE4_REG_OFFSET PARAM_VALUE.TYPE4_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE4_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE4_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE5_NUM { MODELPARAM_VALUE.TYPE5_NUM PARAM_VALUE.TYPE5_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE5_NUM}] ${MODELPARAM_VALUE.TYPE5_NUM}
}

proc update_MODELPARAM_VALUE.TYPE5_REG_OFFSET { MODELPARAM_VALUE.TYPE5_REG_OFFSET PARAM_VALUE.TYPE5_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE5_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE5_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE6_NUM { MODELPARAM_VALUE.TYPE6_NUM PARAM_VALUE.TYPE6_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE6_NUM}] ${MODELPARAM_VALUE.TYPE6_NUM}
}

proc update_MODELPARAM_VALUE.TYPE6_REG_OFFSET { MODELPARAM_VALUE.TYPE6_REG_OFFSET PARAM_VALUE.TYPE6_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE6_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE6_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE7_NUM { MODELPARAM_VALUE.TYPE7_NUM PARAM_VALUE.TYPE7_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE7_NUM}] ${MODELPARAM_VALUE.TYPE7_NUM}
}

proc update_MODELPARAM_VALUE.TYPE7_REG_OFFSET { MODELPARAM_VALUE.TYPE7_REG_OFFSET PARAM_VALUE.TYPE7_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE7_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE7_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE8_NUM { MODELPARAM_VALUE.TYPE8_NUM PARAM_VALUE.TYPE8_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE8_NUM}] ${MODELPARAM_VALUE.TYPE8_NUM}
}

proc update_MODELPARAM_VALUE.TYPE8_REG_OFFSET { MODELPARAM_VALUE.TYPE8_REG_OFFSET PARAM_VALUE.TYPE8_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE8_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE8_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE9_NUM { MODELPARAM_VALUE.TYPE9_NUM PARAM_VALUE.TYPE9_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE9_NUM}] ${MODELPARAM_VALUE.TYPE9_NUM}
}

proc update_MODELPARAM_VALUE.TYPE9_REG_OFFSET { MODELPARAM_VALUE.TYPE9_REG_OFFSET PARAM_VALUE.TYPE9_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE9_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE9_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE10_NUM { MODELPARAM_VALUE.TYPE10_NUM PARAM_VALUE.TYPE10_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE10_NUM}] ${MODELPARAM_VALUE.TYPE10_NUM}
}

proc update_MODELPARAM_VALUE.TYPE10_REG_OFFSET { MODELPARAM_VALUE.TYPE10_REG_OFFSET PARAM_VALUE.TYPE10_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE10_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE10_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE11_NUM { MODELPARAM_VALUE.TYPE11_NUM PARAM_VALUE.TYPE11_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE11_NUM}] ${MODELPARAM_VALUE.TYPE11_NUM}
}

proc update_MODELPARAM_VALUE.TYPE11_REG_OFFSET { MODELPARAM_VALUE.TYPE11_REG_OFFSET PARAM_VALUE.TYPE11_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE11_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE11_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE12_NUM { MODELPARAM_VALUE.TYPE12_NUM PARAM_VALUE.TYPE12_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE12_NUM}] ${MODELPARAM_VALUE.TYPE12_NUM}
}

proc update_MODELPARAM_VALUE.TYPE12_REG_OFFSET { MODELPARAM_VALUE.TYPE12_REG_OFFSET PARAM_VALUE.TYPE12_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE12_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE12_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE13_NUM { MODELPARAM_VALUE.TYPE13_NUM PARAM_VALUE.TYPE13_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE13_NUM}] ${MODELPARAM_VALUE.TYPE13_NUM}
}

proc update_MODELPARAM_VALUE.TYPE13_REG_OFFSET { MODELPARAM_VALUE.TYPE13_REG_OFFSET PARAM_VALUE.TYPE13_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE13_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE13_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE14_NUM { MODELPARAM_VALUE.TYPE14_NUM PARAM_VALUE.TYPE14_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE14_NUM}] ${MODELPARAM_VALUE.TYPE14_NUM}
}

proc update_MODELPARAM_VALUE.TYPE14_REG_OFFSET { MODELPARAM_VALUE.TYPE14_REG_OFFSET PARAM_VALUE.TYPE14_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE14_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE14_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.TYPE15_NUM { MODELPARAM_VALUE.TYPE15_NUM PARAM_VALUE.TYPE15_NUM } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE15_NUM}] ${MODELPARAM_VALUE.TYPE15_NUM}
}

proc update_MODELPARAM_VALUE.TYPE15_REG_OFFSET { MODELPARAM_VALUE.TYPE15_REG_OFFSET PARAM_VALUE.TYPE15_REG_OFFSET } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TYPE15_REG_OFFSET}] ${MODELPARAM_VALUE.TYPE15_REG_OFFSET}
}


proc update_MODELPARAM_VALUE.MAX_REG_OFFSET { MODELPARAM_VALUE.MAX_REG_OFFSET PARAM_VALUE.NUM_TMAX_REG_OFFSETYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_REG_OFFSET}] ${MODELPARAM_VALUE.MAX_REG_OFFSET}
}

proc update_MODELPARAM_VALUE.NUM_TYPE { MODELPARAM_VALUE.NUM_TYPE PARAM_VALUE.NUM_TYPE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NUM_TYPE}] ${MODELPARAM_VALUE.NUM_TYPE}
}


proc update_MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH { MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH PARAM_VALUE.C_S_AXI_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_DATA_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH { MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH PARAM_VALUE.C_S_AXI_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}] ${MODELPARAM_VALUE.C_S_AXI_ADDR_WIDTH}
}

  proc update_gui_for_PARAM_VALUE.C_S_AXI_ADDR_WIDTH {IPINST PARAM_VALUE.C_S_AXI_ADDR_WIDTH} {
    if {[get_property value ${PARAM_VALUE.C_S_AXI_ADDR_WIDTH}]  < 4} {
      set_property visible false [ipgui::get_guiparamspec C_S_AXI_DATA_WIDTH -of $IPINST]
    } else {
      set_property visible true [ipgui::get_guiparamspec C_S_AXI_DATA_WIDTH -of $IPINST]
    }
  }

  proc update_gui_for_PARAM_VALUE.NUM_TYPE {PARAM_VALUE.NUM_TYPE IPINST} {
	set num [get_property value ${PARAM_VALUE.NUM_TYPE} ]
	set hiddenRowsList ""
	for {set i [expr $num+1]} {$i<=16} {incr i} {
			lappend hiddenRowsList $i
			# set_property visible false [ipgui::get_pagespec -name "Memory Bank $i" -of $IPINST]

	}
	set hiddenRowsList [join $hiddenRowsList ,]
	set_property hidden_rows $hiddenRowsList [ipgui::get_tablespec table -of $IPINST]
	# set_property hidden_rows $hiddenRowsList [ipgui::get_tablespec table_s -of $IPINST]
	# for {set i 1 } {$i<=$num} {incr i} {
			
	# 		set_property visible true [ipgui::get_pagespec -name "Memory Bank $i" -of $IPINST]

	# }
}
#