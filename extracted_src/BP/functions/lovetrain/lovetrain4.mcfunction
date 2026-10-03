playanimation @s[scores={move=35}] animation.lovetrain.cargo


scoreboard players set @s[scores={move=3..25}] Camera 5
scoreboard players set @s[scores={move=3..}] Move 5

tag @s[scores={move=1..2}] remove form4

scoreboard players set @s[scores={move=1..}] Frames 5

execute as @s[scores={move=10..}] at @s if block ~~-1~ air run fill ~-1~-1~-1 ~1~-3~1 barrier [] replace air
execute as @s[scores={move=1..9}] at @s run fill ~15~15~15~-15~-15~-15 air [] replace barrier


execute as @s[scores={move=22}] at @s run particle ds:dirt2
execute as @s[scores={move=22}] at @s run particle ds:crater2
execute as @s[scores={move=22}] at @s run particle ds:rubble3
execute as @s[scores={move=22}] at @s run playsound random.explode @a ~~~ 1 2
execute as @s[scores={move=22}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.25


execute as @s[scores={move=33}] at @s run camera @s fade time 0.1 0.15 0.5 color 0 0 0
execute as @s[scores={move=31}] at @s run camera @s  set minecraft:free pos ^3 ^10 ^-4 rot ~15 ~15
execute as @s[scores={move=30}] at @s run camera @s  set minecraft:free ease 0.5 linear pos ^4 ^11 ^-5 rot ~20 ~25

execute as @s[scores={move=1..15}] at @s run tp @s @s
execute as @s[scores={move=20}] at @s run scoreboard players random @s luck 1 100
execute as @s[scores={move=20},tag=gambler] at @s run scoreboard players random @s luck 41 100

scoreboard players set @s[scores={move=11..16}] Frames 7
execute as @s[scores={move=19,luck=1..40}] at @s run summon ds:cargo1 ^^5^1.25 facing ^^^20 none "Cargo Crate"
execute as @s[scores={move=19,luck=41..70}] at @s run summon ds:cargo2 ^^5^1.25 facing ^^^20 none "Cargo Crate"
execute as @s[scores={move=19,luck=71..90}] at @s run summon ds:cargo3 ^^5^1.25 facing ^^^20 none "Cargo Crate"
execute as @s[scores={move=19,luck=91..100}] at @s run summon ds:cargo4 ^^5^1.25 facing ^^^20 none "Cargo Crate"
execute as @s[scores={move=17..19}] at @s run playanimation @e[name="Cargo Crate",c=1] animation.cargo.idle
execute as @s[scores={move=14..16}] at @s run scoreboard players set @e[name="Cargo Crate",c=1] Deleter 51
execute as @s[scores={move=14..16}] at @s run camerashake add @a[r=40] 3 0.25
execute as @s[scores={move=14..16}] at @s run  particle ds:heavy_impact1 ^^7^1.25
execute as @s[scores={move=14..16}] at @s run  particle ds:heavy_impact2 ^^7^1.25
execute as @s[scores={move=14..16}] at @s run  particle ds:heavy_impact3 ^^7^1.25
execute as @s[scores={move=14..16}] at @s run  particle ds:ground_slam3 ^^7^1.25
execute as @s[scores={move=14..16}] at @s run  particle ds:ground_slam3 ^^7^1.25
execute as @s[scores={move=14..16}] at @s run  particle ds:heavy_impact5 ^^6^1.25

execute as @s[scores={move=17}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=16}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=15}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=14}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=13}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=13}] at @s run camera @s fade time 0 0.2 0.25 color 255 255 255
execute as @s[scores={move=12}] at @s run title @s[tag=!impactframesoff] title §l

scoreboard players add @s[scores={move=16,luck=41..70}] fever 1
scoreboard players add @s[scores={move=16,luck=71..90}] fever 3 
scoreboard players add @s[scores={move=16,luck=91..100}] fever 5



execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.4
execute as @s[scores={move=15,luck=1..}] at @s run playsound random.anvil_land @a ~~~ 1 0.94
execute as @s[scores={move=15,luck=1..}] at @s run playsound mob.metal1 @a ~~~ 1 0.34
execute as @s[scores={move=15,luck=1..}] at @s run playsound mob.metal1 @a ~~~ 1 0.45
execute as @s[scores={move=15,luck=1..}] at @s run playsound mob.metal1 @a ~~~ 1 1
execute as @s[scores={move=15,luck=1..}] at @s run playsound mob.shock1 @a ~~~ 1 1
execute as @s[scores={move=19,luck=1..}] at @s run playsound mob.punch @a ~~~ 1 0.5