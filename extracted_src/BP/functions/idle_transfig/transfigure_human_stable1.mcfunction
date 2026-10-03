execute as @s at @s positioned ^^^25 unless entity @e[type=ds:rift,name=cube_trg1,c=1,r=20] run summon ds:rift "cube_trg1" ~~~
clear @s[tag=!creative] ds:stable_transfigured_human 0 1
scoreboard players set @s Disabled2 19


execute as @s at @s run summon ds:transfigured_human_proj "transfigure_cube" ^^^1 
execute as @s at @s run playsound mob.witch.throw @a[r=50] ^^1^1 9999 1.25 9999
playanimation @s animation.finger_bearer.hit2
