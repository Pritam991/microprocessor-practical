MVI C, FFH
LXI H, F200H
MOV A,M
MOV B, M

LOOP: INR C 
      SUB B
      JNZ LOOP 
      ADD B 
      MOV M, C 
      INX H 
      MOV M, A 
      HLT