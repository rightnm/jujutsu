playanimation @s[scores={cutscene=140..}] animation.mahoraga.cutscenev2
execute as @s[scores={cutscene=140..}] at @s run playanimation @e[tag=mahoraga_cutscene2,c=1] animation.mahoraga.cutscene2_player

execute as @s[scores={cutscene=1..5}] run tag @e[tag=mahoraga_cutscene2] remove mahoraga_cutscene2
execute as @s[scores={cutscene=1..5}] run tag @e[tag=mahoraga_cutscene2b] remove mahoraga_cutscene2b

scoreboard players set @a[tag=mahoraga_cutscene2b,c=1] Move 5
scoreboard players set @a[tag=mahoraga_cutscene2b,c=1] Camera 5

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=135..}] at @s if entity @a[tag=griefable] positioned ~~1.5~ run function 4x4sphere
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=135..}] at @s run tp @s ^^7^-9
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=135..}] at @s run particle ds:impact ~~0.25~

execute as @s[scores={cutscene=10..}] at @s run tp @s @s
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=10..}] at @s run tp @s @s

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=115}] at @s run  playsound music.bass3 @a[r=50] ~~1~ 99999 0.7 99999

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=80}] at @s run camera @s fade time 0.25 0.25 0.15 color 0 0 0
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=75}] at @s run camerashake add @a[r=10] 0.5 0.25

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=75}] at @s run camera @s fade time 0.25 0.25 0.15 color 0 0 0

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=131..}] at @s run camera @s set minecraft:free pos ^11 ^2.5 ^0.75 facing ~ ~2.5~
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=101..130}] at @s run camera @s set minecraft:free pos ^ ^-0.5 ^0.35 facing ^ ^15 ^1
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=76..100}] at @s run camera @s set minecraft:free pos ^-0.3 ^2 ^0.35 facing ^ ^-0.35 ^0.5
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=75}] at @s run camera @s set minecraft:free pos ^3 ^2.5 ^0.75 facing ~ ~1.5~
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=50}] at @s run camera @s set minecraft:free pos ^-4 ^4 ^-1.75 facing ^^2^2
execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=30}] at @s run camera @s set minecraft:free pos ^ ^2 ^-2 facing ^^2.5^15

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=10..75}] at @s run particle ds:cutscene_black1 ^^1.5^1.5

execute as @e[tag=mahoraga_cutscene2,c=1,scores={cutscene=10..135}] at @s run tp @e[tag=mahoraga_cutscene2b,c=1] ^^^2.33 facing @s

execute as @p[tag=mahoraga_cutscene2,c=1] at @s run title @s[tag=!impactframesoff,scores={cutscene=70..}] title 

execute as @s[scores={cutscene=56..62}] at @s run tag @e[tag=mahoraga_cutscene2,c=1,scores={punch=1}] add quicktime
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=56..63},tag=!quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §4PUNCH §l§f>\n\n\n\n\n\n"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=56..63},tag=quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l>> §aPUNCH §l§f<<\n\n\n\n\n\n"}]}

execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=51..55}]  title {"rawtext":[{"text":"§l"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=41..45}]  title {"rawtext":[{"text":"§l"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=39..40}]  title {"rawtext":[{"text":"§l"}]}

execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.bell @s[scores={cutscene=56..63,punch=1},tag=!quicktime]  ~~~ 9999 1.5 9999
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.pling @s[scores={cutscene=63},tag=!quicktime]  ~~~ 9999 0.5 9999


execute as @s[scores={cutscene=55}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={cutscene=55}] at @s run execute as @e[tag=!quicktime,tag=mahoraga_cutscene2,c=1] at @s run function shikigami/shikigami/mahoraga/cutscene2_lost
execute as @s[scores={cutscene=54}] at @s run tag @e[tag=mahoraga_cutscene2,c=1] remove quicktime

execute as @s[scores={cutscene=46..52}] at @s run tag @e[tag=mahoraga_cutscene2,c=1,scores={punch=1}] add quicktime
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=46..53},tag=!quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §4PUNCH §l§f>\n\n\n\n\n\n"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=46..53},tag=quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l>> §aPUNCH §l§f<<\n\n\n\n\n\n"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.bell @s[scores={cutscene=46..53,punch=1},tag=!quicktime]  ~~~ 9999 1.5 9999
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.pling @s[scores={cutscene=53},tag=!quicktime]  ~~~ 9999 0.5 9999

execute as @s[scores={cutscene=45}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={cutscene=45}] at @s run execute as @e[tag=!quicktime,tag=mahoraga_cutscene2,c=1] at @s run function shikigami/shikigami/mahoraga/cutscene2_lost
execute as @s[scores={cutscene=44}] at @s run tag @e[tag=mahoraga_cutscene2,c=1] remove quicktime


execute as @s[scores={cutscene=31..37}] at @s run tag @e[tag=mahoraga_cutscene2,c=1,scores={punch=1}] add quicktime
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=31..38},tag=!quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l< §4PUNCH §l§f>\n\n\n\n\n\n"}]}
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run titleraw @s[scores={cutscene=31..38},tag=quicktime]  title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n§r§f§l>> §aPUNCH §l§f<<\n\n\n\n\n\n"}]}

execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.bell @s[scores={cutscene=31..39,punch=1},tag=!quicktime]  ~~~ 9999 1 9999
execute as @p[tag=mahoraga_cutscene2,c=1] at @s run playsound note.pling @s[scores={cutscene=39},tag=!quicktime]  ~~~ 9999 0.5 9999

execute as @s[scores={cutscene=31}] at @s run playsound mob.witch.throw @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={cutscene=30}] at @s run execute as @e[tag=!quicktime,tag=mahoraga_cutscene2,c=1] at @s run function shikigami/shikigami/mahoraga/cutscene2_lost


scoreboard players random @e[tag=mahoraga_cutscene2,c=1,tag=quicktime,scores={cutscene=32}] blackflashchance 1 100
scoreboard players set @e[tag=mahoraga_cutscene2,c=1,tag=quicktime,scores={cutscene=32},tag=blackflashrig] blackflashchance 7

execute as @s[scores={cutscene=24}] at @s run tp @s @s
execute as @s[scores={cutscene=24}] at @s run tp @e[family=mahoraga,c=1] ^^^2.5 facing @s
execute as @s[scores={cutscene=28}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=27}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=26}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=25}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=24}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title 
execute as @s[scores={cutscene=23}] at @s run title @p[tag=quicktime,tag=mahoraga_cutscene2,c=1,tag=!impactframesoff] title §l
execute as @s[scores={cutscene=25}] at @s run camera @p[tag=quicktime,tag=mahoraga_cutscene2,c=1] fade time 0 0.3 0.1 color 255 255 255
execute as @s[scores={cutscene=23}] at @s run execute as @e[tag=quicktime,tag=mahoraga_cutscene2,c=1] at @s positioned ^^1^0.5 run function shikigami/shikigami/mahoraga/cutscene2_win

execute as @s[scores={cutscene=1..22}] at @s run tag @e[tag=mahoraga_cutscene2,c=1,tag=quicktime] remove quicktime