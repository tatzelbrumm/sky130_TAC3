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
N 2260 -1240 2260 -1170 { lab=#net1}
N 2260 -1140 2280 -1140 { lab=vss}
N 2280 -1140 2280 -1110 { lab=vss}
N 2260 -1110 2280 -1110 { lab=vss}
N 2260 -1110 2260 -1090 { lab=vss}
N 2260 -1270 2280 -1270 { lab=vdd}
N 2280 -1300 2280 -1270 { lab=vdd}
N 2260 -1300 2280 -1300 { lab=vdd}
N 2260 -1330 2260 -1300 { lab=vdd}
N 2220 -1270 2220 -1140 { lab=vmem}
N 2440 -1240 2440 -1170 { lab=vout}
N 2440 -1140 2460 -1140 { lab=vss}
N 2460 -1140 2460 -1110 { lab=vss}
N 2440 -1110 2460 -1110 { lab=vss}
N 2440 -1110 2440 -1090 { lab=vss}
N 2440 -1270 2460 -1270 { lab=vdd}
N 2460 -1300 2460 -1270 { lab=vdd}
N 2440 -1300 2460 -1300 { lab=vdd}
N 2440 -1330 2440 -1300 { lab=vdd}
N 2400 -1270 2400 -1140 { lab=#net1}
N 2260 -1200 2400 -1200 { lab=#net1}
N 2080 -1200 2220 -1200 { lab=vmem}
N 2080 -1140 2080 -1120 { lab=vss}
N 1950 -1340 1950 -1310 { lab=vdd}
N 1950 -1250 1950 -1210 { lab=vmem}
N 1950 -1200 2080 -1200 { lab=vmem}
N 1950 -1210 1950 -1200 { lab=vmem}
N 2130 -1400 2210 -1400 { lab=vmem}
N 2130 -1400 2130 -1200 { lab=vmem}
N 2440 -1200 2540 -1200 { lab=vout}
N 2540 -1400 2540 -1200 { lab=vout}
N 2270 -1400 2540 -1400 { lab=vout}
N 2130 -1200 2130 -1080 { lab=vmem}
N 2090 -1050 2130 -1050 { lab=vss}
N 2090 -1050 2090 -1020 { lab=vss}
N 2090 -1020 2130 -1020 { lab=vss}
N 2130 -1020 2130 -1000 { lab=vss}
N 2170 -1050 2540 -1050 { lab=vout}
N 2540 -1200 2540 -1050 { lab=vout}
N 1950 -1080 1950 -1050 { lab=vss}
N 1840 -1110 1920 -1110 { lab=INPUT}
N 1840 -1050 1950 -1050 { lab=vss}
N 1680 -1510 1680 -1470 { lab=#net2}
N 1680 -1510 1760 -1510 { lab=#net2}
N 1760 -1510 1760 -1480 { lab=#net2}
N 1760 -1420 1760 -1390 { lab=vdd}
N 1680 -1410 1680 -1390 { lab=vss}
C {devices/code_shown.sym} 1260 -1550 0 0 {name=ngspice 
only_toplevel=true 
value=" 
.option savecurrents
vvss vss 0 0
Vin in 0 dc 0.5 ac 0.25 sin(0.5 0.5 1e6)
.control
save all
*dc vpressure 0.01 120 0.1
tran 0.1n 10u
*write piezoresistor_tb.raw
*plot -all.Vres/all.Vres#branch
plot "vmem" "vout" Input
*plot all.vdd_meas#branch*all.vdd
plot all.vmem#branch
op
write AXION_hillock.raw
wrdata spikes_AH.csv all.vout
wrdata pressure.csv all.Input

.endc
"}
C {sky130_fd_pr/nfet_01v8.sym} 2240 -1140 0 0 {name=M2
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2240 -1270 0 0 {name=M11
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2260 -1320 0 0 {name=l5 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2260 -1100 0 0 {name=l6 sig_type=std_logic lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 2420 -1140 0 0 {name=M1
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 2420 -1270 0 0 {name=M3
L=0.15
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2440 -1320 0 0 {name=l7 sig_type=std_logic lab=vdd}
C {devices/lab_pin.sym} 2440 -1100 0 0 {name=l8 sig_type=std_logic lab=vss}
C {devices/capa.sym} 2080 -1170 0 0 {name=C1
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {devices/lab_pin.sym} 2080 -1130 0 0 {name=l9 sig_type=std_logic lab=vss}
C {devices/isource.sym} 1950 -1280 0 0 {name=I1 value=0.5u
}
C {devices/lab_pin.sym} 1950 -1330 0 0 {name=l10 sig_type=std_logic lab=vdd}
C {devices/capa.sym} 2240 -1400 1 0 {name=C2
m=1
value=100f
footprint=1206
device="ceramic capacitor"}
C {sky130_fd_pr/nfet_01v8.sym} 2150 -1050 0 1 {name=M4
L=0.15
W=1  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 2130 -1000 0 0 {name=l11 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 2000 -1200 1 0 {name=l1 sig_type=std_logic lab=vmem}
C {devices/lab_pin.sym} 2540 -1230 2 0 {name=l2 sig_type=std_logic lab=vout
}
C {devices/code.sym} 1290 -1040 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/lab_pin.sym} 1950 -1060 0 0 {name=l3 sig_type=std_logic lab=vss}
C {devices/var_res.sym} 1950 -1110 0 0 {name=R2
value=1k
footprint=1206
device=variable\\ resistor
m=5}
C {devices/vsource_arith.sym} 1840 -1080 0 0 {name=E1 VOL=sin(V(IN))}
C {devices/lab_pin.sym} 1890 -1110 1 0 {name=l4 sig_type=std_logic lab=INPUT}
C {devices/ammeter.sym} 1950 -1170 0 0 {name=Vmeas}
C {devices/ammeter.sym} 1760 -1450 0 0 {name=vdd_meas}
C {devices/vsource.sym} 1680 -1440 0 0 {name=V1 value=1.2
}
C {devices/lab_pin.sym} 1680 -1400 0 0 {name=l12 sig_type=std_logic lab=vss}
C {devices/lab_pin.sym} 1760 -1400 0 0 {name=l13 sig_type=std_logic lab=vdd}
