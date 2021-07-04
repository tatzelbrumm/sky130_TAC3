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
N 440 -380 440 -360 { lab=pressure}
N 440 -300 440 -260 { lab=0}
N 440 -260 520 -260 { lab=0}
N 520 -300 520 -260 { lab=0}
N 520 -380 520 -360 { lab=sqrtp}
N 640 -300 640 -260 { lab=0}
N 520 -260 640 -260 { lab=0}
N 640 -380 640 -360 { lab=res}
N 800 -360 800 -320 { lab=term2}
N 800 -460 800 -420 { lab=term1}
C {devices/code_shown.sym} 60 -770 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents
vt2 term2 0
it12 term2 term1 1m
.control
save all
dc vp 0.01 3 0.01
write b_source_magic.raw
plot v(sqrtp) vs v(pressure)
plot v(res) vs v(pressure)
plot v(term1,term2) vs v(pressure)
plot 1/v(term1,term2) vs v(pressure)
.endc
" }
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Christoph Maier"}
C {devices/bsource.sym} 520 -330 0 0 {name=Broot VAR=V FUNC="sqrt(v(pressure))"}
C {devices/vsource.sym} 440 -330 0 1 {name=Vp value=1}
C {devices/lab_pin.sym} 440 -380 0 0 {name=l2 lab=pressure}
C {devices/lab_pin.sym} 440 -260 0 0 {name=l3 lab=0}
C {devices/lab_pin.sym} 520 -380 0 0 {name=l4 lab=sqrtp}
C {devices/bsource.sym} 640 -330 0 0 {name=Bres VAR=V FUNC="106*(50/v(sqrtp)-1)*exp(-0.328*v(sqrtp))+15"}
C {devices/bsource.sym} 800 -390 0 0 {name=Brvar VAR=I FUNC="V(term1,term2)/V(res)"}
C {devices/lab_pin.sym} 640 -380 0 0 {name=l5 lab=res}
C {devices/lab_pin.sym} 800 -440 0 0 {name=l6 lab=term1}
C {devices/lab_pin.sym} 800 -340 0 0 {name=l7 lab=term2}
