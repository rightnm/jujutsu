playanimation @s[scores={move=25..}] animation.black_blade.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=18..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=18..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 7
scoreboard players set @s[scores={move=1..16}] Camera 7
scoreboard players set @s[scores={move=1..6}] AfterAnim 7
scoreboard players set @s[scores={move=1..18}] Frames 5

execute as @s[scores={move=23..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=23..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=23..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=23..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=23..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=17..18}] at @s run scriptevent ds:knockback 3

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=16}] at @s run function damages/slash_damage
execute as @s[scores={move=9}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=16..17}] atk 2
scoreboard players set @e[scores={move=9..10}] atk 2
execute as @s[scores={move=9..16}] at @s positioned ~~1~ run execute as @e[tag=!Frames,r=3.99] at @s run tp @s ~~~ facing @e[scores={move=9..17},c=1]

execute as @s[scores={move=16}] at @s run playsound mob.swordslash @a[r=200] ~~~ 999999 1.16 999999
execute as @s[scores={move=16}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 999999 0.96 999999
execute as @s[scores={move=16}] at @s positioned ~~1~ run scoreboard players set @e[tag=!Frames,r=2.99] Stun 25
execute as @s[scores={move=16}] at @s positioned ~~1~ run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=16}] at @s positioned ~~1~ run scoreboard players add @e[tag=!Frames,r=2.99] Evade 5
execute as @s[scores={move=16}] at @s positioned ~~1~ run damage @e[tag=!Frames,r=2.99] 7 override entity @s
execute as @s[scores={move=16}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 1  999999
execute as @s[scores={move=16}] at @s positioned ~~1~ if entity @e[tag=!Frames,r=2.99] run playsound mob.sword @a ~~~ 1 0.8
execute as @s[scores={move=16}] at @s positioned ~~1~ run execute as @e[tag=!Frames,r=2.99] run scriptevent ds:backward2
execute as @s[scores={move=16}] at @s positioned ^^^ run camerashake add @a[r=20] 1.25 0.15


execute as @s[scores={move=9}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 999999 0.75 999999
execute as @s[scores={move=9}] at @s positioned ~~1~ run scoreboard players set @e[tag=!Frames,r=3.99] Flourish 8
execute as @s[scores={move=9}] at @s positioned ~~1~ run scoreboard players add @e[tag=!Frames,r=3.99] Hit 6
execute as @s[scores={move=9}] at @s positioned ~~1~ run scoreboard players add @e[tag=!Frames,r=3.99] Evade 5
execute as @s[scores={move=9}] at @s positioned ~~1~ run damage @e[tag=!Frames,r=3.99] 7 override entity @s
execute as @s[scores={move=9}] at @s run playsound mob.witch.throw @a[r=200] ~~~  999999 0.2 999999
execute as @s[scores={move=9}] at @s positioned ~~1~ if entity @e[tag=!Frames,r=3.99] run playsound mob.slice @a ~~~ 1 1
execute as @s[scores={move=9}] at @s positioned ^^^ run camerashake add @a[r=20] 1.15 0.1





execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=5}] at @s positioned ^^1^-1 run particle ds:ground_slam2
