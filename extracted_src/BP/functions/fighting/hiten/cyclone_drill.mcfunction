playanimation @s[scores={move=30..}] animation.hiten.ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=25..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=25..,Stun=1..}] move 0

scoreboard players set @s[scores={move=7..}] Move 6

execute as @s[scores={move=27..}] at @s run scriptevent ds:knockback 1

scoreboard players set @e[scores={move=8..24}] Camera 6
scoreboard players set @e[scores={move=24}] atk 2

execute as @s[scores={move=8..24}] at @s run camera @s set minecraft:free pos ^3^2^-1 facing ^^1^3.5
execute as @s[scores={move=1..7}] at @s run camera @s clear

execute as @s[scores={move=8..24}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.9] at @s run tp @s ~~~ facing @e[scores={move=29..31},c=1]
execute as @s[scores={move=8..24}] at @s run tp @s ~~~
execute as @s[scores={move=20..25}] at @s run tp @s @s

execute as @s[scores={move=24}] at @s run playsound mob.swordslash @a[r=100] ^^1^3 99999 2 999999
execute as @s[scores={move=24}] at @s run playsound mob.slash @a[r=100] ^^1^3 99999 1.25 999999

execute as @s[scores={move=8}] at @s run camerashake add @a[r=25] 4 0.15 rotational
execute as @s[scores={move=8}] at @s run playsound mob.slash @a[r=100] ^^1^3 99999 1.25 999999
execute as @s[scores={move=8}] at @s run particle ds:heavy_impact1 ^^1^5
execute as @s[scores={move=8}] at @s run particle ds:heavy_impact2 ^^1^5
execute as @s[scores={move=8}] at @s run particle ds:heavy_impact3 ^^1^5
execute as @s[scores={move=24}] at @s run particle ds:large_impact1 ^^1^5
execute as @s[scores={move=8}] at @s run particle ds:large_impact1 ^^1^5
execute as @s[scores={move=8}] at @s run particle ds:large_impact2 ^^1^5
execute as @s[scores={move=8}] at @s run particle ds:ground_slam2 ^^1^3.5

execute as @s[scores={move=8..24}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 999999 2.75 999999
execute as @s[scores={move=8..24}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 2.75 999999
execute as @s[scores={move=8..24}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=24}] at @s run playsound mob.wind @a[r=25] ~~~  999999 1 999999
execute as @s[scores={move=8..24}] at @s run playsound mob.wither.shoot @a[r=25] ~~~  999999 2.5 999999
execute as @s[scores={move=8..24}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.15 0.08 rotational

execute as @s[scores={move=8}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s damageadd
execute as @s[scores={move=8}] at @s positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=2.9] damage += @s damageadd

execute as @s[scores={move=8..24}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Stun 22
execute as @s[scores={move=8..24}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 2
execute as @s[scores={move=8..24}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.9] Evade 1
execute as @s[scores={move=8..24}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 2 override
execute as @s[scores={move=8..24}] at @s positioned ^^^3 run execute as  @e[tag=!Frames,r=2.9] at @s  run playsound mob.sword @a ~~~ 0.1 1.5
execute as @s[scores={move=8..24}] at @s positioned ^^^3 run execute as  @e[tag=!Frames,r=2.9] at @s  run tp @s ~~~ facing @e[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={move=8..24},c=1]

execute as @s[scores={move=8..24}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=2.9] Stun 22
execute as @s[scores={move=8..24}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 2
execute as @s[scores={move=8..24}] at @s positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=2.9] Evade 1
execute as @s[scores={move=8..24}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=2.9] 2 override
execute as @s[scores={move=8..24}] at @s positioned ^^^6 run execute as  @e[tag=!Frames,r=2.9] at @s  run playsound mob.sword @a ~~~ 0.1 1.5
execute as @s[scores={move=8..24}] at @s positioned ^^^6 run execute as  @e[tag=!Frames,r=2.9] at @s  run tp @s ~~~ facing @e[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={move=8..24},c=1]


execute as @s[scores={move=10}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.9] Flourish 8

execute as @s[scores={move=16}] at @s run function damages/slash_damage

