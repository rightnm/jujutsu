damage @e[type=!wither,r=25,tag=!Frames] 33 override
scoreboard players set @e[type=!wither,r=25,tag=!Frames] Stun 50
scoreboard players set @e[type=!wither,r=25,tag=!Frames] Hit 5
effect @e[type=!wither,r=25,tag=!Frames] wither 10 2 
particle ds:wither_burst ~~2~
particle ds:wither_burst2 ~~2~
particle ds:wither_burst3 ~~2~
camerashake add @a[r=50] 2 0.25
summon ds:mahoraga_knockback2
playsound mob.blasted1 @a[r=100] ~~1~ 9999 1 9999
playsound mob.blasted2 @a[r=100] ~~1~ 9999 1 9999
playsound mob.blasted3 @a[r=100] ~~1~ 9999 1 9999