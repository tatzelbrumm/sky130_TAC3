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
N 660 -540 680 -540 { lab=vdd}
N 660 -600 660 -540 { lab=vdd}
N 680 -600 680 -570 { lab=vdd}
N 840 -540 860 -540 { lab=vdd}
N 840 -600 860 -600 { lab=vdd}
N 840 -600 840 -570 { lab=vdd}
N 860 -600 860 -540 { lab=vdd}
N 660 -600 680 -600 { lab=vdd}
N 680 -600 840 -600 { lab=vdd}
N 740 -540 800 -540 { lab=mir}
N 740 -540 740 -480 { lab=mir}
N 680 -480 740 -480 { lab=mir}
N 680 -510 680 -480 { lab=mir}
N 520 -600 660 -600 { lab=vdd}
N 520 -600 520 -570 { lab=vdd}
N 520 -420 520 -290 { lab=gcasc}
N 520 -160 520 -80 { lab=0}
N 700 -80 840 -80 { lab=0}
N 680 -480 680 -450 { lab=mir}
N 520 -420 640 -420 { lab=gcasc}
N 680 -420 700 -420 { lab=0}
N 700 -420 700 -80 { lab=0}
N 500 -260 520 -260 { lab=0}
N 500 -260 500 -80 { lab=0}
N 500 -80 520 -80 { lab=0}
N 380 -600 520 -600 { lab=vdd}
N 380 -600 380 -570 { lab=vdd}
N 380 -510 380 -80 { lab=0}
N 460 -80 500 -80 { lab=0}
N 720 -540 740 -540 { lab=mir}
N 520 -510 520 -420 { lab=gcasc}
N 680 -80 700 -80 { lab=0}
N 520 -160 650 -160 { lab=0}
N 460 -100 460 -80 { lab=0}
N 680 -260 680 -230 { lab=sens}
N 680 -110 680 -80 { lab=0}
N 460 -180 650 -180 { lab=pressure}
N 460 -180 460 -160 { lab=pressure}
N 520 -230 520 -160 { lab=0}
N 380 -80 460 -80 { lab=0}
N 560 -260 680 -260 { lab=sens}
N 520 -80 680 -80 { lab=0}
N 680 -310 680 -260 { lab=sens}
N 680 -390 680 -370 { lab=#net2}
N 840 -100 840 -80 { lab=0}
N 840 -510 840 -370 {}
N 840 -310 840 -160 {}
C {devices/code_shown.sym} 0 -670 0 0 {name=ngspice 
only_toplevel=true 
value="
.options gmin=1e-15 abstol=1p
.option savecurrents
.control
save all
op
plot vsens#branch
plot vin#branch
.endc
"}
C {devices/lab_pin.sym} 380 -80 0 0 {name=l11 lab=0}
C {devices/code.sym} 30 -230 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib \\\\$::SKYWATER_MODELS\\\\/models/sky130.lib.spice tt

.param mc_mm_switch=0
.param mc_pr_switch=1

"}
C {devices/vsource.sym} 380 -540 0 1 {name=Vdd value=1.8
}
C {devices/lab_pin.sym} 680 -300 0 1 {name=l12 lab=sens}
C {devices/lab_pin.sym} 380 -600 0 0 {name=l13 sig_type=std_logic lab=vdd}
C {devices/isource.sym} 520 -540 0 1 {name=Ireg value=1n}
C {devices/ammeter.sym} 680 -340 0 1 {name=Vsens}
C {sky130_fd_pr/pfet_01v8.sym} 820 -540 0 0 {name=Mmirout
L=0.4
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 700 -540 0 1 {name=Mmirin
L=0.4
W=96
nf=1 mult=640
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 520 -420 0 0 {name=l10 lab=gcasc}
C {sky130_fd_pr/nfet_01v8.sym} 660 -420 0 0 {name=Mcasc
L=0.15
W=20  
nf=1 mult=20
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 540 -260 0 1 {name=Mreg
L=20
W=0.5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/ammeter.sym} 840 -340 0 1 {name=Vin}
C {devices/lab_pin.sym} 680 -480 0 0 {name=l3 lab=mir}
C {devices/title.sym} 160 0 0 0 {name=l5 author="Christoph Maier"}
C {/home/cmaier/.xschem/sky130_TAC3/circuits/piezoresistor.sym} 770 -170 0 0 {name=x1}
C {devices/vsource.sym} 460 -130 0 1 {name=Vpressure value="50 pwl(0 1 2m 140 4m 1)"}
C {devices/lab_pin.sym} 460 -180 0 0 {name=l6 lab=pressure}
C {devices/vsource.sym} 840 -130 0 0 {name=Vneuronin value=0.8
}
C {devices/lab_pin.sym} 840 -300 0 0 {name=l1 lab=neuronin}
