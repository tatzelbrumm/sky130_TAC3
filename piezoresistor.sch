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
N 440 -260 520 -260 { lab=0}
N 380 -300 380 -260 { lab=0}
N 380 -380 380 -360 { lab=sqrtp}
N 640 -300 640 -260 { lab=0}
N 520 -260 640 -260 { lab=0}
N 640 -380 640 -360 { lab=res}
N 380 -260 440 -260 { lab=0}
N 300 -500 420 -500 { lab=resistor_pos}
N 300 -440 420 -440 { lab=resistor_neg}
C {devices/bsource.sym} 380 -330 0 0 {name=Broot VAR=V FUNC="sqrt(v(pressure_pos,pressure_neg))"}
C {devices/bsource.sym} 640 -330 0 0 {name=Bres VAR=V FUNC="106*(50/v(sqrtp)-1)*exp(-0.328*v(sqrtp))+15"}
C {devices/bsource.sym} 420 -470 0 0 {name=Brvar VAR=I FUNC="V(resistor_pos,resistor_neg)/V(res)"}
C {devices/title.sym} 160 -30 0 0 {name=l1 author="Telluride21 TAC"}
C {devices/lab_pin.sym} 440 -260 0 0 {name=l3 lab=0}
C {devices/lab_pin.sym} 380 -380 0 0 {name=l4 lab=sqrtp}
C {devices/lab_pin.sym} 640 -380 0 0 {name=l5 lab=res}
C {devices/ipin.sym} 300 -360 0 0 { name=p8 lab=pressure_pos }
C {devices/ipin.sym} 300 -300 0 0 { name=p9 lab=pressure_neg }
C {devices/ipin.sym} 300 -500 0 0 { name=p11 lab=resistor_pos }
C {devices/ipin.sym} 300 -440 0 0 { name=p12 lab=resistor_neg }
