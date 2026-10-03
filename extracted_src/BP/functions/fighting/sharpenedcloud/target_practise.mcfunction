playanimation @s[scores={move=45}] animation.sharpened_cloud.ab2

tag @e[scores={move=1..2}] remove wep2

tag @s[scores={move=41..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=41..,Stun=1..}] move 0

scoreboard players set @s[scores={move=41}] Move 4
scoreboard players set @s[scores={move=41..42}] Frames 5

execute as @s[scores={move=40}] at @s run particle ds:heavy_impact1 ^^1.4^1
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact2 ^^1.4^1
execute as @s[scores={move=40}] at @s run particle ds:heavy_impact3 ^^1.4^1
execute as @s[scores={move=40}] at @s run particle ds:impact ^^1.4^1
execute as @s[scores={move=40}] at @s run playsound mob.witch.throw @a ^^1.4^1 1 0.8
execute as @s[scores={move=40}] at @s run playsound mob.blaze.shoot @a ^^1.4^1 1 1.8
execute as @s[scores={move=40}] at @s run summon ds:sharpened_cloud ^^1.4^1 facing ^^1^30 none "a literal stick lol" 
execute as @s[scores={move=40}] at @s run summon ds:projectile "SharpenedCloudTRG" ^^1^30
execute as @s[scores={move=39..40}] at @s run scoreboard players set @e[name="a literal stick lol",c=1] Deleter 15
execute as @s[scores={move=39..40}] at @s run scoreboard players set @e[name="SharpenedCloudTRG",c=1] Deleter 15

execute as @e[name="a literal stick lol",c=1] at @s run function fighting/sharpenedcloud/target_practise2

execute as @s[scores={move=1..3}] run tag @e[tag=SharpenedCloudTRG] remove SharpenedCloudTRG

execute as @s[scores={move=23..24}] at @s unless entity @e[tag=SharpenedCloudTRG] run scoreboard players set @s move 3

playanimation @s[scores={move=21..22}] animation.sharpened_cloud.ab2b

execute as @s[scores={move=18..20}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=18..20}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=18..20}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=18..20}] at @s run camerashake add @a[r=4] 1 0.1

execute as @s[scores={move=13..15}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=13..15}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=13..15}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 1.7 9999
execute as @s[scores={move=13..15}] at @s run camerashake add @a[r=4] 1 0.1

execute as @s[scores={move=13..15}] at @s run tp @s @s
execute as @s[scores={move=13..15}] at @s run execute as @e[tag=SharpenedCloudTRG,c=1] at @s run tp @s @s
execute as @s[scores={move=11..13}] at @s run execute as @e[tag=SharpenedCloudTRG,c=1] at @s run tp @e[scores={move=10..13},tag=wep2,rm=0.5] ^^^1.15 facing @s

scoreboard players set @e[scores={move=11..12}] atk 2
execute as @s[scores={move=11}] at @s run function damages/blunt_damage
execute as @s[scores={move=11}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=5..13}] at @s run tp @s @s
execute as @s[scores={move=5..13}] at @s positioned ^^^2 run tp @e[tag=!Frames,r=1.99,c=4] ^^^-1
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Flourish 14
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 25
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 5
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Evade 10
execute as @s[scores={move=11}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 10 entity_attack entity @s
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 4 0.2
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:ground_slam2
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:heavy_impact4
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:crater2 ~~~
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:rubble3
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run particle ds:leap
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999

execute as @s[scores={move=13}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.sword @a ~~~ 1 1.33
execute as @s[scores={move=11}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999
