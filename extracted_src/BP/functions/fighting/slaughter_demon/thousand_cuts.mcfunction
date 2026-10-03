playanimation @s[scores={move=45..}] animation.slaughter_demon.ab4

tag @s[scores={move=1..2}] remove wep4

tag @s[scores={move=38..,Stun=1..}] remove wep4
scoreboard players set @s[scores={move=38..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4


execute as @s[scores={move=43..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=43..}] at @s run scriptevent ds:knockback 1


scoreboard players set @e[scores={move=16..41}] atk 2
execute as @s[scores={move=16..41}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run tp @s ~~~ facing @e[scores={move=29..31},c=1]

execute as @s[scores={move=16..41}] at @s run tp @s ~~~

execute as @s[scores={move=16..41}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 3.28 999999
execute as @s[scores={move=16..41}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 22
execute as @s[scores={move=20}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Flourish 8
execute as @s[scores={move=16..41}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 3
execute as @s[scores={move=16..41}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 1 override
execute as @s[scores={move=16..41}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=41}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.85
execute as @s[scores={move=36}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.75
execute as @s[scores={move=32}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.85
execute as @s[scores={move=25}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.65
execute as @s[scores={move=28}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.85
execute as @s[scores={move=17}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1.15
execute as @s[scores={move=16..41}] at @s positioned ^^^ run camerashake add @a[r=20] 0.4 0.09
execute as @s[scores={move=16..41}] at @s positioned ^^1^1 run particle ds:thousand_cuts
execute as @s[scores={move=16..41}] at @s positioned ^^1^1 run particle ds:thousand_cuts2
execute as @s[scores={move=16..41}] at @s positioned ^^1^1 run particle ds:thousand_cuts3
execute as @s[scores={move=16..41}] at @s positioned ^^1^1 run particle ds:thousand_cuts4
execute as @s[scores={move=11..16}] at @s run particle ds:flashstep1
execute as @s[scores={move=16}] at @s positioned ^^1^1 run camerashake add @a[r=20] 4 0.1 rotational


execute as @s[scores={move=16}] at @s run function damages/slash_damage

execute as @s[scores={move=16}] at @s run execute as @e[r=20,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @s @s
execute as @s[scores={move=16}] at @s run execute as @e[r=20,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @e[scores={move=16},c=1] ^^^-1 facing ~~~
execute as @s[scores={move=15}] at @s positioned ^^1^1 run particle ds:thousand_cuts5
execute as @s[scores={move=15}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1.15 999999
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 25
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 6
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Evade 12
execute as @s[scores={move=15}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 7 override entity @s
execute as @s[scores={move=15}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact3 ~~1~
execute as @s[scores={move=15}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=15}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1
execute as @s[scores={move=15}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=15}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1

execute as @s[scores={move=14}] at @s positioned ^^^15 run execute as @e[r=20,rm=3,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @s @s
execute as @s[scores={move=14}] at @s positioned ^^^15 run execute as @e[r=20,rm=3,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @e[scores={move=14},c=1] ^^^-1 facing ~~~
execute as @s[scores={move=13}] at @s positioned ^^1^1 run particle ds:thousand_cuts5
execute as @s[scores={move=13}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1.15 999999
execute as @s[scores={move=13}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 25
execute as @s[scores={move=13}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 6
execute as @s[scores={move=13}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Evade 12
execute as @s[scores={move=13}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 7 override entity @s
execute as @s[scores={move=13}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=13}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact3 ~~1~
execute as @s[scores={move=13}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=13}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1
execute as @s[scores={move=13}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=13}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1

execute as @s[scores={move=12}] at @s positioned ^^^15 run execute as @e[r=20,rm=3,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @s @s
execute as @s[scores={move=12}] at @s positioned ^^^15 run execute as @e[r=20,rm=3,tag=!Frames,type=!item,type=!xp_orb,family=!projectile,family=!despawncito,c=1] at @s run tp @e[scores={move=12},c=1] ^^^-1 facing ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1 run particle ds:thousand_cuts5
execute as @s[scores={move=11}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1.15 999999
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.99] Stun 25
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Hit 6
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players add @e[tag=!Frames,r=1.99] Evade 12
execute as @s[scores={move=11}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.99] 7 override entity @s
execute as @s[scores={move=11}] at @s positioned ^^^2 run scoreboard players operation @e[tag=!Frames,r=1.99] damage += @s damageadd
execute as @s[scores={move=11}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^2 run execute as @e[tag=!Frames,r=1.99] at @s run particle ds:large_impact3 ~~1~
execute as @s[scores={move=11}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1 999999
execute as @s[scores={move=11}] at @s positioned ^^^2 if entity @e[tag=!Frames,r=1.99] run playsound mob.slice @a ~~~ 1 1
execute as @s[scores={move=11}] at @s run playsound  mob.wither.shoot @a ~~~ 0.2 0.6 
execute as @s[scores={move=11}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1






execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 
