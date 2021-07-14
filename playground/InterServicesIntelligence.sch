v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 590 -360 700 -360 { lab=gnd}
N 700 -360 890 -360 { lab=gnd}
N 700 -560 860 -560 { lab=sample}
N 520 -500 550 -500 { lab=#net1}
N 700 -580 700 -560 { lab=sample}
N 480 -520 480 -470 { lab=dspikedt}
N 480 -520 550 -520 { lab=dspikedt}
N 590 -490 590 -360 { lab=gnd}
N 520 -360 590 -360 { lab=gnd}
N 480 -470 910 -470 { lab=dspikedt}
N 590 -560 590 -550 { lab=sample}
N 590 -560 700 -560 { lab=sample}
N 700 -670 700 -640 { lab=gnd}
N 700 -670 1030 -670 { lab=gnd}
N 1030 -670 1030 -360 { lab=gnd}
N 980 -360 1030 -360 { lab=gnd}
N 700 -380 700 -360 { lab=gnd}
N 980 -380 980 -360 { lab=gnd}
N 520 -380 520 -360 { lab=gnd}
N 980 -560 980 -440 { lab=isi}
N 700 -560 700 -440 { lab=sample}
N 520 -500 520 -440 { lab=#net1}
N 890 -380 890 -360 { lab=gnd}
N 890 -360 980 -360 { lab=gnd}
N 920 -560 980 -560 { lab=isi}
N 890 -520 890 -440 { lab=voff}
N 910 -520 910 -470 { lab=dspikedt}
N 980 -560 1070 -560 { lab=isi}
N 200 -400 220 -400 { lab=gnd}
N 200 -400 200 -360 { lab=gnd}
N 180 -360 200 -360 { lab=gnd}
N 180 -440 220 -440 { lab=spike}
N 260 -390 260 -360 { lab=gnd}
N 200 -360 260 -360 { lab=gnd}
N 410 -360 520 -360 { lab=gnd}
N 330 -390 330 -360 { lab=gnd}
N 330 -480 330 -450 { lab=#net2}
N 330 -570 330 -540 { lab=dspikedt}
N 260 -570 330 -570 { lab=dspikedt}
N 260 -570 260 -450 { lab=dspikedt}
N 260 -360 330 -360 { lab=gnd}
N 410 -470 480 -470 { lab=dspikedt}
N 410 -390 410 -360 { lab=gnd}
N 410 -470 410 -450 { lab=dspikedt}
N 330 -360 410 -360 { lab=gnd}
C {devices/capa.sym} 700 -410 0 0 {name=Csample
m=1
value=100f}
C {devices/isource.sym} 700 -610 0 1 {name=Itiming value=1n}
C {devices/switch_ngspice.sym} 590 -520 0 0 {name=Sreset model=SWITCH1}
C {devices/capa.sym} 980 -410 0 0 {name=Cintegrate
m=1
value=10f}
C {devices/vsource.sym} 520 -410 0 0 {name=Vreset value=200m}
C {devices/iopin.sym} 180 -360 0 1 {name=p1 lab=gnd}
C {devices/switch_ngspice.sym} 890 -560 3 0 {name=Soff model=SWITCH1}
C {devices/vsource.sym} 890 -410 0 0 {name=Vsample value=-200m}
C {devices/ipin.sym} 180 -440 0 0 {name=p2 lab=spike}
C {devices/opin.sym} 1070 -560 0 0 {name=p3 lab=isi}
C {devices/lab_pin.sym} 700 -510 0 0 {name=l1 lab=sample}
C {devices/lab_pin.sym} 890 -510 0 0 {name=l3 lab=voff}
C {devices/vcvs.sym} 260 -420 0 0 {name=Ebuffer value=1m}
C {devices/capa.sym} 330 -420 0 0 {name=Cdiff
m=1
value=1p}
C {devices/ammeter.sym} 330 -510 0 1 {name=Vmeas}
C {devices/ccvs.sym} 410 -420 0 0 {name=Hdiff vnam=vmeas value=1}
C {devices/lab_pin.sym} 410 -470 0 0 {name=l5 lab=dspikedt}
C {devices/lab_pin.sym} 260 -570 0 0 {name=l2 lab=spikebuf}
