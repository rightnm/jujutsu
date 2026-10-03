camerashake add @a[r=50] 3 0.25

playsound mob.wither.shoot @a[r=50] ~~-1~ 99999 1 99999
execute unless block ~~-0.5~ air run particle ds:large_slam2 ~~~
particle ds:large_impact2 ~~1~
particle ds:burst_impact4 ~~1~