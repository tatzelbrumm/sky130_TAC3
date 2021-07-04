v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 2160 -750 2190 -750 { lab=GND}
N 2190 -750 2190 -690 { lab=GND}
N 2160 -690 2190 -690 { lab=GND}
N 2160 -800 2160 -780 { lab=Vd}
N 2100 -830 2120 -830 { lab=Vd}
N 2100 -830 2100 -800 { lab=Vd}
N 2100 -800 2160 -800 { lab=Vd}
N 2160 -900 2160 -880 { lab=Vg}
N 2070 -900 2160 -900 { lab=Vg}
N 2070 -900 2070 -750 { lab=Vg}
N 2070 -750 2120 -750 { lab=Vg}
N 2160 -720 2160 -690 { lab=GND}
N 2160 -930 2160 -900 { lab=Vg}
N 2010 -870 2010 -810 { lab=Vdref}
N 2010 -870 2120 -870 { lab=Vdref}
N 2120 -690 2160 -690 { lab=GND}
N 2010 -750 2010 -690 { lab=GND}
N 2160 -1030 2160 -990 { lab=#net1}
N 2160 -1030 2270 -1030 { lab=#net1}
N 2190 -690 2270 -690 { lab=GND}
N 2120 -690 2120 -670 { lab=GND}
N 2160 -820 2160 -800 { lab=Vd}
N 2010 -690 2120 -690 { lab=GND}
N 2270 -1030 2270 -990 { lab=#net1}
N 2270 -930 2270 -690 { lab=GND}
C {sky130_fd_pr/nfet_03v3_nvt.sym} 2140 -750 0 0 {name=M1
L=0.5
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_03v3_nvt
spiceprefix=X
}
C {devices/vcvs.sym} 2160 -850 0 0 {name=Evgd value=-1000}
C {devices/isource.sym} 2160 -960 0 1 {name=Id value=10n}
C {devices/vsource.sym} 2010 -780 0 1 {name=Vdref value=0.2}
C {devices/gnd.sym} 2120 -670 0 0 {name=l1 lab=GND}
C {devices/lab_pin.sym} 2070 -840 0 0 {name=l2 sig_type=std_logic lab=Vg}
C {devices/lab_pin.sym} 2100 -810 0 0 {name=l3 sig_type=std_logic lab=Vd}
C {devices/lab_pin.sym} 2010 -840 0 0 {name=l4 sig_type=std_logic lab=Vdref}
C {devices/code.sym} 1680 -760 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_01v8/sky130_fd_pr__esd_nfet_01v8__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_pfet_g5v0d10v5/sky130_fd_pr__esd_pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d16v0/sky130_fd_pr__pfet_g5v0d16v0__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d16v0/sky130_fd_pr__nfet_g5v0d16v0__tt_discrete.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/esd_nfet_g5v0d10v5/sky130_fd_pr__esd_nfet_g5v0d10v5__tt.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/nonfet.spice
* Mismatch parameters
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8/sky130_fd_pr__nfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8/sky130_fd_pr__pfet_01v8__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_01v8_lvt/sky130_fd_pr__nfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_lvt/sky130_fd_pr__pfet_01v8_lvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_01v8_hvt/sky130_fd_pr__pfet_01v8_hvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_g5v0d10v5/sky130_fd_pr__nfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/pfet_g5v0d10v5/sky130_fd_pr__pfet_g5v0d10v5__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_05v0_nvt/sky130_fd_pr__nfet_05v0_nvt__mismatch.corner.spice
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_03v3_nvt/sky130_fd_pr__nfet_03v3_nvt__mismatch.corner.spice
* Resistor\\\\$::SKYWATER_MODELS\\\\/Capacitor
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical.spice
.include \\\\$::SKYWATER_MODELS\\\\/models/r+c/res_typical__cap_typical__lin.spice
* Special cells
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/specialized_cells.spice
* All models
.include \\\\$::SKYWATER_MODELS\\\\/models/all.spice
* Corner
.include \\\\$::SKYWATER_MODELS\\\\/models/corners/tt/rf.spice
"}
C {devices/code.sym} 1680 -910 0 0 {name=nfet_20v0_MODEL
only_toplevel=true
format="tcleval( @value )"
value="
.include \\\\$::SKYWATER_MODELS\\\\/cells/nfet_20v0/sky130_fd_pr__nfet_20v0__tt_discrete.corner.spice
"}
C {devices/code_shown.sym} 1700 -1290 0 0 {name=NGSPICE only_toplevel=true value="* simulation directives
.option wnflag=1 
.option savecurrents
.control
save all
dc Id 10n 10u 10n
plot Vg vs all.Vidsense#branch
* dc vd 0 1.8 0.01 vg 0 1.2 0.1
*plot all.vd1#branch vs D1v8
*plot all.vd2#branch vs D1v8
*save @m.xm1.msky130_fd_pr__nfet_03v3[gm]
*op
write nfet_03v3_gmtest.raw
.endc
" }
C {devices/vsource.sym} 2270 -960 2 1 {name=Vidsense value=0.0}
