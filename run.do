vlib work
vdel -all
vlib work

vlog martian_days.sv +acc
vlog martian_days_tb.sv	+acc

vsim work.tb
add wave -r *
run -all
