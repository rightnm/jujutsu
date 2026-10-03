playanimation @s[scores={move=35}] animation.lovetrain.pachinko_rush2

scoreboard players set @s[scores={move=3..}] Move 5

tag @s[scores={move=1..2}] remove form2c

execute as @s[scores={move=14..16}] at @s run tp @s ~~~
execute as @s[scores={move=32}] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={move=32},tag=gambler] at @s run scoreboard players random @s chance 41 100

scoreboard players set @s[scores={move=10..33}] Frames 10
execute as @s[scores={move=30,chance=1..40}] at @s run summon ds:pachinko1 ^^1^0.25 facing ^^^20 none "Pachinko Cannon"
execute as @s[scores={move=30,chance=41..70}] at @s run summon ds:pachinko2 ^^1^0.25 facing ^^^20 none "Pachinko Cannon"
execute as @s[scores={move=30,chance=71..90}] at @s run summon ds:pachinko3 ^^1^0.25 facing ^^^20 none "Pachinko Cannon"
execute as @s[scores={move=30,chance=91..100}] at @s run summon ds:pachinko4 ^^1^0.25 facing ^^^20 none "Pachinko Cannon"
execute as @s[scores={move=28..30}] at @s run playanimation @e[name="Pachinko Cannon"] animation.big_pachinko

execute as @s[scores={move=15..30}] at @s run tp @e[name="Pachinko Cannon",c=1] ^^1^2 facing ^^^20

execute as @s[scores={move=1..5}] at @s run camera @s clear
execute as @s[scores={move=6..}] at @s run camera @s set minecraft:third_person

execute as @s[scores={move=29,chance=1..40}] at @s run particle ds:doorcrash_green2 ^^1^2
execute as @s[scores={move=29,chance=1..40}] at @s run particle ds:doorcrash_green3 ^^1^2
execute as @s[scores={move=29,chance=1..40}] at @s run playsound mob.magic2 @a ~~~ 1 1.3
execute as @s[scores={move=29,chance=41..70}] at @s run particle ds:doorcrash_red2 ^^1^2
execute as @s[scores={move=29,chance=41..70}] at @s run particle ds:doorcrash_red3 ^^1^2
execute as @s[scores={move=29,chance=41..70}] at @s run playsound mob.magic2 @a ~~~ 1 1.15
execute as @s[scores={move=29,chance=71..90}] at @s run particle ds:doorcrash_gold2 ^^1^2
execute as @s[scores={move=29,chance=71..90}] at @s run particle ds:doorcrash_gold3 ^^1^2
execute as @s[scores={move=29,chance=71..90}] at @s run playsound mob.magic4 @a ~~~ 1 0.8
execute as @s[scores={move=29,chance=91..}] at @s run particle ds:doorcrash_rainbow2 ^^1^2
execute as @s[scores={move=29,chance=91..}] at @s run particle ds:doorcrash_rainbow3 ^^1^2
execute as @s[scores={move=29,chance=91..}] at @s run playsound mob.magic4 @a ~~~ 1 0.5
execute as @s[scores={move=15}] at @s run particle ds:heavy_impact1 ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:heavy_impact2 ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:heavy_impact3 ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:heavy_impact5 ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ^^1^1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam3 ^^1^1

execute as @s[scores={move=15,chance=1..40}] at @s run particle ds:doorcrash_green1 ^^1^1
execute as @s[scores={move=15,chance=1..40}] at @s run particle ds:doorcrash_green2 ^^1^1
execute as @s[scores={move=15,chance=1..40}] at @s run particle ds:doorcrash_green3 ^^1^1
execute as @s[scores={move=15,chance=1..40}] at @s run particle ds:pachinkostrike_green1 ^^1^1

execute as @s[scores={move=15,chance=41..70}] at @s run particle ds:doorcrash_red1 ^^1^1
execute as @s[scores={move=15,chance=41..70}] at @s run particle ds:doorcrash_red2 ^^1^1
execute as @s[scores={move=15,chance=41..70}] at @s run particle ds:doorcrash_red3 ^^1^1
execute as @s[scores={move=15,chance=41..70}] at @s run particle ds:pachinkostrike_red1 ^^1^1

execute as @s[scores={move=15,chance=71..90}] at @s run particle ds:doorcrash_gold1 ^^1^1
execute as @s[scores={move=15,chance=71..90}] at @s run particle ds:doorcrash_gold2 ^^1^1
execute as @s[scores={move=15,chance=71..90}] at @s run particle ds:doorcrash_gold3 ^^1^1
execute as @s[scores={move=15,chance=71..90}] at @s run particle ds:pachinkostrike_gold1 ^^1^1

execute as @s[scores={move=15,chance=91..}] at @s run particle ds:doorcrash_rainbow1 ^^1^1
execute as @s[scores={move=15,chance=91..}] at @s run particle ds:doorcrash_rainbow2 ^^1^1
execute as @s[scores={move=15,chance=91..}] at @s run particle ds:doorcrash_rainbow3 ^^1^1
execute as @s[scores={move=15,chance=91..}] at @s run particle ds:pachinkostrike_rainbow1 ^^1^1

execute as @s[scores={move=15}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=14}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=13}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=12}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=11}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=10}] at @s run title @s[tag=!impactframesoff] title 
execute as @s[scores={move=6}] at @s run title @s[tag=!impactframesoff] title §l
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=200] ~~~ 999999 0.5 999999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=200] ~~~ 999999 0.75 999999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=200] ~~~ 999999 0.35 999999
execute as @s[scores={move=15}] at @s run playsound  mob.wither.shoot @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=15}] at @s run playsound  mob.wither.shoot @a[r=200] ~~~ 999999 0.5 999999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=40] 3 0.25
execute as @s[scores={move=15}] at @s run summon ds:projectile "PachinkoCannonTRG" ^^^50 
execute as @s[scores={move=15..}] at @s run scoreboard players set @e[name="Pachinko Cannon",r=10] Deleter 21
execute as @s[scores={move=15}] at @s positioned ^^^50  run scoreboard players set @e[name="PachinkoCannonTRG",c=1] Deleter 21



scoreboard players add @s[scores={move=14,chance=41..70}] fever 1
scoreboard players add @s[scores={move=14,chance=71..90}] fever 3 
scoreboard players add @s[scores={move=14,chance=91..100}] fever 5

