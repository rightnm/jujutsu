particle ds:heavy_impact1
particle ds:heavy_impact2

playsound mob.blood @a[r=100] ~~~ 9999 7 9999
damage @e[family=heroic,r=3,tag=!Frames] 7 suicide
scoreboard players set @e[family=heroic,r=3,tag=!Frames] Stun 3
scoreboard players set @e[family=heroic,r=3,tag=!Frames] Hit 1

damage @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] 7 suicide
scoreboard players set @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] Stun 3
scoreboard players set @e[family=heroic,r=25,tag=!Frames,type=ds:chaos] Hit 1


damage @e[r=12,tag=!Frames,type=ds:rift_prison] 7 suicide
scoreboard players set @e[r=12,tag=!Frames,type=ds:rift_prison] Hit 1

tp @s ~~-200~
kill @s