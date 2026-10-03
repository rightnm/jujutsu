playanimation @s[scores={move=30..}] animation.hand_sword.ab1

tag @s[scores={move=1..2}] remove wep1

playanimation @s[scores={move=27..,Stun=1..}] animation.cancel
scoreboard players set @s[scores={move=27..,Stun=1..}] move 3

execute as @s[scores={move=30}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 0.7
execute as @s[scores={move=27..}] at @s run scriptevent ds:knockback 1

execute as @s[type=!player] at @s run tp @s ~~~ 

scoreboard players set @s[scores={move=25..26}] Frames 7
scoreboard players set @s[scores={move=25..26}] Camera 7
scoreboard players set @s[scores={move=25..}] Move 7
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=25}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 3 99999
execute as @s[scores={move=25}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 2.75 99999
execute as @s[scores={move=25}] at @s run particle ds:large_impact1 ^^1^1
execute as @s[scores={move=25}] at @s run particle ds:large_impact2 ^^1^1
execute as @s[scores={move=25}] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={move=25}] at @s positioned ^^^3.1 run function fighting/hand_sword/throw
execute as @s[scores={move=25}] at @s positioned ^^^6 run function fighting/hand_sword/throw
execute as @s[scores={move=24}] at @s positioned ^^^9 run function fighting/hand_sword/throw
execute as @s[scores={move=24}] at @s positioned ^^^12 run function fighting/hand_sword/throw
execute as @s[scores={move=23}] at @s positioned ^^^15 run function fighting/hand_sword/throw
execute as @s[scores={move=23}] at @s positioned ^^^18 run function fighting/hand_sword/throw
execute as @s[scores={move=22}] at @s positioned ^^^21 run function fighting/hand_sword/throw