        .ORIG	x3000
        LEA	R1,	DATA
        AND	R3,	R3,	#0
START   LDR	R4,	R1,	#0
        BRn	DONE
        ADD	R3,	R3,	R4
        ADD	R1,	R1,	#1
        BRnzp	START
DONE    HALT

DATA    .FILL	x1
        .FILL	x2
        .FILL	x3
        .FILL	x4
        .FILL   x-1

        .END

