execute as @s[tag=!Stopped,scores={Deleter=0..40}] at @s run tp @s ^^^2 facing ^^^20

playanimation @s[scores={Deleter=0..40}] animation.phase_blue

tag @s[tag=!GojoProj] add GojoProj

function damages/pull_damage

execute as @s[name=phaseblue] at @s unless block ~~-1~ air run particle ds:rubble_suck2

execute as @s[scores={Deleter=4..}] at @s run tag @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=4,tag=!unselect] add phasepull

execute as @s[scores={Deleter=2..}] at @s if entity @e[tag=griefable] positioned ~~1~ run function 4x4sphere
execute as @s[scores={Deleter=2..}] at @s run tp @e[tag=!Frames,tag=!limitless,tag=phasepull,r=20,tag=!unselect] ~~~
execute as @s[scores={Deleter=2..}] at @s run scoreboard players set @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,tag=!unselect] Stun 30
execute as @s[scores={Deleter=2..}] at @s run scoreboard players add @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,tag=!unselect] Evade 1
execute as @s[scores={Deleter=2..}] at @s run damage @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=3,tag=!unselect] 1 override

execute as @s[scores={Deleter=4}] at @s run scoreboard players set @s Deleter 100
execute as @s[scores={Deleter=1}] at @s run kill @s
execute as @s[scores={Deleter=1..3}] at @s run tag @e[tag=phasepull] remove phasepull

execute as @s[scores={Deleter=86..}] at @s run tp @e[r=5,tag=!unselect,tag=!limitless] ~~~
execute as @s[scores={Deleter=85..}] at @s run execute as @e[scores={detect_health=1..4},r=4,tag=!Frames,tag=!limitless,tag=!unselect] at @s run particle ds:lapse_organs ~~1~
execute as @s[scores={Deleter=85..}] at @s run execute as @e[scores={detect_health=1..4},r=4,tag=!Frames,tag=!limitless,tag=!unselect] at @s run particle ds:blood_explode ~~1~
execute as @s[scores={Deleter=86..}] at @s run scoreboard players set @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=5,tag=!unselect] Stun 30
execute as @s[scores={Deleter=86..}] at @s run damage @e[tag=!Frames,tag=!limitless,name=!phaseblue,r=5,tag=!unselect] 3 override
execute as @s[scores={Deleter=90..}] at @s run particle ds:blue_phase_ex1 ~~~
execute as @s[scores={Deleter=90..}] at @s run particle ds:blue_phase_ex2 ~~~
execute as @s[scores={Deleter=85..90}] at @s run particle ds:lapseblue2 ~~1~
execute as @s[scores={Deleter=85..90}] at @s run particle ds:lapseblue3 ~~1~
execute as @s[scores={Deleter=94}] at @s run particle ds:lapse_pull4 ~~1~
execute as @s[scores={Deleter=86}] at @s run particle ds:lapse_pull3 ~~1~
execute as @s[scores={Deleter=86}] at @s run particle ds:lapse_pull2 ~~1~
execute as @s[scores={Deleter=85..86}] at @s run scoreboard players set @s Deleter 3
