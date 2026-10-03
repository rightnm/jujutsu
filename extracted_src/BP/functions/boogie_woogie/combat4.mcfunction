playanimation @s[scores={move=30..}] animation.todo.twinstrikes
scoreboard players set @s[scores={move=30..}] Move 25


playanimation @s[scores={move=24..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=24..,Stun=1..}] move 3

tag @s[scores={move=1..3}] remove wep4

execute as @s[scores={move=21..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=21..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=21..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=21..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~


execute as @s[scores={move=28}] at @s run camerashake add @s 0.15 0.3
execute as @s[scores={move=28}] at @s run playsound mob.enderdragon.flap @a[r=30] ~~~  99999 1.15 999999

execute as @s[scores={move=22}] at @s run scriptevent ds:knockback 1

scoreboard players set @s[scores={move=20..22}] Frames 7
scoreboard players set @s[scores={move=20..21}] atk 2
execute as @s[scores={move=19}] at @s run function damages/blunt_damage

scoreboard players random @s[scores={move=23},tag=!heavenlyrestriction] blackflashchance 1 150
scoreboard players set @s[scores={move=23},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7


execute as @s[scores={move=20}] at @s run playsound mob.wither.shoot @a[r=30] ~~~  99999 0.55 999999
execute as @s[scores={move=20}] at @s run camerashake add @a[r=15] 1 0.15
execute as @s[scores={move=20}] at @s run playsound  random.explode @a[r=30] ~~~ 9999 1.25 9999
execute as @s[scores={move=20}] at @s run playsound  mob.wither.break_block @a[r=30] ~~~ 9999 1.25 9999
execute as @s[scores={move=20}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=20}] at @s run particle ds:twinstrikes1 ~~~
execute as @s[scores={move=20}] at @s run particle ds:twinstrikes2 ~~~
execute as @s[scores={move=20}] at @s run particle ds:twinstrikes3 ~~~
execute as @s[scores={move=20..21}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.46] at @s run tp @s ~~~ facing @e[scores={move=20..21},c=1]  
execute as @s[scores={move=20}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=20}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=20}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.46] at @s run playsound mob.wither.break_block @a[r=30] ~~~  99999 0.75 999999
execute as @s[scores={move=20}] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.46] at @s run playsound random.explode @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=20}] at @s positioned ^^^1 run damage @e[tag=!Frames,r=2.46] 8 override
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players set @e[tag=!Frames,r=2.46] Stun 25
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players add @e[tag=!Frames,r=2.46] Evade 5
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players add @e[tag=!Frames,r=2.46] Hit 3
execute as @s[scores={move=20}] at @s positioned ^^^1 run scoreboard players operation @e[tag=!Frames,r=2.46] damagehalf += @s damageadd



scoreboard players set @s[scores={move=15..17}] Frames 7
scoreboard players set @s[scores={move=15..16}] atk 2
execute as @s[scores={move=14}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s run camerashake add @a[r=15] 1 0.15
execute as @s[scores={move=15}] at @s positioned ^^^1.5 run particle ds:ground_slam3 ~~~
execute as @s[scores={move=15}] at @s positioned ^^^0.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15..16}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run tp @s ~~~ facing @e[scores={move=15..16},c=1]  
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run camerashake add @a[r=15] 1 0.2 rotational
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run particle ds:twinstrikes4 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run playsound mob.wither.break_block @a[r=30] ~~~  99999 2 999999
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run playsound mob.shock1 @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=2.46] at @s run playsound random.explode @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=2.46] 8 override
execute as @s[scores={move=15}] at @s positioned ^^^2 run effect @e[tag=!Frames,r=2.46] levitation 1 18 true
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=2.46] Evade 5
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=2.46] Stun 66
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=2.46] Hit 3
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=2.46] damage += @s damageadd
execute as @s[scores={move=15}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=7..15}] at @s run tp @s ~~~ 