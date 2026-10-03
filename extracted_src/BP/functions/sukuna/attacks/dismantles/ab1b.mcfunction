 playanimation @s[scores={move=65..}] animation.dismantle_downwards


effect @s[scores={move=64..}] levitation 1 115 true
effect @s[scores={move=59..60}] levitation 0 120 true
effect @s[scores={move=59..60}] slow_falling 6 1 true

execute as @s[scores={move=59}] at @s run playsound mob.youvedoneitnow @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=35..59}] at @s positioned ^^^4 run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cYou've done it now!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

scoreboard players set @s[scores={move=23..59}] Camera 23
scoreboard players set @s[scores={move=23..59}] Move 23
scoreboard players set @s[scores={move=15..29}] Frames 15

execute as @s[scores={move=25..57}] at @s run tp @s ~~~

execute as @s[scores={move=35}] at @s run  particle ds:dismantle_star_large ~~~
execute as @s[scores={move=35}] at @s run  particle ds:invert ~~1.5~

execute as @s[scores={move=25}] at @s run summon ds:projectile dismantledown1 ~~-1~
execute as @s[scores={move=25}] at @s run scoreboard players set @e[name=dismantledown1,c=1] Deleter 20

execute as @s[scores={move=23}] at @s run summon ds:projectile dismantledown1 ~~-1~3
execute as @s[scores={move=23}] at @s run scoreboard players set @e[name=dismantledown1,c=1] Deleter 20

execute as @s[scores={move=21}] at @s run summon ds:projectile dismantledown1 ~-3~-1~
execute as @s[scores={move=21}] at @s run scoreboard players set @e[name=dismantledown1,c=1] Deleter 20
execute as @s[scores={move=20..22}] at @s run playanimation @e[name=dismantledown1,c=3] animation.dismantle.down
execute as @s[scores={move=25}] at @s run camerashake add @a[r=100] 2 0.25 rotational

execute as @s[scores={move=25}] at @s run effect @a[r=100] blindness 1 1 true
execute as @s[scores={move=23}] at @s run effect @a[r=100] blindness 0 20 true

tag @e[name=dismantledown1] add Frames
scoreboard players set @e[name=dismantledown1] atk 2
execute as @e[name=dismantledown1] at @s if block ~~~ air run particle ds:dismantle_stars
execute as @e[name=dismantledown1] at @s if block ~~~ air run tp @s ~~-2~ 
execute as @e[name=dismantledown1] at @s if block ~~~ air run tp @s ~~-2~ 
execute as @e[name=dismantledown1] at @s if block ~~~ air run tp @s ~~-2~ 

execute as @e[name=dismantledown1] at @s if block ~~~ air run damage @e[tag=!Frames,r=10] 20

execute as @e[name=dismantledown1] at @s unless block ~~~ air run function sukuna/attacks/dismantledown
execute as @e[name=dismantledown1] at @s unless block ~~~ air run tp @s ~~-200~

tag @s[scores={move=1..2}] remove form1sb