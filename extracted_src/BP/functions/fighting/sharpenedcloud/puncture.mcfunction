playanimation @s[scores={move=20}] animation.sharpened_cloud.ab1

tag @e[scores={move=1..2}] remove wep1

tag @s[scores={move=16..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=10..15}] Move 4
scoreboard players set @s[scores={move=10..15}] Camera 4

scoreboard players set @s[scores={move=1..5}] AfterAnim 5

scoreboard players random @s[scores={move=18}] blackflashchance 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=10..11}] at @s run tp @s ~~~

scoreboard players set @e[scores={move=11..12}] atk 2
execute as @s[scores={move=11}] at @s run function damages/slash_damage
execute as @s[scores={move=11}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=5..13}] at @s run tp @s @s
execute as @s[scores={move=5..13}] at @s positioned ^^^2 run tp @e[tag=!Frames,r=1.99,c=4] ^^^-1
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] knock 25
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 25
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 5
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Evade 14
execute as @s[scores={move=11}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 14 entity_attack entity @s
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
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound item.trident.throw @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.8 9999

execute as @s[scores={move=11}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.sword @a ~~~ 1 1.33
execute as @s[scores={move=11}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999
