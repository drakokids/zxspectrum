 1 REM CRONOMETRO
 5 LET h=48: LET c=0 
10 POKE 23674,255: POKE 23673, 255: POKE 23672,255 
20 CIRCLE 24,150,18 
30 PRINT AT 1,5;"00" 
40 DEF FN t()=INT ((65536*PEEK 23674+256*PEEK 23673+PEEK 23672) /50) 
50 LET t1=FN t() 
60 LET a=t1/30*PI 
70 LET x=16*SIN a: LET g=16*COS a 
80 PLOT 24,150: DRAW OVER 1;x,y 
85 IF POINT (24,166)=1 AND FN t()>50 THEN GO SUB 500 
90 LET t=FN t() 
100 IF t<=t1 THEN GO TO 90
110 PLOT 24,150: DRAW OVER 1;x,y
120 LET t1=t 
140 GO TO 60
500 FOR g=0 TO 8 
505 POKE 23606,c+g 
508 IF c=-8 THEN PRINT AT 1,5;CHR$ h 
510 PRINT AT 1,6;"0"
515 NEXT g 
520 LET c=c+8 
530 IF C=72 THEN LET c=-8: LET h=h+1
535 IF h=58 THEN STOP 
540 RETURN 