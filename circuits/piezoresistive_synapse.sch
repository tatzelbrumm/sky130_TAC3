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
N 1020 -820 1020 -780 { lab=vdd}
N 940 -670 990 -670 { lab=pres_pos}
N 940 -650 990 -650 { lab=pres_neg}
N 940 -540 980 -540 { lab=sample}
N 1020 -510 1020 -490 { lab=mygnd}
N 1020 -600 1020 -590 { lab=out}
N 1020 -600 1020 -570 { lab=out}
N 1020 -540 1040 -540 { lab=bulk}
C {piezoresistor.sym} 1110 -660 0 0 {name=x1}
C {devices/code.sym} 730 -690 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {sky130_fd_pr/pfet_01v8.sym} 1000 -540 0 0 {name=M1
L=0.15
W=5
nf=1 
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 1020 -820 0 0 {name=l1 lab=vdd}
C {devices/lab_pin.sym} 940 -670 0 0 {name=l2 lab=pres_pos}
C {devices/lab_pin.sym} 940 -650 0 0 {name=l3 lab=pres_neg}
C {devices/lab_pin.sym} 1020 -490 0 0 {name=l5 lab=mygnd}
C {devices/code_shown.sym} 300 -900 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents
v1 vdd 0 1.2
v2 mygnd 0 0
v3 pres_pos 0 0
v4 pres_neg 0 0
v5 sample 0 0.7
v6 bulk 0 1.2
.control
save all
dc v3 0.01 140 0.01

plot v(out,mygnd)
plot all.vmeas#branch
wrdata 1t1r_voltage_transdiode_vdd0v2.csv all.out
wrdata 1t1r_current_transdiode_vdd0v2.csv all.vmeas#branch
op
.endc
"}
C {devices/lab_pin.sym} 1020 -590 0 0 {name=l6 lab=out
}
C {devices/lab_pin.sym} 1040 -540 0 0 {name=l7 lab=bulk}
C {devices/ammeter.sym} 1020 -750 0 0 {name=Vmeas}
C {devices/lab_pin.sym} 940 -540 0 0 {name=l4 lab=sample}
