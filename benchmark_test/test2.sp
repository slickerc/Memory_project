*Id-Vd Characteristics for NMOS 

.option abstol=1e-6 reltol=1e-6 post ingold 

.hdl "bsimsoi.va"
.include "modelcard.bsimsoiVA.nmos"

* --- Voltage Sources ---
vd drain 0 dc=0
vg gate 0 dc=1
vs source 0 dc=0
ve substrate 0 0
 
* --- Transistor ---
x1 drain gate source substrate nmos1 W=1e-6 L=1e-7 soimod=1

* --- DC Analysis ---
.dc vd 0 1.5 0.02 vg 0.0 1.5 0.5

.print dc i(vd) 
.end
