damage @e[type=!wither,r=8,tag=!Frames] 50
scoreboard players set @e[type=!wither,r=8,tag=!Frames] Stun 50
scoreboard players set @e[type=!wither,r=8,tag=!Frames] Hit 5
effect @e[type=!wither,r=8,tag=!Frames] wither 10 2 
particle ds:wither_burstb ~~~
particle ds:wither_burst2b ~~~
particle ds:wither_burst3b ~~~
camerashake add @a[r=50] 2 0.8
playsound mob.blasted2 @a[r=100] ~~1~ 9999 1.5 9999
kill @s