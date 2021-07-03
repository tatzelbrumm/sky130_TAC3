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
N 580 -120 600 -130 { lab=B}
N 600 -90 600 -80 { lab=M}
N 600 -80 640 -80 { lab=M}
C {devices/code_shown.sym} 60 -770 0 0 {name=NGSPICE
only_toplevel=true
value="
vp P 0 1.8
vm M 0 0
vb B 0 0
.control
save all
dc vb 0.01 3 0.01
*dc temp -40 140 1
plot v(p,m) / vr9#branch
plot all.vr9#branch vs B


.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Michele Mastella"}
C {devices/ammeter.sym} 640 -170 0 0 {name=Vr9}
C {devices/lab_pin.sym} 640 -200 0 1 {name=p25 lab=P}
C {devices/lab_pin.sym} 600 -90 0 1 {name=p26 lab=M}
C {devices/lab_pin.sym} 580 -120 0 0 {name=p27 lab=B}
C {devices/ipin.sym} 310 -200 0 0 {name=p45 lab=P}
C {devices/ipin.sym} 310 -160 0 0 {name=p46 lab=M}
C {devices/ipin.sym} 310 -120 0 0 {name=p47 lab=B}
C {devices/code.sym} 60 -210 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/vccs.sym} 640 -110 0 0 {name=G1 value='1e-6'
}
