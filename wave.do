onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_random_apbmain/pclk
add wave -noupdate /tb_random_apbmain/prst
add wave -noupdate -group TB /tb_random_apbmain/pwrite
add wave -noupdate -group TB /tb_random_apbmain/paddressi
add wave -noupdate -group TB /tb_random_apbmain/pdatai
add wave -noupdate -group TB /tb_random_apbmain/prdata
add wave -noupdate -group TB /tb_random_apbmain/i
add wave -noupdate -group TB /tb_random_apbmain/uut/write
add wave -noupdate -group TB /tb_random_apbmain/uut/penable
add wave -noupdate -group TB /tb_random_apbmain/uut/psel
add wave -noupdate -group TB /tb_random_apbmain/uut/paddress
add wave -noupdate -group TB /tb_random_apbmain/uut/pwdata
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/pclk
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/prst
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/pwrite
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/paddressi
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/pdatai
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/prdata
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/pclk_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/prst_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/pwritei
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/address_i
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/pdata_i
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/pwrite_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/psel_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/penable_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/paddress_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/pwdata_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/prdata_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/present_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a1/next_m
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/pclk_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/prst_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/penable_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/pwrite_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/psel_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/paddress_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/pwdata_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/prdata_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/present_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/next_s
add wave -noupdate -expand -group DUT /tb_random_apbmain/uut/a2/i
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {203 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {525 ns}
