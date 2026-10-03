particle ds:stars ~~1~
particle ds:dirt3 ~~1~
particle ds:dirt2 ~~1~
camerashake add @a[r=100] 0.15 0.15
playsound random.explode @a[r=100] ~~~ 9999 2 9999
playsound mob.shock2 @a[r=100] ~~~ 9999 4 9999
damage @e[family=heroic,r=5,tag=!Frames] 45 suicide
scoreboard players set @e[family=heroic,r=5,tag=!Frames] Stun 15
scoreboard players set @e[family=heroic,r=5,tag=!Frames] Hit 3

damage @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] 45 suicide
scoreboard players set @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] Stun 15
scoreboard players set @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] Hit 3


damage @e[r=12,tag=!Frames,type=ds:rift_prison] 25 suicide
scoreboard players set @e[r=12,tag=!Frames,type=ds:rift_prison] Hit 3

tp @s ~~-200~
kill @s