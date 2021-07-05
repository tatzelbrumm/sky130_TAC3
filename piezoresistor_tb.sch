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
N 390 -720 410 -720 {lab=B}
N 390 -740 410 -740 {lab=G1v8}
N 260 -680 260 -660 {lab=S}
N 260 -830 260 -810 { lab=D1v8}
N 210 -830 260 -830 { lab=D1v8}
N 260 -750 260 -740 { lab=#net1}
N 320 -790 470 -790 { lab=#net1}
N 260 -750 260 -720 { lab=#net1}
N 260 -700 410 -700 { lab=S}
N 260 -700 260 -680 { lab=S}
N 260 -720 320 -720 { lab=#net1}
N 320 -790 320 -720 { lab=#net1}
N 410 -700 410 -670 { lab=S}
N 410 -670 470 -670 { lab=S}
N 410 -740 440 -740 { lab=G1v8}
N 410 -720 440 -720 { lab=B}
C {devices/lab_pin.sym} 210 -830 0 0 {name=p54 lab=D1v8}
C {devices/lab_pin.sym} 260 -660 0 1 {name=p55 lab=S}
C {devices/lab_pin.sym} 390 -720 2 1 {name=p56 lab=B}
C {devices/ammeter.sym} 260 -780 0 0 {name=Vd9 current=5.7132e-04}
C {devices/lab_pin.sym} 390 -740 0 0 {name=p57 lab=G1v8}
C {devices/ipin.sym} 90 -790 0 0 {name=p48 lab=G1v8}
C {devices/ipin.sym} 90 -750 0 0 {name=p49 lab=D1v8}
C {devices/ipin.sym} 90 -710 0 0 {name=p50 lab=B}
C {devices/code_shown.sym} -440 -1140 0 0 {name=NGSPICE1
only_toplevel=true
value="* this experimental option enables mos model bin 
* selection based on W/NF instead of W
.option wnflag=1 
.option savecurrents
vg G1v8 0 1.8
vs s 0 0
vd D1v8 0 1.8
vb b 0 0
.control
save all
dc vd 0 1.8 0.01 vg 0 1.8 0.2
* dc vd 0 1.8 0.01 vg 0 1.2 0.1
plot all.vd9#branch vs D1v8
op
write test_nmos.raw
.endc
" }
C {/home/mast/Progetti/Telluride2021/sky130_TAC3/piezoresistor.sym} 560 -730 0 0 {name=x1}
