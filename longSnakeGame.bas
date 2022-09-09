1 x = 20
2 y = 10
3 xsp =1 :ysp =0
4 s =0
10 print"S";
15 poke 1024 +x + 40*y,81
16 s=s+1
20 get a$
30 if a$ = "i"  then ysp=-1:xsp=0
40 if a$ = "k" then ysp=1:xsp=0
50 if a$ = "j"then xsp=-1:ysp=0
60 if a$ = "l"then xsp=1:ysp=0
70 x=x+xsp:y=y+ysp
80 gosub 150
90 for i = 1 to 200:next i
100 goto 15
150 rem printpeek(1024 +x+40*y),x
155 if y<0 then y=24
160 if y>24 then y=0
165 if peek(1024 +x+40*y)<>32 then 200
170 return
200 print"game over"
210 print"score",s

