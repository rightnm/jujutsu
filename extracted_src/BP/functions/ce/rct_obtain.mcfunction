scoreboard players set @s[scores={cutscene=4..},tag=curse] cutscene 3
playanimation @s[scores={cutscene=199..},tag=reversecursedobtain] animation.rct_obtain

scoreboard players set @s infinity 10

scoreboard players set @s[scores={knock=!0}] knock 0
execute unless entity @s[scores={knockdown=0}] run scoreboard players set @s knockdown 0

effect @s[scores={cutscene=199..},tag=reversecursedobtain] instant_health 1 4 true
effect @s[scores={cutscene=100..},tag=reversecursedobtain] regeneration 1 5 true
execute as @s[scores={cutscene=192},tag=reversecursedobtain] at @s run particle ds:dirt2
execute as @s[scores={cutscene=192},tag=reversecursedobtain] at @s run particle ds:sprint
execute as @s[scores={cutscene=192},tag=reversecursedobtain] at @s run playsound dig.dirt 

scoreboard players set @s[scores={cutscene=10..},tag=reversecursedobtain] infinity 11
scoreboard players set @s[scores={cutscene=10..},tag=reversecursedobtain] Camera 11
scoreboard players set @s[scores={cutscene=10..},tag=reversecursedobtain] Move 11
scoreboard players set @s[scores={cutscene=10..},tag=reversecursedobtain] Frames 11


execute as @s[scores={cutscene=10..160},tag=reversecursedobtain] at @s run particle ds:rct_obtain1

execute as @s[scores={cutscene=196..},tag=reversecursedobtain] at @s run tp @s @s


execute as @s[scores={cutscene=198},tag=reversecursedobtain] at @s run playsound mob.honoredone @a[r=1000] ~~~ 999999 1 999999

execute as @s[scores={cutscene=200},tag=reversecursedobtain] at @s run camera @s fade time 0.25 0.5 0.75 color 0 0 0
execute as @s[scores={cutscene=195},tag=reversecursedobtain] at @s run camera @s set minecraft:free pos ~ ~10 ~ rot ~90 ~
execute as @s[scores={cutscene=194},tag=reversecursedobtain] at @s run camera @s set minecraft:free ease 2 in_sine pos ~ ~5 ~ rot ~90 ~90
execute as @s[scores={cutscene=164},tag=reversecursedobtain] at @s run camera @s fade time 0.5 0.15 0.25 color 0 0 0

execute as @s[scores={cutscene=153},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free pos ^4^3^4 rot ~15 ~70
execute as @s[scores={cutscene=152},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free ease 2 in_sine pos ^4^4^4 rot ~28 ~170
execute as @s[scores={cutscene=122},tag=reversecursedobtain] at @s run camera @s fade time 0.25 0.15 0.15 color 0 0 0

execute as @s[scores={cutscene=113},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free pos ^-4^^-4 rot ~15 ~10
execute as @s[scores={cutscene=112},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free ease 2 in_sine pos ^-4^^-4 rot ~-25 ~-55


execute as @s[scores={cutscene=72},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free pos ^^-1^4 rot ~15 ~180
execute as @s[scores={cutscene=71},tag=reversecursedobtain] at @s anchored eyes run camera @s set minecraft:free ease 3.4 in_sine  pos ^^^3 rot ~-20 ~180

execute as @s[scores={cutscene=30},tag=reversecursedobtain] at @s run camera @s fade time 1.5 0.5 1 color 255 255 255


execute as @s[scores={cutscene=5},tag=reversecursedobtain] at @s run playsound music.rare @s ~~~ 1 2
tellraw @s[scores={cutscene=5},tag=reversecursedobtain] {"rawtext":[{"text":"§l§f---[ New Technique Unlocked ]---\n§r§eReverse Cursed Technique, allows you create and manipulate positive energy at will for things like healing..."}]}
tag @s[scores={cutscene=1..},tag=!reversecursed] add reversecursed
tag @s[scores={cutscene=1..3},tag=reversecursedobtain] remove reversecursedobtain