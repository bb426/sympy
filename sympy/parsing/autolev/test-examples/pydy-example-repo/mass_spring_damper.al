CONSTANTS M,K,B,G
MOTIONVARIABLES' POSITION',SPEED'
VARIABLES O
FORCE = O*SIN(T)
NEWTONIAN CEILING
POINTS ORIGIN
V_ORIGIN_CEILING> = 0>
PARTICLES BLOCK
P_ORIGIN_BLOCK> = POSITION*CEILING1>
MASS BLOCK=M
V_BLOCK_CEILING>=SPEED*CEILING1>
POSITION' = SPEED
FORCE_MAGNITUDE = M*G-K*POSITION-B*SPEED+FORCE
FORCE_BLOCK>=EXPLICIT(FORCE_MAGNITUDE*CEILING1>)
ZERO = FR() + FRSTAR()
KANE()
INPUT TFINAL=10.0, INTEGSTP=0.01
INPUT M=1.0, K=1.0, B=0.2, G=9.8, POSITION=0.1, SPEED=-1.0, O=2
CODE DYNAMICS() dummy_file.c
