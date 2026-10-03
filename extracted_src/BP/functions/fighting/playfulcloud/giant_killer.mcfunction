playanimation @s[scores={move=21}] animation.playful_cloud.ab4


scoreboard players set @e[scores={move=1..}] Move 4

scoreboard players random @s[scores={move=18}] blackflashchance 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashchance 7

effect @s[scores={move=9..}] slow_falling 1 1 true
effect @s[scores={move=5..8}] slow_falling 0 20 true

title @s[scores={move=9},tag=!impactframesoff] title 
title @s[scores={move=8},tag=!impactframesoff] title 
title @s[scores={move=7},tag=!impactframesoff] title 
title @s[scores={move=6},tag=!impactframesoff] title 
title @s[scores={move=5},tag=!impactframesoff] title 
title @s[scores={move=4},tag=!impactframesoff] title 
title @s[scores={move=3},tag=!impactframesoff] title 
title @s[scores={move=2},tag=!impactframesoff] title §l
camera @s[scores={move=3},tag=!impactframesoff] fade time 0 0.05 0.1 color 255 255 255

tag @e[scores={move=1..2}] remove wep4


scoreboard players set @e[scores={move=8..9}] atk 2
execute as @s[scores={move=8}] at @s run function damages/blunt_damage
execute as @s[scores={move=8}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=8..9}] at @s positioned ^^^4.5 run execute as @e[tag=!Frames,r=4.49,c=4] at @s run tp @s ~~~ facing @e[scores={move=1..,Move=1..},c=1,rm=0.1]
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run scoreboard players operation @e[tag=!Frames,r=4.49] damage += @s damageadd
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run scoreboard players set @e[tag=!Frames,r=4.49] knockdown 85
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run scoreboard players set @e[tag=!Frames,r=4.49] Stun 25
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.49] Hit 5
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=4.49] Evade 12
execute as @s[scores={move=8}] at @s positioned ^^^1.5 run summon ds:red_reverse ~~~
execute as @s[scores={move=4..8}] at @s run tp @s ~~~
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,r=8.49,tag=big] 30 entity_attack entity @s
execute as @s[scores={move=8}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,r=4.49,tag=!big] 20 entity_attack entity @s
execute as @s[scores={move=8}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 4 0.2
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:ground_slam2
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:ground_slam3
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:ground_slam3
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:ground_slam3
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run particle ds:heavy_impact4
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=8}] at @s positioned ^^1^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.5 9999

execute as @s[scores={move=8}] at @s positioned ^^^4.5 run playsound mob.shock1 @a ~~~ 1 1.5
execute as @s[scores={move=8}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,r=4.49] run playsound mob.metal1 @a ~~~ 1 2.5
execute as @s[scores={move=8}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,r=4.49] run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999
