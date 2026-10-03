playanimation @s animation.finger_bearer.hit2

tag @s[tag=!120percent,tag=heavenlyrestriction_mechimaru,scores={strength=20..}] add cant
tag @s[tag=heavenlyrestriction_mechimaru,tag=120percent,scores={strength=24..}] add cant
tag @s[tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=50..}] add cant
tag @s[tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=60..}] add cant


execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=19},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength2 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=23},tag=120percent,tag=heavenlyrestriction_mechimaru] strength2 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength2 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=59},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength2 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!20..},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength2 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!24..},tag=120percent,tag=heavenlyrestriction_mechimaru] strength2 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!50..},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength2 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!60..},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength2 2

execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength2=5..,strength=0..59}] damageadd 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players remove @s[scores={strength2=5..,strength=0..59}] strength2 5

execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=19},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=23},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=59},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!20..},tag=!120percent,tag=heavenlyrestriction_mechimaru] strength 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!24..},tag=120percent,tag=heavenlyrestriction_mechimaru] strength 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!50..},tag=!120percent,tag=!heavenlyrestriction_mechimaru] strength 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={strength=!60..},tag=120percent,tag=!heavenlyrestriction_mechimaru] strength 2

tellraw @p[r=0.2,tag=!cant] {"rawtext":[{"text":"\n§r§o§eYou crushed the crystal...\n\n§e+2 §4Strength"}]}

execute as @p[r=0.2,tag=!cant] at @s run playsound random.glass @a ~~~ 1 0.35
execute as @p[r=0.2,tag=!cant] at @s run playsound beacon.power @a ~~~ 1 1.5
tellraw @p[tag=cant,r=0.2] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
execute as @p[r=0.2,tag=!cant] at @s run particle ds:rough_crystal1 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run particle ds:rough_crystal2 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run clear @s ds:rough_crystal 0 1
tag @s remove cant



