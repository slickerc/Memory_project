*Id-Vd Characteristics for NMOS 

.option abstol=1e-6 reltol=1e-6 post ingold

.hdl "bsimsoi.va"
*.model nmos1 bsimsoi version=4.6
.include "modelcard.bsimsoiVA.nmos"

* --- Voltage Sources
vd drain  0 pwl 0n  0 .9n 0 1n 1.2   5n 1.2   5.1n  0.0 6n 0.0 
vg gate   0 pwl 0n  0 .9n 0 1n 0.5   5n 0.5   5.1n  0.0 6n 0.0 
vs source 0 pwl 0n  0 .9n 0 1n 0.0   5n 0.0   5.1n  0.0 6n 0.0 
ve substrate 0 0
 
* --- Transistor ---
x1 drain gate source substrate nmos1 W=1e-7 L=50e-9 soimod=1

* --- Transient Analysis ---
.tran .1n 6n 1n 100n 1u 100u 1m 100m 100m 1 sweep temp -47 47 20

.plot tran v(x1.b)

.end
