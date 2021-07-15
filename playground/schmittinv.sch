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
N 460 -140 480 -140 { lab=vss}
N 480 -140 480 -80 { lab=vss}
N 460 -110 460 -80 { lab=vss}
N 460 -460 480 -460 { lab=vdd}
N 460 -520 480 -520 { lab=vdd}
N 460 -520 460 -490 { lab=vdd}
N 600 -220 620 -220 { lab=vss}
N 600 -220 600 -80 { lab=vss}
N 600 -380 620 -380 { lab=vdd}
N 360 -300 400 -300 { lab=in}
N 480 -520 480 -460 { lab=vdd}
N 460 -80 480 -80 { lab=vss}
N 660 -220 680 -220 { lab=out}
N 400 -140 420 -140 { lab=in}
N 400 -460 420 -460 { lab=in}
N 660 -380 680 -380 { lab=out}
N 400 -220 400 -140 { lab=in}
N 400 -380 400 -300 { lab=in}
N 460 -380 480 -380 { lab=vdd}
N 400 -380 420 -380 { lab=in}
N 460 -220 480 -220 { lab=vss}
N 400 -220 420 -220 { lab=in}
N 480 -220 480 -140 { lab=vss}
N 480 -460 480 -380 { lab=vdd}
N 460 -180 460 -170 { lab=dn}
N 460 -420 460 -410 { lab=dp}
N 460 -300 460 -250 { lab=out}
N 460 -300 740 -300 { lab=out}
N 620 -280 620 -250 { lab=vdd}
N 460 -180 620 -180 { lab=dn}
N 460 -420 620 -420 { lab=dp}
N 620 -420 620 -410 { lab=dp}
N 620 -190 620 -180 { lab=dn}
N 400 -460 400 -380 { lab=in}
N 400 -300 400 -220 { lab=in}
N 460 -350 460 -300 { lab=out}
N 460 -190 460 -180 { lab=dn}
N 460 -430 460 -420 { lab=dp}
N 480 -520 600 -520 { lab=vdd}
N 600 -520 600 -380 { lab=vdd}
N 480 -80 600 -80 { lab=vss}
N 540 -340 620 -280 { lab=vdd}
N 540 -520 540 -340 { lab=vdd}
N 620 -350 620 -320 { lab=vss}
N 540 -260 620 -320 { lab=vss}
N 540 -260 540 -80 { lab=vss}
N 680 -300 680 -220 { lab=out}
N 680 -380 680 -300 { lab=out}
N 360 -520 460 -520 { lab=vdd}
N 360 -80 460 -80 { lab=vss}
C {sky130_fd_pr/nfet_01v8.sym} 440 -140 0 0 {name=M1
L=32
W=0.5  
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 440 -460 0 0 {name=M5
L=8
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 640 -220 0 1 {name=M3
L=96
W=0.5
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} 640 -380 0 1 {name=M6
L=16
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 620 -180 2 0 {name=l2 lab=dn
}
C {devices/title.sym} 160 0 0 0 {name=l5 author="Christoph Maier"}
C {sky130_fd_pr/pfet_01v8.sym} 440 -380 0 0 {name=M4
L=8
W=0.5
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8.sym} 440 -220 0 0 {name=M2
L=32
W=0.5 
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_pin.sym} 620 -420 2 0 {name=l1 lab=dp
}
C {devices/iopin.sym} 360 -520 0 1 {name=p1 lab=vdd}
C {devices/iopin.sym} 360 -80 0 1 {name=p2 lab=vss}
C {devices/ipin.sym} 360 -300 0 0 {name=p3 lab=in}
C {devices/opin.sym} 740 -300 0 0 {name=p4 lab=out}
