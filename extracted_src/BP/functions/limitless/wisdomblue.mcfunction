execute as @s at @s run tp @s ^^^1.2 facing @e[name=wisdomblueTRG,c=1]

playanimation @s animation.wisdom_blue

scoreboard players set @e[family=toji,r=6] Frames 6

tag @s[tag=!GojoProj] add GojoProj

execute as @s[name=wisdomblue] at @s unless block ~~-1~ air run particle ds:rubble_suck2

function damages/pull_damage

execute as @s[scores={Deleter=20..60}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 9999 0.5 9999
camerashake add @a[r=40] 0.15 0.08
execute as @s[scores={Deleter=40..60}] at @s run effect @a[r=40] night_vision 2 1 true
playsound beacon.ambient @a[r=25] ~~~ 9999 2 9999

execute as @s[scores={Deleter=2..}] at @s if entity @e[tag=griefable] run function 4x4sphere
execute as @s[scores={Deleter=2..}] at @s run execute as @e[tag=!Frames,tag=!limitless,r=14,tag=!unselect] at @s run tp @s ^^^2.5 facing @e[name=wisdomblue,c=1]
execute as @s[scores={Deleter=2..},tag=!nukeactive] at @s if entity @e[scores={detect_health=0..4},r=3,tag=!Frames,tag=!limitless,name=!wisdomblue,tag=!unselect] run tag @s add nukeactive
execute as @s[scores={Deleter=2..}] at @s run scoreboard players set @e[tag=!Frames,tag=!limitless,name=!wisdomblue,r=3,tag=!unselect] Stun 30
execute as @s[scores={Deleter=2..}] at @s run scoreboard players add @e[tag=!Frames,tag=!limitless,name=!wisdomblue,r=3,tag=!unselect] Evade 1
execute as @s[scores={Deleter=2..}] at @s run damage @e[tag=!Frames,tag=!limitless,name=!wisdomblue,r=3,tag=!unselect] 2 override



execute as @s[scores={Deleter=5..8}] at @s run scoreboard players set @s Deleter 100
execute as @s[scores={Deleter=1}] at @s run kill @s

execute as @s[scores={Deleter=86..}] at @s run kill @e[name=wisdomblueTRG,r=50,c=1]
execute as @s[scores={Deleter=86..}] at @s run tp @e[r=5,tag=!unselect,tag=!limitless] ~~~
execute as @s[scores={Deleter=85..90}] at @s run execute as @e[scores={detect_health=0..4},r=7,tag=!Frames,tag=!limitless,tag=!unselect] at @s run particle ds:lapse_organs ~~1~
execute as @s[scores={Deleter=85..90}] at @s run execute as @e[scores={detect_health=0..4},r=7,tag=!Frames,tag=!limitless,tag=!unselect] at @s run particle ds:blood_explode ~~1~
execute as @s[scores={Deleter=85..90},tag=!nukeactive] at @s if entity @e[scores={detect_health=0..4},r=7,tag=!Frames,tag=!limitless,name=!wisdomblue,tag=!unselect] run tag @s add nukeactive
execute as @s[scores={Deleter=86..}] at @s run scoreboard players set @e[tag=!Frames,tag=!limitless,name=!wisdomblue,r=5,tag=!unselect] Stun 30
execute as @s[scores={Deleter=86..}] at @s run damage @e[tag=!Frames,tag=!limitless,name=!wisdomblue,r=5,tag=!unselect] 5 override
execute as @s[scores={Deleter=90..}] at @s run particle ds:blue_wisdom_ex1 ~~-1~
execute as @s[scores={Deleter=90..}] at @s run particle ds:blue_wisdom_ex2 ~~-1~
execute as @s[scores={Deleter=85..}] at @s run particle ds:lapseblue2 ~~~
execute as @s[scores={Deleter=85..}] at @s run particle ds:lapseblue3 ~~~
execute as @s[scores={Deleter=94}] at @s run particle ds:lapse_pull4 ~~~
execute as @s[scores={Deleter=86}] at @s run particle ds:lapse_pull3 ~~~
execute as @s[scores={Deleter=86}] at @s run particle ds:lapse_pull2 ~~~
execute as @s[scores={Deleter=83}] at @s run summon ds:projectile "Blue Core" ~~~
execute as @s[scores={Deleter=81..83}] at @s run scoreboard players set @e[name="Blue Core",c=1,r=10] Deleter 201
execute as @s[scores={Deleter=81..83},tag=nukeactive] at @s run tag @e[name="Blue Core",c=1,r=10,tag=!nukeactive] add nukeactive
execute as @s[scores={Deleter=81..82}] at @s run scoreboard players set @s Deleter 3
