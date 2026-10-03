playanimation @s[scores={move=100}] animation.shootup
execute as @s[scores={move=100}] at @s run playsound mob.shootup @a[r=100] ~~~ 99999 1 99999

scoreboard players set @s[scores={move=3..}] Frames 5
scoreboard players set @s[scores={move=3..}] Move 5
execute as @s[scores={move=5..50}] at @s run scoreboard players set @a[r=50] Camera 5
execute as @s[scores={move=5..}] at @s run scoreboard players set @e[r=50,rm=1] Stun 15
execute as @s[scores={move=1..50}] at @s run tp @s ~~~

tag @s[scores={move=1..3}] remove glocks

execute as @s[scores={move=1..}] at @s run fill ~4 ~4 ~4 ~-4 ~-4 ~-4 air [] replace barrier
execute as @s[scores={move=6..}] at @s run fill ~ ~-1 ~ ~ ~-1 ~ barrier [] replace air

execute as @s[scores={move=21..}] at @s run effect @s slow_falling 1 1 true

execute as @s[scores={move=100}] at @s anchored eyes run camera @a[r=50] fade time 0 0.25 0.15 
execute as @s[scores={move=98}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^^-1^3 facing ~~~
execute as @s[scores={move=81..97}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 0.15 in_sine pos ^^-0.75^3 facing ~~0.15~

execute as @s[scores={move=66..80}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 0.3 in_out_circ pos ^^-0.15^1.25 facing ~~~
execute as @s[scores={move=15..65}] at @s anchored eyes run camera @a[r=50] clear

execute as @s[scores={move=70}] at @s anchored eyes run  camera @a[r=20] fade time 0 0 0.5 color 255 50 50
execute as @s[scores={move=70}] at @s anchored eyes run summon ds:glocks ~~-7~
execute as @s[scores={move=68..70}] at @s anchored eyes run playanimation @e[type=ds:glocks,c=1] animation.glocks
execute as @s[scores={move=16..}] at @s anchored eyes run scoreboard players set @e[type=ds:glocks,c=1] Deleter 20
execute as @s[scores={move=16..66}] at @s anchored eyes run tp @e[type=ds:glocks,c=1] ~~-0.5~ facing ^^^40
execute as @s[scores={move=15..45}] at @s run tp @s @s
execute as @s[scores={move=1..14}] at @s anchored eyes run tp @e[type=ds:glocks,c=1] ~~-50~

execute as @s[scores={move=15..45}] at @s anchored eyes positioned ^^^1 run  playsound mob.bullet @a ~~~ 0.05 2
execute as @s[scores={move=15..45}] at @s anchored eyes positioned ^^^1 run  playsound mob.shock1 @a ~~~ 0.05 2
execute as @s[scores={move=15..45}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=100] 4 0.15
execute as @s[scores={move=15..45}] at @s anchored eyes positioned ^^^1 run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=15..45}] at @s anchored eyes positioned ^^^1 run function limitless/glocks
