playanimation @s[scores={move=30..}] animation.hand_sword.ab3

tag @s[scores={move=1..2}] remove wep3


scoreboard players set @s[scores={move=1..}] Move 8
scoreboard players set @s[scores={move=25..27}] Frames 7
scoreboard players set @s[scores={move=10..14}] Frames 7

execute as @s[scores={move=27}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=27}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=26}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=26}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 9999 1.7 9999
execute as @s[scores={move=24..26}] at @s run camerashake add @a[r=10] 1.5 0.17
execute as @s[scores={move=24..26}] at @s run scoreboard players set @e[tag=!Frames,r=7] Stun 20
execute as @s[scores={move=24..26}] at @s run scoreboard players set @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=24..26}] at @s run scoreboard players add @e[tag=!Frames,r=7] Evade 3
execute as @s[scores={move=24..26}] at @s run damage @e[tag=!Frames,r=7] 10 override

execute as @s[scores={move=24}] at @s run playsound mob.slash1 @a[r=25] ~~~ 9999 2.5 9999

execute as @s[scores={move=24..26}] at @s run execute as @e[tag=!Frames,r=7] at @s run scriptevent ds:knockback -1
execute as @s[scores={move=24..26}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.sword @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=26}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.slice3 @a[r=25] ~~~ 9999 1.15 9999
execute as @s[scores={move=26}] at @s run execute as @e[tag=!Frames,r=7] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=25}] at @s run scoreboard players operation @e[tag=!Frames,r=7] damagehalf += @s damage

execute as @s[scores={move=20..24}] at @s run  execute as @e[tag=!Frames,r=7,scores={Hit=1..}] at @s run tp @s ~~~ facing @e[hasitem={item=ds:hiten},scores={move=20..24},c=1]

execute as @s[scores={move=10}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=10}] at @s run scriptevent ds:autoJump2
execute as @s[scores={move=10}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.7 9999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=25] ~~~ 9999 1.7 9999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=10] 1.5 0.17

execute as @s[scores={move=11}] at @s run playsound mob.slash1 @a[r=25] ~~~ 9999 2.5 9999

execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=7] Stun 20
execute as @s[scores={move=10}] at @s run scoreboard players set @e[tag=!Frames,r=7] Hit 3
execute as @s[scores={move=10}] at @s run scoreboard players add @e[tag=!Frames,r=7] Evade 3
execute as @s[scores={move=10}] at @s run scoreboard players add @e[tag=!Frames,r=7] Flourish 3
execute as @s[scores={move=10}] at @s run damage @e[tag=!Frames,r=7] 14 override
execute as @s[scores={move=10}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.sword @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s run execute as @e[tag=!Frames,r=7] at @s run playsound mob.slice4 @a[r=25] ~~~ 9999 1.25 9999
execute as @s[scores={move=10}] at @s run execute as @e[tag=!Frames,r=7] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=10}] at @s run scoreboard players operation @e[tag=!Frames,r=7] damagehalf += @s damage

