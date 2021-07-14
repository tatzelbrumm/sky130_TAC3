v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 590 -360 700 -360 { lab=gnd}
N 700 -360 810 -360 { lab=gnd}
N 700 -560 760 -560 { lab=#net1}
N 520 -500 550 -500 { lab=#net2}
N 700 -580 700 -560 { lab=#net1}
N 790 -520 790 -470 { lab=vspike}
N 480 -520 480 -470 { lab=vspike}
N 480 -520 550 -520 { lab=vspike}
N 590 -490 590 -360 { lab=gnd}
N 520 -360 590 -360 { lab=gnd}
N 480 -470 790 -470 { lab=vspike}
N 590 -560 590 -550 { lab=#net1}
N 590 -560 700 -560 { lab=#net1}
N 700 -670 700 -640 { lab=gnd}
N 700 -670 940 -670 { lab=gnd}
N 1030 -670 1030 -360 { lab=gnd}
N 980 -360 1030 -360 { lab=gnd}
N 810 -360 890 -360 { lab=gnd}
N 700 -380 700 -360 { lab=gnd}
N 980 -380 980 -360 { lab=gnd}
N 810 -380 810 -360 { lab=gnd}
N 520 -380 520 -360 { lab=gnd}
N 980 -560 980 -440 { lab=isi}
N 810 -520 810 -440 { lab=#net3}
N 700 -560 700 -440 { lab=#net1}
N 520 -500 520 -440 { lab=#net2}
N 450 -360 520 -360 { lab=gnd}
N 940 -670 1030 -670 { lab=gnd}
N 890 -380 890 -360 { lab=gnd}
N 890 -360 980 -360 { lab=gnd}
N 920 -560 980 -560 { lab=isi}
N 820 -560 860 -560 { lab=#net4}
N 890 -520 890 -440 { lab=#net5}
N 910 -520 910 -470 { lab=vspike}
N 790 -470 910 -470 { lab=vspike}
N 450 -470 480 -470 { lab=vspike}
N 980 -560 1070 -560 { lab=isi}
C {devices/capa.sym} 700 -410 0 0 {name=Csample
m=1
value=1p}
C {devices/isource.sym} 700 -610 0 0 {name=I0 value=1m}
C {devices/switch_ngspice.sym} 790 -560 3 0 {name=Ssample model=SWITCH1}
C {devices/switch_ngspice.sym} 590 -520 0 0 {name=Sreset model=SWITCH1}
C {devices/capa.sym} 980 -410 0 0 {name=Cintegrate
m=1
value=1p}
C {devices/vsource.sym} 810 -410 0 0 {name=V1 value=3}
C {devices/vsource.sym} 520 -410 0 0 {name=Vreset value=1.6}
C {devices/iopin.sym} 450 -360 0 1 {name=p1 lab=gnd}
C {devices/switch_ngspice.sym} 890 -560 3 0 {name=Ssample1 model=SWITCH1}
C {devices/vsource.sym} 890 -410 0 0 {name=V2 value=3}
C {devices/ipin.sym} 450 -470 0 0 {name=p2 lab=spike}
C {devices/opin.sym} 1070 -560 0 0 {name=p3 lab=isi}
