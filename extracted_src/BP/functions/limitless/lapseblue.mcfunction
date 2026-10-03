execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,tag=!Stopped] at @s run tp @s ^^^0.33 facing @e[name=LapseTRG,c=1]
execute as @s[name=Lapse,scores={Deleter=4..}] at @s unless block ^^^ air run scoreboard players set @s Deleter 3
execute as @s[name=Lapse,scores={Deleter=4..}] at @s if entity @e[tag=!Frames,name=!Lapse,r=4] run scoreboard players set @s Deleter 3

execute as @e[name=LapseTRG] at @s run tp @s ~~~
tag @e[name=Lapse] add GojoProj

execute as @e[name=Lapse] at @s run particle ds:lapse
execute as @e[name=Lapse] at @s run particle ds:lapseblue0a
execute as @e[name=Lapse] at @s run particle ds:lapseblue0b
execute as @e[name=Lapse] at @s unless block ~~-1~ air run particle ds:rubble_suck2

execute as @s[name=Lapse,scores={Deleter=2}] at @s run summon ds:projectile Lapse2
execute as @s[name=Lapse,scores={Deleter=2}] at @s run scoreboard players set @e[name=Lapse2,c=1] Deleter 40
execute as @s[name=Lapse,scores={Deleter=1}] at @s run kill @s

