playanimation @s[scores={move=70}] animation.jfk

scoreboard players set @s[scores={move=3..}] Frames 5
scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=58..}] Camera 5
execute as @s[scores={move=58..}] at @s run tp @s ~~~

tag @s[scores={move=1..3}] remove jfk 

scoreboard players set @s[scores={divergent=5..,move=64..}] divergent 4
scoreboard players set @s[scores={bluefist=5..,move=64..}] bluefist 4

execute as @s[scores={move=1..}] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air [] replace barrier
execute as @s[scores={move=5..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ barrier [] replace air

execute as @s[scores={move=70}] at @s run playsound mob.scopehim @a[r=100] ~~~ 99999 1 99999

replaceitem entity @s[scores={move=50..64}] slot.weapon.offhand 1 ds:jfk 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
clear @s[scores={move=1..5}] ds:jfk

execute as @s[scores={move=21..}] at @s run effect @s slow_falling 1 1 true

execute as @s[scores={move=64..66}] at @s anchored eyes run particle ds:lapse_pull4 ^^-0.35^0.5
execute as @s[scores={move=48}] at @s anchored eyes run particle ds:lapse_pull3 ^^-0.35^0.5
execute as @s[scores={move=48}] at @s anchored eyes run particle ds:lapse_pull2 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run particle ds:blue_jfk1 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run particle ds:blue_jfk2 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run particle ds:blue_jfk3 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run particle ds:blue_jfk4 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run particle ds:blue_jfk5 ^^-0.35^0.5
execute as @s[scores={move=48..66}] at @s anchored eyes run camerashake add @a[r=5] 0.05 0.01

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run particle ds:lapse_pull3
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run  playsound mob.bullet @a ~~~ 99999 1 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run  playsound mob.shock1 @a ~~~ 99999 0.75 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=100] 4 0.15
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run function limitless/scoped