tp @s -59936 260 -59937

execute positioned -59936 260 -59937 run tag @a[r=300] add arenaboss

execute as @s if entity @p unless entity @a[tag=arenaboss,r=200] run function nostopcheating

scoreboard players set @s[scores={Energy=66..,Hit=1..}] Energy 60

execute as @s at @s unless entity @s[scores={Energy=0..}] run tellraw @a[r=300] {"rawtext":[{"text":"§e- You have 3 lives."}]}
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s move 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s chance 0
execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players set @s Energy 400
execute as @s[scores={Energy=400..,move=0}] run execute as @a[r=200] at @s run playsound music.ultra1 @s ~~~ 99999 0.25 999999


scoreboard players remove @s[scores={Energy=1..,move=0}] Energy 1
scoreboard players remove @s[scores={Energy=1..,move=0,detect_health=1..500}] Energy 1
scoreboard players remove @s[scores={Energy=1..,move=0,detect_health=1..250}] Energy 1
scoreboard players remove @s[scores={Energy=1..,move=0,detect_health=1..50}] Energy 1

scoreboard players random @s[scores={Energy=0,move=0,detect_health=2..}] chance 1 8

execute if entity @a[r=8] run summon ds:red_reverse 

scoreboard players set @s[scores={move=1..}] Energy 60

scoreboard players set @s[scores={Energy=0,move=0,detect_health=2..,chance=1}] move 61
execute as @s[scores={chance=1,move=1..}] at @s run function bosses/file/3beam
execute as @e[type=ds:projectile,name=equinox_beam] at @s run function bosses/file/equinox_beam

scoreboard players set @s[scores={Energy=0,move=0,detect_health=2..,chance=2}] move 41
execute as @s[scores={chance=2,move=1..}] at @s run function bosses/file/balls
execute as @e[type=ds:projectile,name=equinox_orb] at @s run function bosses/file/equinox_balls

scoreboard players set @s[scores={Energy=0,move=0,detect_health=2..,chance=3}] move 101
execute as @s[scores={chance=3,move=1..}] at @s run function bosses/file/ballspam

scoreboard players set @s[scores={Energy=0,move=0,detect_health=2..,chance=4}] move 41
execute as @s[scores={chance=4,move=1..}] at @s run function bosses/file/pulse

execute as @s[scores={detect_health=0..1,move=0}] run tag @s add prisonbreak
execute as @s[scores={detect_health=0..1,move=0}] run scoreboard players set @s Energy 999
execute as @s[scores={detect_health=0..1,move=0}] run scoreboard players set @s chance 0
execute as @s[scores={detect_health=0..1,move=0}] run scoreboard players set @s move 1001
execute as @s[scores={move=1..},tag=prisonbreak] run function bosses/file/prison_break


# make a way to obtain essence of CONFLICT NOW!
