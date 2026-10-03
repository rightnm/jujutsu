
tag @s[tag=!Frames] add Frames
tag @e[name="tempesttrg",tag=!Frames,c=1] add Frames
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:tempest_make1
execute as @s unless entity @s[scores={Deleter=0..}] run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.7 9999
execute as @s unless entity @s[scores={Deleter=0..}] run summon ds:projectile ~~~ facing ^^^10 none "tempesttrg"
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[name=tempesttrg] Deleter 75
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 70

execute as @e[name=tempesttrg] at @s run tp @s ^^^0.85
execute as @e[name=tempesttrg] at @s run tp @e[name="rampaging_tempest",c=1] ~~~

playsound mob.wind @a[r=50] ~~24~ 9999 1.5 9999
playsound mob.wind @a[r=50] ~~24~ 9999 4 9999

scoreboard players set @e[tag=!Frames,r=12] Hit 3
scoreboard players set @e[tag=!Frames,r=12] Stun 20
scoreboard players add @e[tag=!Frames,r=12] Evade 1
damage @e[tag=!Frames,r=12] 1 override
particle ds:tempest1
particle ds:large_slam3
particle ds:large_slam2

camerashake add @a[r=100] 0.1 0.07 rotational

execute as @s[scores={Deleter=1..5}] at @s run summon ds:mahoraga_knockback2
execute as @s[scores={Deleter=1..5}] at @s run effect @e[tag=!Frames,r=17] levitation 1 15 true
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players set @e[tag=!Frames,r=17] knockdown 90


execute as @s[scores={Deleter=7..}] at @s run effect @e[tag=!Frames,r=12] levitation 1 5 true
execute as @s[scores={Deleter=7..}] at @s positioned ^^5^5 run execute as @e[type=!ds:tempest,tag=!Frames,r=22,rm=11] at @s run tp @s ^^1.5^7 facing @e[name="rampaging_tempest",c=1]
execute as @s[scores={Deleter=7..}] at @s run execute as @e[type=!ds:tempest,tag=!Frames,r=17,rm=12] at @s run tp @s ~~~ ~25

execute as @s if entity @p[tag=griefable] run fill ~5~5~6~-5~-5~-6 deadbush [] replace tall_grass
execute as @s if entity @p[tag=griefable] run fill ~5~5~6~-5~-5~-6 deadbush [] replace double_plant
execute as @s if entity @p[tag=griefable] run fill ~5~5~6~-5~-5~-6 dirt [] replace grass
execute as @s if entity @p[tag=griefable] run fill ~6~5~5~-6~-5~-5 dirt [] replace grass
execute as @s unless block ~~~ air at @s if entity @p[tag=griefable] run effect @e[r=30] resistance 1 10 true
execute as @s unless block ~~~ air at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s unless block ~~~ air at @s if entity @p[tag=griefable] run effect @e[r=30] clear resistance

execute as @s positioned ~~6~ unless block ~~~ air at @s if entity @p[tag=griefable] run effect @e[r=30] resistance 1 10 true
execute as @s positioned ~~6~ unless block ~~~ air at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~1~
execute as @s positioned ~~6~ unless block ~~~ air at @s if entity @p[tag=griefable] run effect @e[r=30] clear resistance





