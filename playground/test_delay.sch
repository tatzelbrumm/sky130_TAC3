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
N 460 -120 460 -80 { lab=0}
N 380 -80 460 -80 { lab=0}
N 540 -200 540 -80 { lab=0}
N 540 -320 540 -240 { lab=vdd}
N 460 -220 460 -180 { lab=in}
N 460 -220 500 -220 { lab=in}
N 460 -80 540 -80 { lab=0}
N 380 -320 540 -320 { lab=vdd}
N 380 -320 380 -180 { lab=vdd}
N 940 -220 980 -220 { lab=out4}
N 660 -200 660 -80 { lab=0}
N 660 -320 660 -240 { lab=vdd}
N 780 -200 780 -80 { lab=0}
N 780 -320 780 -240 { lab=vdd}
N 900 -200 900 -80 { lab=0}
N 900 -320 900 -240 { lab=vdd}
N 540 -80 900 -80 { lab=0}
N 540 -320 900 -320 { lab=vdd}
N 580 -220 620 -220 { lab=out1}
N 700 -220 740 -220 { lab=out2}
N 820 -220 860 -220 { lab=out3}
C {devices/code_shown.sym} 0 -470 0 0 {name=ngspice 
only_toplevel=true 
value="
.options gmin=1e-15 abstol=1p
.option savecurrents
.control
save all
tran 10n 3m
write test_delay.raw
plot in out1 out2 out3 out4
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
C {schmittinv.sym} 540 -220 0 0 {name=xdut1}
C {devices/vsource.sym} 460 -150 0 0 {name=Vin value="pwl(0 0 499.999u 0 500u 1.8 999.999u 1.8 1m 0 2m 1.8 3m 0)"
}
C {devices/lab_pin.sym} 460 -220 0 0 {name=l3 lab=in}
C {devices/lab_pin.sym} 980 -220 0 1 {name=l4 lab=out4}
C {schmittinv.sym} 660 -220 0 0 {name=xdut2}
C {schmittinv.sym} 780 -220 0 0 {name=xdut3}
C {schmittinv.sym} 900 -220 0 0 {name=xdut4}
C {devices/lab_pin.sym} 600 -220 1 0 {name=l6 lab=out1}
C {devices/lab_pin.sym} 720 -220 1 0 {name=l7 lab=out2}
C {devices/lab_pin.sym} 840 -220 1 0 {name=l8 lab=out3}
