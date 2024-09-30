vlog APB_MAIN.v APB_TB_random.v +acc
vsim tb_random_apbmain
#add wave -r *
do wave.do
run -all
