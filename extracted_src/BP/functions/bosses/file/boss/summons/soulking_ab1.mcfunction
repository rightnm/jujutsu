playanimation @s[scores={move=25..26}] animation.soulking.ab1

scoreboard players set @s Frames 5

execute as @s[scores={move=11..}] at @s unless entity  @e[tag=!Frames,family=!heroic,r=5] run scriptevent ds:knockback 4

execute as @s[scores={move=10}] at @s run camerashake add @a[r=25] 2 0.15
execute as @s[scores={move=10}] at @s run playsound mob.distort1 @a[r=100] ~~~ 99999 4.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=10}] at @s positioned ^^^4 run damage @e[tag=!Frames,family=!heroic,r=6] 12 suicide
execute as @s[scores={move=10}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Stun 15
execute as @s[scores={move=10}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Hit 3
execute as @s[scores={move=10},type=!player] at @s positioned ^^^4 run tag @e[tag=!Frames,family=!heroic,r=6] add voidmarked
execute as @s[scores={move=10}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Flourish 8
scoreboard players set @s Stun 15

tag @s[scores={move=1..4}] remove wep1
