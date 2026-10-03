damage @e[tag=!Frames,r=2.49] 2 override
scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
scoreboard players set @e[tag=!Frames,r=2.49] Hit 3
scoreboard players add @e[tag=!Frames,r=2.49] Evade 1
function damages/explosion_damage
execute as @e[tag=!Frames,r=2.49] at @s run tp @s ~~~ facing @e[scores={move=551..561},tag=limitless,c=1] 
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 0.8 9999
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run particle ds:red_ex ~~1~
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run particle ds:dirt0 ~~~
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run summon ds:knockback ^^^1
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run summon ds:knockback ^^^1
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run scoreboard players set @s knockdown 90
execute as @e[tag=!Frames,r=2.49] if entity @e[scores={move=549..550},tag=limitless,c=1]  at @s run effect @s levitation 1 18 true