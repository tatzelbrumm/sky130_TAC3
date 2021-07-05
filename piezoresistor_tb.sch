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
N 380 -130 410 -130 { lab=pres}
N 380 -150 380 -130 { lab=pres}
N 340 -150 380 -150 { lab=pres}
N 380 -110 410 -110 { lab=0}
N 380 -110 380 -90 { lab=0}
N 340 -90 380 -90 { lab=0}
N 240 -90 240 -60 { lab=0}
N 240 -60 440 -60 { lab=0}
N 240 -180 440 -180 { lab=vres}
N 240 -180 240 -150 { lab=vres}
C {devices/code_shown.sym} 0 -460 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.option savecurrents
.control
save all
dc vpressure 0.01 1.8 0.01 vres -2 2 1
write piezoresistor_tb.raw
plot all.Vres#branch 
op
write piezoresistor_tb_op.raw
.endc
"}
C {piezoresistor.sym} 530 -120 0 0 {name=Xdut}
C {devices/lab_pin.sym} 340 -150 0 0 {name=l1 lab=pres}
C {devices/lab_pin.sym} 340 -90 0 0 {name=l2 lab=0}
C {devices/lab_pin.sym} 240 -180 0 0 {name=l3 lab=vres}
C {devices/lab_pin.sym} 240 -60 0 0 {name=l4 lab=0}
C {devices/vsource.sym} 240 -120 0 1 {name=Vres value=1}
C {devices/vsource.sym} 340 -120 0 1 {name=Vpressure value=0.9}
