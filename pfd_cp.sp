
.include "/home/ashok/Desktop/vsd/spice_exp/sky130_fd_pr/models/corners/tt.spice"
.include "/home/ashok/Desktop/vsd/magic_exp/ashmagicpll/library/pfd.lib"
.include "/home/ashok/Desktop/vsd/magic_exp/ashmagicpll/library/chargepump.lib"

XX1 vdd gnd fin fvco_8 up dn pfd
XX2 vdd gnd up dn cp chargepump

v1 vdd gnd 1.8
v2 fin gnd 0 PULSE 0 1.8 10p 50p 50p 100n 200n
v3 fvco_8 gnd 0 pulse 0 1.8 200p 50p 50p 100n 180n

.tran 1ns 15u
*.ic V(cp) = 0
.control
run
plot V(fin)+6 V(up)+4 V(dn)+2 V(cp)

*plot V(N002)
*plot V(Vin_vco)
*plot V(f_out)
.endc
.end
