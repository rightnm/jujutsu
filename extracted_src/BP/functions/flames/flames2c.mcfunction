playanimation @s[scores={move=13}] animation.place_ground
tag @s[scores={move=1..2},tag=form2c] remove form2c

tag @s[scores={move=6..,Stun=1..},tag=form2c] remove form2c
playanimation @s[scores={move=6..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=6..,Stun=1..}] move 2

scoreboard players set @s[scores={move=6..}] Move 4
scoreboard players set @s[scores={move=6..}] Camera 4


execute as @s[scores={move=5..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=5..6}] at @s run tp @s @s
execute as @s[scores={move=5}] at @s run scoreboard objectives add n dummy
execute as @s[scores={move=5}] at @s run scoreboard objectives add e dummy
execute as @s[scores={move=5}] at @s run scoreboard objectives add s dummy
execute as @s[scores={move=5}] at @s run scoreboard objectives add w dummy
execute as @s[scores={move=5}] at @s run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s run scoreboard players set @e[name="Volcanic Mine",r=2,c=5,tag=!erupted] Deleter 401
execute as @s[scores={move=5}] at @s unless block ~~~ air run spreadplayers ~ ~ 2 12 @e[type=ds:geyser,name="Volcanic Mine",r=2,c=5,scores={Deleter=401}]
execute as @s[scores={move=5}] at @s run scoreboard players random @e[type=ds:geyser,name="Volcanic Mine",r=2,c=5,scores={Deleter=401}] n 0 4
execute as @s[scores={move=5}] at @s run scoreboard players random @e[type=ds:geyser,name="Volcanic Mine",r=2,c=5,scores={Deleter=401}] e 0 4
execute as @s[scores={move=5}] at @s run scoreboard players random @e[type=ds:geyser,name="Volcanic Mine",r=2,c=5,scores={Deleter=401}] s 0 4
execute as @s[scores={move=5}] at @s run scoreboard players random @e[type=ds:geyser,name="Volcanic Mine",r=2,c=5,scores={Deleter=401}] w 0 4
execute as @s[scores={move=2..5}] at @s run scoreboard players set @e[type=ds:geyser,name="Volcanic Mine",r=12,c=5,scores={Deleter=399..},tag=!erupted] Deleter 401

execute as @e[scores={n=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~~~1 air if block ~~~2 air if block ~~~2.4 air unless block ~~~2.77 air unless block ~~~3 air unless block ~~~2.77 water unless block ~~~3 water unless block ~~~2.77 lava unless block ~~~3 lava unless block ~~~2.77 fire unless block ~~~3 fire unless block ~~~2.77 soul_fire unless block ~~~3 soul_fire unless block ~~~2.77 grass unless block ~~~3 grass unless block ~~~2.77 tall_grass unless block ~~~3 tall_grass unless block ~~~2.77 red_flower unless block ~~~3 red_flower unless block ~~~2.77 yellow_flower unless block ~~~3 yellow_flower if block ~~1~1 air if block ~~1~2 air if block ~~1~2.4 air unless block ~~1~2.77 air unless block ~~1~3 air unless block ~~1~2.77 water unless block ~~1~3 water unless block ~~1~2.77 lava unless block ~~1~3 lava unless block ~~1~2.77 fire unless block ~~1~3 fire unless block ~~1~2.77 soul_fire unless block ~~1~3 soul_fire unless block ~~1~2.77 grass unless block ~~1~3 grass unless block ~~1~2.77 tall_grass unless block ~~1~3 tall_grass unless block ~~1~2.77 red_flower unless block ~~1~3 red_flower unless block ~~1~2.77 yellow_flower unless block ~~1~3 yellow_flower positioned ~~1~3 run tp @s ~~~ facing ~~~-1
execute as @e[scores={e=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~1~~ air if block ~2~~ air if block ~2.4~~ air unless block ~2.77~~ air unless block ~3~~ air unless block ~2.77~~ water unless block ~3~~ water unless block ~2.77~~ lava unless block ~3~~ lava unless block ~2.77~~ fire unless block ~3~~ fire unless block ~2.77~~ soul_fire unless block ~3~~ soul_fire unless block ~2.77~~ grass unless block ~3~~ grass unless block ~2.77~~ tall_grass unless block ~3~~ tall_grass unless block ~2.77~~ red_flower unless block ~3~~ red_flower unless block ~2.77~~ yellow_flower unless block ~3~~ yellow_flower if block ~1~1~ air if block ~2~1~ air if block ~2.4~1~ air unless block ~2.77~1~ air unless block ~3~1~ air unless block ~2.77~1~ water unless block ~3~1~ water unless block ~2.77~1~ lava unless block ~3~1~ lava unless block ~2.77~1~ fire unless block ~3~1~ fire unless block ~2.77~1~ soul_fire unless block ~3~1~ soul_fire unless block ~2.77~1~ grass unless block ~3~1~ grass unless block ~2.77~1~ tall_grass unless block ~3~1~ tall_grass unless block ~2.77~1~ red_flower unless block ~3~1~ red_flower unless block ~2.77~1~ yellow_flower unless block ~3~1~ yellow_flower positioned ~3~1~ run tp @s ~~~ facing ~-1~~
execute as @e[scores={s=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~~~-1 air if block ~~~-2 air if block ~~~-2.4 air unless block ~~~-2.77 air unless block ~~~-3 air unless block ~~~-2.77 water unless block ~~~-3 water unless block ~~~-2.77 lava unless block ~~~-3 lava unless block ~~~-2.77 fire unless block ~~~-3 fire unless block ~~~-2.77 soul_fire unless block ~~~-3 soul_fire unless block ~~~-2.77 grass unless block ~~~-3 grass unless block ~~~-2.77 tall_grass unless block ~~~-3 tall_grass unless block ~~~-2.77 red_flower unless block ~~~-3 red_flower unless block ~~~-2.77 yellow_flower unless block ~~~-3 yellow_flower if block ~~1~-1 air if block ~~1~-2 air if block ~~1~-2.4 air unless block ~~1~-2.77 air unless block ~~1~-3 air unless block ~~1~-2.77 water unless block ~~1~-3 water unless block ~~1~-2.77 lava unless block ~~1~-3 lava unless block ~~1~-2.77 fire unless block ~~1~-3 fire unless block ~~1~-2.77 soul_fire unless block ~~1~-3 soul_fire unless block ~~1~-2.77 grass unless block ~~1~-3 grass unless block ~~1~-2.77 tall_grass unless block ~~1~-3 tall_grass unless block ~~1~-2.77 red_flower unless block ~~1~-3 red_flower unless block ~~1~-2.77 yellow_flower unless block ~~1~-3 yellow_flower positioned ~~1~-3 run tp @s ~~~ facing ~~~1
execute as @e[scores={w=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~-1~~ air if block ~-2~~ air if block ~-2.4~~ air unless block ~-2.77~~ air unless block ~-3~~ air unless block ~-2.77~~ water unless block ~-3~~ water unless block ~-2.77~~ lava unless block ~-3~~ lava unless block ~-2.77~~ fire unless block ~-3~~ fire unless block ~-2.77~~ soul_fire unless block ~-3~~ soul_fire unless block ~-2.77~~ grass unless block ~-3~~ grass unless block ~-2.77~~ tall_grass unless block ~-3~~ tall_grass unless block ~-2.77~~ red_flower unless block ~-3~~ red_flower unless block ~-2.77~~ yellow_flower unless block ~-3~~ yellow_flower if block ~-1~1~ air if block ~-2~1~ air if block ~-2.4~1~ air unless block ~-2.77~1~ air unless block ~-3~1~ air unless block ~-2.77~1~ water unless block ~-3~1~ water unless block ~-2.77~1~ lava unless block ~-3~1~ lava unless block ~-2.77~1~ fire unless block ~-3~1~ fire unless block ~-2.77~1~ soul_fire unless block ~-3~1~ soul_fire unless block ~-2.77~1~ grass unless block ~-3~1~ grass unless block ~-2.77~1~ tall_grass unless block ~-3~1~ tall_grass unless block ~-2.77~1~ red_flower unless block ~-3~1~ red_flower unless block ~-2.77~1~ yellow_flower unless block ~-3~1~ yellow_flower positioned ~-3~1~ run tp @s ~~~ facing ~1~~
execute as @e[scores={Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s unless block ~~~ air unless block ~~~ water unless block ~~~ lava unless block ~~~ fire unless block ~~~ soul_fire unless block ~~~ grass unless block ~~~ tall_grass unless block ~~~ red_flower unless block ~~~ yellow_flower run summon ds:geyser ~~~ facing ^^^1 none "Volcanic Wall Mine"
execute as @e[scores={Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s unless block ~~~ air unless block ~~~ water unless block ~~~ lava unless block ~~~ fire unless block ~~~ soul_fire unless block ~~~ grass unless block ~~~ tall_grass unless block ~~~ red_flower unless block ~~~ yellow_flower run scoreboard players set @e[type=ds:geyser,name="Volcanic Wall Mine",r=1,c=1] Deleter 401
execute as @e[scores={Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s unless block ~~~ air unless block ~~~ water unless block ~~~ lava unless block ~~~ fire unless block ~~~ soul_fire unless block ~~~ grass unless block ~~~ tall_grass unless block ~~~ red_flower unless block ~~~ yellow_flower run effect @s invisibility 1 10 true
execute as @e[scores={Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s unless block ~~~ air unless block ~~~ water unless block ~~~ lava unless block ~~~ fire unless block ~~~ soul_fire unless block ~~~ grass unless block ~~~ tall_grass unless block ~~~ red_flower unless block ~~~ yellow_flower run scoreboard players set @s Deleter 3
execute as @e[scores={Deleter=3},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s unless block ~~~ air unless block ~~~ water unless block ~~~ lava unless block ~~~ fire unless block ~~~ soul_fire unless block ~~~ grass unless block ~~~ tall_grass unless block ~~~ red_flower unless block ~~~ yellow_flower run tp @s ~~-200~

execute as @e[scores={n=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~~~1 air if block ~~~2 air if block ~~~2.77 air run tp @s ~~~2.77 facing ~1~~
execute as @e[scores={e=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~1~~ air if block ~2~~ air if block ~2.77~~ air run tp @s ~2.77~~ facing ~~~-1
execute as @e[scores={s=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~~~-1 air if block ~~~-2 air if block ~~~-2.77 air run tp @s ~~~-2.77 facing ~-1~~
execute as @e[scores={w=1..,Deleter=399..},type=ds:geyser,name="Volcanic Mine",r=12,c=5,tag=!erupted] at @s if block ~-1~~ air if block ~-2~~ air if block ~-2.77~~ air run tp @s ~-2.77~~ facing ~~~1
scoreboard players remove @e[scores={n=1..},type=ds:geyser,name="Volcanic Mine",r=12,c=5] n 1
scoreboard players remove @e[scores={e=1..},type=ds:geyser,name="Volcanic Mine",r=12,c=5] e 1
scoreboard players remove @e[scores={s=1..},type=ds:geyser,name="Volcanic Mine",r=12,c=5] s 1
scoreboard players remove @e[scores={w=1..},type=ds:geyser,name="Volcanic Mine",r=12,c=5] w 1

execute as @s[scores={move=4..6}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 0.7
execute as @s[scores={move=4..6}] at @s run playsound dig.grass @a ~~~ 0.2 0.25
execute as @s[scores={move=4..6}] at @s run camerashake add @a[r=7] 0.15 0.5





scoreboard players set @s[scores={move=4}] Move 2
scoreboard players set @s[scores={move=4}] Camera 2