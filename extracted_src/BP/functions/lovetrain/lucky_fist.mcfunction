playanimation @s[scores={move=25}] animation.lucky_fist

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=20..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=20..,Stun=1..}] move 0

scoreboard players set @s[scores={move=16}] Frames 4
scoreboard players set @s[scores={move=16..}] Move 4

scoreboard players set @a[scores={move=15..17}] atk 2

execute as @s[scores={move=16}] at @s run scoreboard objectives add luck dummy
execute as @s[scores={move=16}] at @s run scoreboard players random @s luck 1 100
execute as @s[scores={move=1..8}] at @s run scoreboard players set @s luck 0
execute as @s[scores={move=16},tag=gambler] at @s run scoreboard players random @s luck 41 100

scoreboard players random @s[scores={move=18}] blackflashluck 1 269
scoreboard players set @s[scores={move=18},tag=blackflashrig] blackflashluck 7

execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 2 0.15


execute as @s[scores={move=27}] at @s anchored eyes positioned ^^^2.5 run playsound mob.magic2 @a[r=100] ~~~ 99999 0.4 99999

execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^2.5 run playsound mob.magic4 @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_green1
execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_green2
execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_green3
execute as @s[scores={move=15,luck=1..40}] at @s anchored eyes positioned ^^^1 run particle ds:pachinkostrike_green1
execute as @s[scores={move=15,luck=1..40}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=15,luck=1..40}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 4 override entity @s
execute as @s[scores={move=15,luck=1..40}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 8
execute as @s[scores={move=15,luck=1..40}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=15,luck=1..40}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 3

execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^2.5 run playsound mob.magic4 @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_red1
execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_red2
execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_red3
execute as @s[scores={move=15,luck=41..70}] at @s anchored eyes positioned ^^^1 run particle ds:pachinkostrike_red1
execute as @s[scores={move=15,luck=41..70}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=15,luck=41..70}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 7 override entity @s
execute as @s[scores={move=15,luck=41..70}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 11
execute as @s[scores={move=15,luck=41..70}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 28
execute as @s[scores={move=15,luck=41..70}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 3


execute as @s[scores={move=15,luck=71..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.magic4 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=15,luck=71..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15,luck=71..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shock1 @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=15,luck=71..}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=15,luck=71..90}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_gold1
execute as @s[scores={move=15,luck=71..90}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_gold2
execute as @s[scores={move=15,luck=71..90}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_gold3
execute as @s[scores={move=15,luck=71..90}] at @s anchored eyes positioned ^^^1 run particle ds:pachinkostrike_gold1
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 11 override entity @s
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Flourish 12
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 12
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 33
execute as @s[scores={move=15,luck=71..90}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 3


execute as @s[scores={move=9..15}] at @s run tp @s ~~~

execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.magic4 @a[r=100] ~~~ 99999 0.3 99999
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^2.5 run playsound mob.shock1 @a[r=100] ~~~ 99999 1.3 99999
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^2.5 run playsound random.explode @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_rainbow1
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_rainbow2
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^1 run particle ds:doorcrash_rainbow3
execute as @s[scores={move=15,luck=91..}] at @s anchored eyes positioned ^^^1 run particle ds:pachinkostrike_rainbow1
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 16 override entity @s 
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] knockdown 85
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.49] levitation 1 20 true
execute as @s[scores={move=15,luck=71..}] at @s positioned ^^^ run summon ds:red_reverse ^^^
execute as @s[scores={move=15,luck=71..}] at @s positioned ^^^ run summon ds:red_reverse ^^^
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 18
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 25
execute as @s[scores={move=15,luck=91..}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 3


scoreboard players add @s[scores={move=13,luck=41..70}] fever 1
scoreboard players add @s[scores={move=13,luck=71..90}] fever 3 
scoreboard players add @s[scores={move=13,luck=91..100}] fever 5



