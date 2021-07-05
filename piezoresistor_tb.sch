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
N 330 -70 330 -40 { lab=0}
N 330 -80 380 -80 { lab=0}
N 330 -80 330 -70 { lab=0}
N 200 -100 380 -100 { lab=vres}
N 200 -40 330 -40 { lab=0}
N 200 -120 380 -120 { lab=0}
N 260 -140 380 -140 { lab=pres}
N 260 -180 260 -140 { lab=pres}
N 200 -180 260 -180 { lab=pres}
C {devices/code_shown.sym} 0 -460 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.option savecurrents
.control
save all
dc vpressure 0.01 1.8 0.01 vres -2 2 1
write piezoresistor_tb.raw
plot all.Vres#branch 
.endc
"}
C {devices/lab_pin.sym} 200 -180 0 0 {name=l1 
lab=pres}
C {devices/lab_pin.sym} 200 -120 0 0 {name=l2 
lab=0}
C {devices/lab_pin.sym} 200 -40 0 0 {name=l4 lab=0}
C {piezoresistor.sym} 530 -110 0 0 {name=Xdut}
C {devices/lab_pin.sym} 200 -100 0 0 {name=l3 sig_type=std_logic lab=vres}
C {devices/vsource.sym} 200 -70 0 1 {name=Vres value=1}
C {devices/vsource.sym} 200 -150 0 1 {name=Vpressure value=0.9}
