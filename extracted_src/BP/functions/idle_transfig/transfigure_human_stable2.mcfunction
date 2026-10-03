clear @s[tag=!creative] ds:stable_transfigured_human 0 1
scoreboard players set @s Disabled2 19


execute as @s at @s anchored eyes run summon ds:transfigured_human_proj ^^-0.5^1 facing ^^^20 none "transfigure_wall"
execute as @s at @s run playsound mob.witch.throw @a[r=50] ^^1^1 9999 1.25 9999
playanimation @s animation.finger_bearer.hit2
