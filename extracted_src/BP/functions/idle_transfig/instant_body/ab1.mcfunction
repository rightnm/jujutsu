playanimation @s[scores={move=20..21}] animation.instant_body.ab1

tag @s[scores={move=1..2},tag=wep1m] remove wep1m

tag @s[scores={move=16..,Stun=1..},tag=wep1m] remove wep1m
playanimation @s[scores={move=16..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4


scoreboard players set @s[scores={move=14..15}] atk 2

execute as @s[scores={move=16}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1.5 99999
execute as @s[scores={move=15..16}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=14}] at @s run playsound mob.slash1 @a[r=25] ^^1^1  99999 3 99999
execute as @s[scores={move=14}] at @s run playsound mob.wither.shoot @a[r=25] ^^1^1  99999 2 99999
execute as @s[scores={move=14}] at @s run camerashake add @a[r=20] 0.75 0.15


execute as @s[scores={move=14}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^7.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^12.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^15 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale
execute as @s[scores={move=14}] at @s positioned ^^^17.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/instant_body/impale


execute as @s[scores={move=14}] at @s run function damages/blunt_damage


scoreboard players set @s[scores={move=9..10}] move 3