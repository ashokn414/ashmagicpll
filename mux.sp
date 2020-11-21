*mux for vco mode in pll (fully custom design)
* SPICE3 file created from mux21.ext - technology: scmos


.include "/home/ashok/Desktop/vsd/spice_exp/sky130_fd_pr/models/corners/tt.spice"


.option scale=0.01u

X0 i1 se vdd vdd sky130_fd_pr__pfet_01v8 w=112 l=15
X1 out se i1 vdd sky130_fd_pr__pfet_01v8 w=112 l=15
X2 i2 se out gnd sky130_fd_pr__nfet_01v8 w=42 l=15
X3 i1 se gnd gnd sky130_fd_pr__nfet_01v8 w=42 l=15
X4 out i1 i1 gnd sky130_fd_pr__nfet_01v8 w=42 l=15
X5 i2 i1 out vdd sky130_fd_pr__pfet_01v8 w=112 l=15



v1 vdd gnd 1.8
v2 i1 gnd pulse 0 1.8 2n 60p 60p 5n 10n
v3 i2 gnd .5
v4 se gnd pulse 0 1.8 2n 60p 60p 20n 40n

.tran 1n 200n
.control
run
plot V(i1)+6 V(i2)+4 V(se)+2 V(out)

.endc
.end
