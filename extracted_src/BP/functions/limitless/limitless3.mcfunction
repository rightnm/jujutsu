playanimation @s[scores={move=40}] animation.reversal_red1

execute as @s[scores={move=40}] at @s run tp @s @s

tag @e[scores={move=1..2}] remove form3

tag @s[scores={move=32..,Stun=1..}] remove form3
scoreboard players set @s[scores={move=32..,Stun=1..}] move 0

scoreboard players set @e[scores={move=1..}] Camera 4
scoreboard players set @e[scores={move=1..}] Frames 4
scoreboard players set @e[scores={move=1..}] Move 4

execute as @s[scores={move=18..}] at @s run camerashake add @a[r=15] 0.1 0.1

execute as @s[scores={move=38}] at @s run camera @s fade time 0.1 0.2 0.15 color 0 0 0

execute as @s[scores={move=36}] at @s anchored eyes run camera @s clear

execute as @s[scores={move=25}] at @s run camera @a[r=20] fade time 0.45 0 1 color 255 75 75

execute as @s[scores={move=35}] at @s run playsound mob.red1 @a ~~~  100000 0.5 100000
execute as @s[scores={move=16}] at @s run playsound mob.shock2 @a ~~~  100000 0.25 100000
execute as @s[scores={move=16}] at @s run playsound mob.shock1 @a ~~~  100000 1 100000

execute as @s[scores={move=15..16}] at @s run camerashake add @a[r=40] 2 0.15
execute as @s[scores={move=15..22}] at @s run particle ds:red_ex1 ~~1~

execute as @s[scores={move=15..16}] at @s run particle ds:red_ex2 ~~1~
execute as @s[scores={move=15..16}] at @s run particle ds:red_ex3 ~~1~
execute as @s[scores={move=15..16}] at @s run particle ds:red_ex4 ~~1~
execute as @s[scores={move=15..16}] at @s run particle ds:red_ex5 ~~1~
execute as @s[scores={move=15..16}] at @s run particle ds:red_ex6 ~~1~

execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:crater3
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~~~2
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~~~-2
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~2~~
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~-2~~
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run particle ds:rubble3 ~~~
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run playsound random.explode @a ~~~ 1500 0.3 1500
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run playsound random.explode @a ~~~ 1500 0.7 1500
execute as @s[scores={move=15..16}] at @s unless block ~~-0.25~ air run playsound mob.wither.break_block @a ~~~ 1500 0.44 1500

execute as @s[scores={move=1..17}] at @s run tp @s ~~~
execute as @s[scores={move=14..17}] at @s run execute as @e[r=15,tag=!Frames] at @s run tp @s
execute as @s[scores={move=14..17}] at @s run execute as @e[r=15,tag=!Frames] at @s run tp @s ~~~ facing @p[scores={move=1..14}]
execute as @s[scores={move=13}] at @s run damage @e[r=15,tag=!Frames] 35 entity_attack entity @s
execute as @s[scores={move=13}] at @s run scoreboard players add @e[r=15,tag=!Frames] Hit 10
execute as @s[scores={move=13}] at @s run scoreboard players add @e[r=15,tag=!Frames] Evade 16
execute as @s[scores={move=13}] at @s run summon ds:red_reverse
execute as @s[scores={move=13}] at @s run execute as @e[r=15,tag=!Frames] at @s run effect @s levitation 1 15 true
execute as @s[scores={move=13}] at @s run execute as @e[r=15,tag=!Frames] at @s run scoreboard players set @s knockdown 95
execute as @s[scores={move=13}] at @s run function damages/explosion_damage
