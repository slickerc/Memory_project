*Sample netlist for BSIMSOI 
*Inverter Transient

.option abstol=1e-6 reltol=1e-6 post

.hdl "bsimsoi.va"
.include "modelcard.bsimsoiVA.pmos"
.include "modelcard.bsimsoiVA.nmos"

* --- Voltage Sources ---
Vpower VD 0 1.5
Vgnd VS 0 0

Vgate Gate VS PULSE(0v 1.5v 100ps 50ps 50ps 200ps 500ps)

xn0 VS Gate Out VS nmos1 W=10u L=0.18u
xp0 VD Gate Out VS pmos1 W=20u L=0.18u

.tran 0.01n 600ps
.print tran v(gate) v(out)
.END

