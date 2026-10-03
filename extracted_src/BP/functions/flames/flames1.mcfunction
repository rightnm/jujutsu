playanimation @s[scores={move=40}] animation.flamethrower

tag @s[scores={move=1..2},tag=form1] remove form1

tag @s[scores={move=31..,Stun=1..},tag=form1] remove form1
playanimation @s[scores={move=31..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=31..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=10..30}] Camera 5
scoreboard players set @s[scores={move=10..30}] atk 2
scoreboard players set @s[scores={move=10..31}] Frames 4

execute as @s[scores={move=30..33}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=10..30}] at @s run tp @s @s
execute as @s[scores={move=10..30}] at @s run camerashake add @a[r=50] 1 0.15
execute as @s[scores={move=10..30}] at @s run playsound mob.blaze.shoot @a[r=100] ^^1^4 9999 0.4 9999
execute as @s[scores={move=10..30}] at @s run playsound mob.blaze.shoot @a[r=100] ^^1^4 9999 0.2 9999
execute as @s[scores={move=10..30}] at @s run playsound mob.burn @a[r=100] ^^1^4 9999 1 9999
execute as @s[scores={move=30}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=28}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=26}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=24}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=22}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=20}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=18}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=16}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=14}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=12}] at @s positioned ^^1^7.05 run function flames/flamethrower
execute as @s[scores={move=10}] at @s positioned ^^1^7.05 run function flames/flamethrower