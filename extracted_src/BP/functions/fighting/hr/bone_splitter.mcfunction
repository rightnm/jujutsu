playanimation @s[scores={move=36}] animation.bone_splitter1

tag @s[scores={move=1..2}] remove wep3

tag @s[scores={move=30..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=30..,Stun=1..}] move 0

scoreboard players set @s[scores={move=31}] Frames 4
scoreboard players set @s[scores={move=31..}] Move 4

scoreboard players set @a[scores={move=30..31}] atk 2


execute as @s[scores={move=26..}] at @s run tp @s ~~~


execute as @s[scores={move=30}] at @s run function damages/blunt_damage

execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact5
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=31}] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.45 9999
execute as @s[scores={move=31}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=31}] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.875 9999
execute as @s[scores={move=31}] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.3 9999
execute as @s[scores={move=30}] at @s positioned ^^^1.5 run tag @e[tag=!Frames,r=2.49] add bonesplitter
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 7 override entity @s
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.49] levitation 1 40 true
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 14
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] knockdown 95
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 40
execute as @s[scores={move=30}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 10
execute as @s[scores={move=30}] at @s run summon ds:red_reverse ~~~

titleraw @s[scores={move=18..29}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}
title @s[scores={move=15..17}] title §l
tag @s[scores={move=16..17,punch=1}] add bonesplitter2
scoreboard players set @s[scores={move=16..17,punch=1}] move 122

tag @s[scores={move=1..3}] remove bonesplitter2

execute as @s[scores={move=3..29},tag=!bonesplitter2] at @s unless entity @e[tag=bonesplitter] run scoreboard players set @s move 2

execute as @s[scores={move=3..15},tag=!bonesplitter2] at @s run tag @e[tag=bonesplitter] remove bonesplitter
scoreboard players set @s[scores={move=3..15},tag=!bonesplitter2] move 2

playanimation @s[scores={move=121},tag=bonesplitter2] animation.bone_splitter2

execute as @s[scores={move=117..120}] at @s run effect @e[tag=bonesplitter] levitation 0 20 true

execute as @s[scores={move=114..118},tag=bonesplitter2] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 1.5
execute as @s[scores={move=114..118},tag=bonesplitter2] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 1.5
execute as @s[scores={move=14..118},tag=bonesplitter2] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=114..118},tag=bonesplitter2] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=116},tag=bonesplitter2] at @s run particle ds:evade1
execute as @s[scores={move=115},tag=bonesplitter2] at @s run particle ds:evade1

execute as @s[scores={move=102..115},tag=bonesplitter2] at @s run execute as @e[tag=bonesplitter,c=1] at @s run tp @s ~~~
execute as @s[scores={move=102..115},tag=bonesplitter2] at @s run execute as @e[tag=bonesplitter,c=1] at @s run tp @e[tag=bonesplitter2,c=1] ~~0.2~ facing @s


execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:heavy_impact5
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:ground_slam3
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:dirt2
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:dirt4
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run particle ds:dirt0
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run camerashake add @a[r=20] 4 0.15


execute as @s[scores={move=100}] at @s run function damages/blunt_damage

execute as @s[scores={move=100},tag=bonesplitter2] at @s  run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=100},tag=bonesplitter2] at @s  run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=100},tag=bonesplitter2] at @s  run playsound random.explode @a[r=50] ~~~ 9999 1.675 9999
execute as @s[scores={move=100},tag=bonesplitter2] at @s  run playsound mob.shock1 @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run tag @e[tag=bonesplitter,c=1] add downknockback
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run scoreboard players operation @e[tag=bonesplitter,c=1] damage += @s damageadd
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run damage @e[tag=bonesplitter,c=1] 5 override entity @s
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run scoreboard players add @e[tag=bonesplitter,c=1] Evade 5
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run scoreboard players set @e[tag=bonesplitter,c=1] knockdown 85
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run scoreboard players set @e[tag=bonesplitter,c=1] Stun 35
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run scoreboard players add @e[tag=bonesplitter,c=1] Hit 5
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run  summon ds:lapse_explode ^^^8
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run  summon ds:lapse_explode ^^^12
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run  summon ds:lapse_explode ^^^15
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run  summon ds:lapse_explode ^^^18
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run  summon ds:lapse_explode ^^^21
execute as @s[scores={move=109},tag=bonesplitter2] at @s  run effect @s levitation 1 20 true
execute as @s[scores={move=103},tag=bonesplitter2] at @s  run effect @s levitation 0 50 true

execute as @s[scores={move=101..105},tag=bonesplitter2] at @s  run tag @e[tag=bonesplitter] remove bonesplitter
execute as @s[scores={move=101..105},tag=bonesplitter2] at @s  run scoreboard players set @s move 3