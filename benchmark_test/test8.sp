*Id-Vd Characteristics for PMOS

.option abstol=1e-6 reltol=1e-6 post ingold 

.hdl "bsimsoi.va"
.include "modelcard.bsimsoiVA.pmos"

* --- Voltage Sources ---
vd drain 0 dc=0
vg gate 0 dc=0
vs source 0 dc=0
ve substrate 0 0
 
* --- Transistor ---
x1 drain gate source substrate pmos1 W=1e-6 L=1e-7 soimod=0 NF=2
+SA=0.31u SB=0.2u SD=0.1u

* --- DC Analysis ---
.dc vg 0 -1.2 -0.02 vd -0.05 -1.2 -0.5
.print dc i(vd) 
.end
