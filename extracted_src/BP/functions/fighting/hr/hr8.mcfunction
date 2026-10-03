playanimation @s[scores={move=90}] animation.flashstrike
tag @s[scores={move=1..2}] remove form8

tag @s[scores={move=89..,Stun=1..}] remove form8
scoreboard players set @s[scores={move=89..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..88}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=1..48}] Camera 4
scoreboard players set @a[tag=flashstrike] Camera 4
scoreboard players set @e[tag=flashstrike,c=1] Move 4
scoreboard players set @e[tag=flashstrike,c=1] Stun 25

execute as @s[scores={move=88}] at @s run playsound mob.wither.shoot @a ~~~ 1 0.4

execute as @s[scores={move=56..88}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 2 
execute as @s[scores={move=56..88}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.1 2.5
execute as @s[scores={move=56..88}] at @s run playsound mob.blaze.shoot @a ~~~ 0.15 3
execute as @s[scores={move=56..88}] at @s run playsound mob.bat.takeoff @a ~~~ 0.2 3
execute as @s[scores={move=56..88}] at @s run camerashake add @a[r=10] 0.25 0.1 

execute as @s[scores={move=55}] at @s run playsound mob.shock1 @a ~~~ 1 3
execute as @s[scores={move=55}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2
execute as @s[scores={move=55}] at @s run playsound mob.bass @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=51..55}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=51..55}] at @s run particle ds:rubble3 ~~1~
execute as @s[scores={move=51..55}] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=52..55}] at @s run tag @e[r=4,tag=!Frames] add flashstrike
execute as @s[scores={move=49..55}] at @s positioned ^^^-4 run tag @e[r=4,tag=!Frames] add flashstrike


execute as @s[scores={move=5..50}] at @s run tp @s @s

execute as @s[scores={move=50}] at @s run camera @s fade time 0.1 0.1 0.15 color 0 0 0
execute as @s[scores={move=48}] at @s run camera @s set minecraft:free pos ^1 ^0.85 ^5 rot ~-3 ~170
execute as @s[scores={move=48}] at @s run camera @a[tag=flashstrike] set minecraft:free pos ^1 ^0.85 ^5 rot ~-3 ~170


execute as @s[scores={move=1..4}] at @s run tag @e[tag=flashstrike] remove flashstrike

execute as @s[scores={move=7..32}] at @s run function damages/blunt_damage
execute as @s[scores={move=7..32}] at @s run damage @e[tag=flashstrike] 2 override
execute as @s[scores={move=5..32}] at @s run scoreboard players set @e[tag=flashstrike] Stun 15
execute as @s[scores={move=5..32}] at @s run scoreboard players set @e[tag=flashstrike] Hit 5
execute as @s[scores={move=5..32}] at @s run scoreboard players add @e[tag=flashstrike] Evade 2
execute as @s[scores={move=5}] at @s run scoreboard players operation @e[tag=flashstrike] damage += @s damageadd
execute as @s[scores={move=5..32}] at @s run execute as @e[tag=flashstrike] at @s run function hr/flashstrikeparticles