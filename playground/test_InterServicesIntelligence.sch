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
N 380 -120 380 -80 { lab=0}
N 540 -220 760 -220 { lab=in}
N 380 -320 380 -180 { lab=vdd}
N 380 -80 540 -80 { lab=0}
N 540 -220 540 -200 { lab=in}
N 540 -140 540 -80 { lab=0}
N 620 -200 760 -200 { lab=resetb}
N 620 -200 620 -160 { lab=resetb}
N 620 -100 620 -80 { lab=0}
N 540 -80 620 -80 { lab=0}
N 820 -160 820 -80 { lab=0}
N 620 -80 820 -80 { lab=0}
N 820 -320 820 -260 { lab=vdd}
N 380 -320 820 -320 { lab=vdd}
N 880 -220 960 -220 { lab=isi}
C {devices/code_shown.sym} 0 -610 0 0 {name=ngspice 
only_toplevel=true 
value="
*.model switch1 sw vt=1.2 vh=0 ron=1 roff=1e9
.options gmin=1e-15 abstol=1p trtol=1 chgtol=1e-16
.option savecurrents
.control
save all
tran 10n 2m
write test_InterServicesIntelligence.raw
plot isi
plot -Vdd#branch
.endc
"}
C {devices/lab_pin.sym} 380 -80 0 0 {name=l1 lab=0}
C {devices/code.sym} 30 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/vsource.sym} 380 -150 0 1 {name=Vdd value=1.8
}
C {devices/lab_pin.sym} 380 -320 0 0 {name=l2 lab=vdd}
C {devices/title.sym} 160 0 0 0 {name=l5 author="Christoph Maier"}
C {devices/vsource.sym} 540 -170 0 0 {name=Vin value="0 pulse(0 1.8 50u 1n 1n 100u 200u)"
}
C {devices/lab_pin.sym} 540 -220 0 0 {name=l3 lab=in}
C {devices/vsource.sym} 620 -130 0 0 {name=Vpor value="dc 0 pwl(0 0 10u 1.8)"
}
C {/home/cmaier/.xschem/sky130_TAC3/playground/InterServicesIntelligence.sym} 820 -220 0 0 {name=xdut}
C {devices/lab_pin.sym} 960 -220 0 1 {name=l4 lab=isi}
C {devices/lab_pin.sym} 620 -200 0 0 {name=l6 lab=resetb}
