
//Using M
MVI C, 00H // ASSUME CARRY = 0
LXI H, 2000H // HL = 2000H  M = 1ST DIGIT
MOV A, M  // A = 1ST DIGIT
INX H  // HL = 2001H  M = 2ND DIGIT

ADD M  // A = SUM

JNC SKIP  // CHECK FOR CARRY
INR C // INCREMENT C REGISTER IF CARRY FLAG  =1

SKIP: INX H // HL = 2002H
      MOV M, A // STORE SUM AT 200H
      INX H // HL = 2003H
      MOV M, C // STORE CARRY AT 200H
      HLT // END PROGRAM

