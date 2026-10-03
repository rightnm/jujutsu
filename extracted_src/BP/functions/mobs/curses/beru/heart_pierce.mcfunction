playanimation @s[scores={move=40..41}] animation.beru.speedblitz3
playanimation @s[scores={move=40..41},has_property={property:awaken=1}] animation.beru.speedblitz3b

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..65}] Camera 6
scoreboard players set @s[scores={move=5..}] Frames 6

execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^8 run function mobs/curses/beru/heart_pierce_trg

execute as @s[scores={move=1..5}] at @s run camera @a[r=100] clear
execute as @s[scores={move=1..5}] at @s run tag @e[tag=takedown] remove takedown

execute as @s[scores={move=16..17}] at @s unless entity @e[tag=takedown,r=100] run playanimation @s animation.cancel
execute as @s[scores={move=16..17}] at @s unless entity @e[tag=takedown,r=100] run scoreboard players set @s move 2

execute as @s[scores={move=18..19}] at @s if entity @e[tag=takedown,r=100] run scoreboard players set @s move 161



scoreboard players set @e[tag=takedown] Stun 25

tag @e[tag=Frames] remove takedown


execute as @s[scores={move=159..160}] at @s run execute as @e[tag=takedown,c=1] at @s run tp @e[scores={move=159..160}] ^^^-1

execute as @s[scores={move=100..157}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=100..157}] at @s anchored eyes run tp @e[tag=takedown,c=1] ^-0.33^-0.55^1.85 facing ^^^10
playanimation @e[tag=takedown,r=10] animation.stunned


execute as @s[scores={move=105..159}] at @s run camera @a[tag=takedown,c=1] set minecraft:free pos ^4^2.5^ facing ^^2.5^

execute as @s[scores={move=157}] at @s run playsound mob.blood2 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=157}] at @s run playsound mob.blood @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=157}] at @s run playsound mob.slice3 @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=157}] at @s run playsound mob.sword @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=157}] at @s run damage @e[tag=takedown,c=1] 15 override
execute as @s[scores={move=157}] at @s run scoreboard players add @e[tag=takedown,c=1] Evade 5
execute as @s[scores={move=157}] at @s run scoreboard players add @e[tag=takedown,c=1] Hit 6
execute as @s[scores={move=157}] at @s run scoreboard players add @e[tag=takedown,c=1] Stun 40
execute as @s[scores={move=157}] at @s run scoreboard players add @e[tag=takedown,c=1] knockdown 0
execute as @s[scores={move=157}] at @s run scoreboard players add @e[tag=takedown,c=1] knock 0
execute as @s[scores={move=157}] at @s run execute as @e[tag=takedown,c=1] at @s run particle ds:blood_splat
execute as @s[scores={move=157}] at @s run execute as @e[tag=takedown,c=1] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={move=157}] at @s run camerashake add @a[r=25] 1 0.15

execute as @s[scores={move=135}] at @s run scoreboard players add @e[tag=takedown,c=1] knockdown 50

scoreboard players set @s[scores={move=130..134}] move 6