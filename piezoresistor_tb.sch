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
T {name=ngspice 
only_toplevel=true 
value=" 
.option savecurrents
it12 term2 term1 1m
v1 vres_pos 0 0
v2 vres_neg 0 0
v3 pres_pos 0 0
v4 pres_neg 0 0
.control
save all
dc v3 0 1.8 0.01
plot all.Vmeas
.endc} -170 -880 0 0 0.4 0.4 {}
N 310 -660 310 -630 { lab=vres_neg}
N 330 -710 360 -710 { lab=pres_neg}
N 330 -730 360 -730 { lab=pres_pos}
N 310 -670 360 -670 { lab=vres_neg}
N 310 -670 310 -660 { lab=vres_neg}
N 180 -690 360 -690 { lab=vres_pos
}
C {devices/lab_pin.sym} 330 -730 0 0 {name=l1 
lab=pres_pos}
C {devices/lab_pin.sym} 330 -710 0 0 {name=l2 
lab=pres_neg}
C {devices/lab_pin.sym} 310 -630 0 0 {name=l4 lab=vres_neg}
C {/home/mast/Progetti/Telluride2021/sky130_TAC3/piezoresistor.sym} 510 -700 0 0 {name=R1

}
C {devices/lab_pin.sym} 180 -690 0 0 {name=l3 sig_type=std_logic lab=vres_pos
}
