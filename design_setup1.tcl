# @Author: Luca Valente
# @Date:   2021-03-24 10:49:26
# @Last Modified by:   Alfio Di Mauro
# @Last Modified time: 2021-04-04 07:43:48

set CLK_GATE_CELL    "GF22FDX_SC8T_104CPP_BASE_CSC28L_SSG_0P72V_0P00V_0P00V_0P00V_M40C/SC8T_CKGPRELATNX4_CSC28L"

set ADDITIONAL_LINK_LIB_FILES "/home/eda_work/asif/22nm_lib/dbs/20lvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC20L_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/20slvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC20SL_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/24lvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC24L_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/24slvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC24SL_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/28lvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC28L_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/28slvt_dbs/GF22FDX_SC8T_104CPP_BASE_CSC28SL_SSG_0P72V_0P00V_0P00V_0P00V_M40C_ccs.db /home/eda_work/asif/22nm_lib/dbs/IN22FDX_R1PH_NFHN_W00256B046M02C256_dbs/IN22FDX_R1PH_NFHN_W00256B046M02C256_104cpp_SSG_0P720V_0P000V_0P000V_M40C.db /home/eda_work/asif/22nm_lib/dbs/IN22FDX_R1PH_NFHN_W00256B128M02C256_dbs/IN22FDX_R1PH_NFHN_W00256B128M02C256_104cpp_SSG_0P720V_0P000V_0P000V_M40C.db /home/eda_work/asif/22nm_lib/dbs/IN22FDX_S1D_NFRG_W04096B032M04C128_dbs/IN22FDX_S1D_NFRG_W04096B032M04C128_104cpp_SSG_0P720V_0P720V_0P000V_0P000V_M40C.db /home/eda_work/asif/22nm_lib/dbs/io_dbs/IN22FDX_GPIO18_10M19S40PI_SSG_0P72_1P62_M40.db"
                              
                              #IN22FDX_ROMI_FRG_W02048B032M32C064_boot_code_104cpp_SSG_0P590V_0P720V_0P000V_0P000V_125C.db    

set link_library   "$ADDITIONAL_LINK_LIB_FILES"
set target_library "$ADDITIONAL_LINK_LIB_FILES"
#note search path has not been set 

#set_app_var hdlin_enable_upf_compatible_naming true



# By default the tool will create supply set handles. If your UPF has domain dependent
# supply nets, please uncomment the following line:

# set_app_var upf_create_implicit_supply_sets false


define_design_lib work -path ./work
echo " design_setup has been sourced \n"
