*NODECHK Warnings
*CASE 4: DGSEPBT with TNODEOUT=0, SHMOD=0 
*Warning: "s2"
******************************************

.option abstol=1e-6 reltol=1e-6 node post probe ingold

.hdl "bsimsoi.va"
.include "modelcard.bsimsoiVA.nmos"

* --- Voltage Sources ---
vd d 0 dc=0.05
vg g 0 dc=0
vs s 0 dc=0
ve e 0 dc=0
 
* --- Transistor ---
x1 d g s e p b t nmos1 W=10u L=0.5u SOIMOD=2 TNODEOUT=0 SHMOD=0 

* --- DC Analysis ---
*Id-Vg Characteristics for NMOS 
.dc vg 0 0.05 0.05
.print dc i(x1.d) 
.end
