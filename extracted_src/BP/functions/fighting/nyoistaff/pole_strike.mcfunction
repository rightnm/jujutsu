playanimation @s[scores={move=15}] animation.nyoi_staff.strike

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=17..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=17..,Stun=1..}] move 0

scoreboard players set @s[scores={move=4..}] Hyper 4
scoreboard players set @s[scores={move=4..}] Move 4

execute as @s[scores={move=1..8}] at @s run tp @s ~~~

scoreboard players random @s[scores={move=12}] blackflashchance 1 269
scoreboard players set @s[scores={move=12},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=6}] at @s run function damages/blunt_damage
scoreboard players set @e[scores={move=6..7}] atk 2
execute as @s[scores={move=6}] at @s run playsound item.trident.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=6}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.99] damagehalf += @s damageadd
execute as @s[scores={move=6}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=6}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 15
execute as @s[scores={move=6}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 2
execute as @s[scores={move=6}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=6}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 10 entity_attack entity @s
execute as @s[scores={move=7}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=7}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=2.99] run playsound random.explode @a ~~~ 1 2 1
execute as @s[scores={move=7}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=6}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:ground_slam3
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact1
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=6}] at @s positioned ^^1^1 run particle ds:heavy_impact3