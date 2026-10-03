playanimation @s[scores={move=23..24}] animation.mahito.basic1

tag @s[scores={move=1..2},tag=wep1m] remove wep1m

tag @s[scores={move=19..,Stun=1..},tag=wep1m] remove wep1m
playanimation @s[scores={move=19..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=19..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4


execute as @s[scores={move=22}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999


scoreboard players random @s[scores={move=22}] blackflashchance 1 269
scoreboard players set @s[scores={move=22},tag=blackflashrig] blackflashchance 7

scoreboard players set @s[scores={move=18..19}] atk 2
execute as @s[scores={move=19..20}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=18}] at @s run playsound mob.bullet @a[r=25] ^^1^1  99999 2 99999
execute as @s[scores={move=18}] at @s run playsound mob.wither.shoot @a[r=25] ^^1^1  99999 2 99999
execute as @s[scores={move=18}] at @s run camerashake add @a[r=20] 0.75 0.15
execute as @s[scores={move=18}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol
execute as @s[scores={move=18}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol
execute as @s[scores={move=18}] at @s positioned ^^^7.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol
execute as @s[scores={move=18}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol
execute as @s[scores={move=18}] at @s positioned ^^^12.5 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol
execute as @s[scores={move=18}] at @s positioned ^^^15 run execute as @e[tag=!Frames,r=2.49] at @s run function idle_transfig/pistol

execute as @s[scores={move=18}] at @s run function damages/blunt_damage


scoreboard players set @s[scores={move=13..15}] move 3