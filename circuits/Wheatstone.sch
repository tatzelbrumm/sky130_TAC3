v {xschem version=2.9.9 file_version=1.2 

* Copyright 2020 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {}
V {}
S {}
E {}
N 690 -120 720 -120 { lab=pres}
N 690 -140 690 -120 { lab=pres}
N 650 -140 690 -140 { lab=pres}
N 690 -100 720 -100 { lab=presNeg}
N 690 -100 690 -80 { lab=presNeg}
N 650 -80 690 -80 { lab=presNeg}
N 970 -450 1000 -450 { lab=pres}
N 970 -470 970 -450 { lab=pres}
N 930 -470 970 -470 { lab=pres}
N 970 -430 1000 -430 { lab=presNeg}
N 970 -430 970 -410 { lab=presNeg}
N 930 -410 970 -410 { lab=presNeg}
N 750 -500 1030 -500 { lab=vdd}
N 750 -500 750 -460 { lab=vdd}
N 750 -400 750 -170 { lab=below}
N 750 -50 1030 -50 { lab=mygnd}
N 1030 -130 1030 -50 { lab=mygnd}
N 1030 -380 1030 -190 { lab=above}
C {piezoresistor.sym} 840 -110 0 0 {name=Xdut}
C {devices/lab_pin.sym} 650 -140 0 0 {name=l1 lab=pres}
C {piezoresistor.sym} 1120 -440 0 0 {name=Xdut1}
C {devices/lab_pin.sym} 930 -470 0 0 {name=l3 lab=pres}
C {devices/code.sym} 320 -410 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/code_shown.sym} 600 -980 0 0 {name=NGSPICE
only_toplevel=true
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W

.option savecurrents
v1 vdd 0 1.2
v2 mygnd 0 0
v3 pres 0 0
v4 presNeg 0 0

.control
save all
dc v3 0.01 10k 0.1

plot v(below, above)
plot v(below)
plot v(above)
op
*write Wheatstone.raw
.endc
" }
C {sky130_fd_pr/res_generic_po.sym} 750 -430 0 0 {name=R4
W=1
L=5
model=res_generic_po
spiceprefix=X
spice_ignore=false
mult=1}
C {sky130_fd_pr/res_generic_po.sym} 1030 -160 0 0 {name=R1
W=1
L=5
model=res_generic_po
spiceprefix=X
spice_ignore=false
mult=1}
C {devices/lab_wire.sym} 950 -50 0 0 {name=l8 sig_type=std_logic lab=mygnd}
C {devices/lab_pin.sym} 760 -500 0 0 {name=l2 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 650 -80 0 0 {name=l7 sig_type=std_logic lab=presNeg

}
C {devices/lab_pin.sym} 930 -410 0 0 {name=l9 sig_type=std_logic lab=presNeg}
C {devices/lab_pin.sym} 750 -290 0 0 {name=l4 sig_type=std_logic lab=below}
C {devices/lab_pin.sym} 1030 -280 0 0 {name=l5 sig_type=std_logic lab=above}
