
playanimation @e[scores={move=20..}] animation.slash_barrage

execute as @e[scores={move=4..16}] at @s run tp @s @s
execute as @e[scores={move=4..16}] at @s run camerashake add @a[r=5] 4 0.1
tag @e[scores={move=4..16}] add Frames
tag @e[scores={move=1..3}] remove Frames
execute as @e[scores={move=4..16}] at @s run damage @e[r=8.5,tag=!Frames] 6 none entity @s
execute as @e[scores={move=4..16}] at @s run scoreboard players set @e[r=8.5,tag=!Frames] Stun 25
execute as @e[scores={move=4..16}] at @s run scoreboard players set  @e[r=8.5,tag=!Frames] Hit 1
execute as @e[scores={move=4..16}] at @s run execute as @e[r=8.5,tag=!Frames] at @s run particle ds:slice1 ~~~
execute as @e[scores={move=4..16}] at @s run scoreboard players add @e[r=8.5,tag=!Frames] Evade 1
execute as @e[scores={move=4..16}] at @s run particle ds:atomic_slashes1 ~~1~
execute as @e[scores={move=4..16}] at @s run particle ds:atomic_slashes2 ~~1~
execute as @e[scores={move=4..16}] at @s run particle ds:atomic_slashes3 ~~1~

execute as @e[scores={move=4..16}] at @s run playsound mob.wither.shoot @a ~~~ 0.2 1.65
execute as @e[scores={move=4..16}] at @s run playsound mob.wither.shoot @a ~~~ 0.3 0.6
execute as @e[scores={move=4..16}] at @s run playsound mob.blaze.shoot @a ~~~ 0.15 1.6

tag @s[scores={move=1..3}] remove wep3

