v {xschem version=2.9.9 file_version=1.2 }
G {}
K {}
V {}
S {}
E {}
N 200 -400 220 -400 { lab=gnd}
N 200 -400 200 -360 { lab=gnd}
N 180 -360 200 -360 { lab=gnd}
N 180 -440 220 -440 { lab=spike}
N 260 -390 260 -360 { lab=gnd}
N 200 -360 260 -360 { lab=gnd}
N 330 -390 330 -360 { lab=gnd}
N 330 -460 330 -450 { lab=#net1}
N 330 -570 330 -540 { lab=spikebuf}
N 260 -570 330 -570 { lab=spikebuf}
N 260 -570 260 -450 { lab=spikebuf}
N 260 -360 330 -360 { lab=gnd}
N 480 -560 480 -530 { lab=isi}
N 480 -560 540 -560 { lab=isi}
N 400 -380 400 -360 { lab=gnd}
N 400 -460 400 -440 { lab=#net1}
N 330 -460 400 -460 { lab=#net1}
N 400 -460 480 -460 {}
N 330 -480 330 -460 { lab=#net1}
N 480 -470 480 -460 { lab=dspikedt}
N 330 -360 400 -360 {}
C {devices/iopin.sym} 180 -360 0 1 {name=p1 lab=gnd}
C {devices/ipin.sym} 180 -440 0 0 {name=p2 lab=spike}
C {devices/opin.sym} 530 -560 0 0 {name=p3 lab=isi}
C {devices/vcvs.sym} 260 -420 0 0 {name=Ebuffer value=1}
C {devices/capa.sym} 330 -420 0 0 {name=Cdiff
m=1
value=1n}
C {devices/ammeter.sym} 330 -510 0 1 {name=Vmeas}
C {devices/lab_pin.sym} 480 -470 0 0 {name=l5 lab=dspikedt}
C {devices/lab_pin.sym} 260 -570 0 0 {name=l2 lab=spikebuf}
C {devices/ammeter.sym} 480 -500 0 1 {name=Vmeas1}
C {devices/res.sym} 400 -410 0 0 {name=R1
value=10meg
footprint=1206
device=resistor
m=1}
