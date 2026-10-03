camera @s[scores={move=440..}] fade time 0 2 1 color 0 0 0

playanimation @s[scores={move=400}] animation.fat_sukuna.anim

execute as @s[scores={move=399..}] at @s run tp @s @s

scoreboard players set @s[scores={move=1..}] Move 6
scoreboard players set @s[scores={move=1..}] Frames 6
scoreboard players set @s[scores={move=1..}] Camera 6

execute as @s[scores={move=400}] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-1.5 ^7 rot ~-15 ~180
execute as @s[scores={move=390}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^ ^ ^3 rot ~ ~180

execute as @s[scores={move=369}] at @s anchored eyes run camera @s set minecraft:free ease 9 in_sine pos ^ ^ ^2.5 rot ~ ~180

execute as @s[scores={move=261}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^ ^ ^4 rot ~ ~180
execute as @s[scores={move=221}] at @s anchored eyes run camerashake add @a[r=20] 1 0.25

execute as @s[scores={move=43..}] at @s run title @s title 

execute as @s[scores={move=60}] at @s anchored eyes run camera @s fade time 0.6 10 0.5 color 0 0 0
execute as @s[scores={move=50}] at @s anchored eyes run effect @s darkness 2 1 true

execute as @s[scores={move=41},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=40},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=39},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=38},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=36},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=35},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=34},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=33},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=32},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=31},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=30},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=29},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=28},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=27},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=26},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=25},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=24},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=23},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=22},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=21},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=20},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=19},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=18},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=17},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=16},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=15},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=14},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=13},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=12},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=11},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=10},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=9},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=8},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n"}]}
execute as @s[scores={move=7},tag=!impactframesoff] at @s run titleraw @s title {"rawtext":[{"text":"§l"}]}


execute as @s[scores={move=400}] at @s anchored eyes run effect @s darkness 2 1 true
execute as @s[scores={move=401}] at @s run playsound music.oisatoru @a ~~~

execute as @s[scores={move=71}] at @s run playsound music.menuintro @a ~~~

execute as @s[scores={move=1..200}] at @s run camerashake add @a[r=20] 0.05 0.1


