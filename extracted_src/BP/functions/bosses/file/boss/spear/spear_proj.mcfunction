execute unless entity @e[name=spearulttrg1,scores={Deleter=0..}] run scoreboard players set @e[name=spearult1trg1,scores={Deleter=0..}] Deleter 27
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 27

execute as @s[name=spearult1] at @s run tp @s ^^^5 facing @e[name=spearult1trg,c=1]
execute as @s[name=spearult1b] at @s run tp @s ^^^5 facing @e[name=spearult1trg2,c=1]
execute as @s[name=spearult1c] at @s run tp @s ^^^5 facing @e[name=spearult1trg3,c=1]


particle ds:white_lightning1
particle ds:large_impact1
particle ds:large_impact2

execute as @e[name=spearult1trg] at @s run particle ds:primesoul_trg1 ~ 240.1 ~
execute as @e[name=spearult1trg2] at @s run particle ds:primesoul_trg1 ~ 240.1 ~
execute as @e[name=spearult1trg3] at @s run particle ds:primesoul_trg1 ~ 240.1 ~

execute as @s[name=spearult1] if entity @e[name=spearult1trg,r=4] run scoreboard players set @s[scores={Deleter=6..}] Deleter 5
execute as @s[name=spearult1b] if entity @e[name=spearult1trg2,r=4] run scoreboard players set @s[scores={Deleter=6..}] Deleter 5
execute as @s[name=spearult1c] if entity @e[name=spearult1trg3,r=4] run scoreboard players set @s[scores={Deleter=6..}] Deleter 5

execute as @s[scores={Deleter=3..4}] at @s run particle ds:white_lightning_big
execute as @s[scores={Deleter=3..4}] at @s run particle ds:dirt4
execute as @s[scores={Deleter=3..4}] at @s run particle ds:storm_spear_ex1
execute as @s[scores={Deleter=3..4}] at @s run particle ds:storm_spear_ex2
execute as @s[scores={Deleter=3..4}] at @s run particle ds:storm_spear_ex3
execute as @s[scores={Deleter=3..4}] at @s run particle ds:storm_spear_ex4
execute as @s[scores={Deleter=3..4}] at @s run particle ds:storm_spear_ex5
execute as @s[scores={Deleter=3..4}] at @s run particle ds:reality_crater1 ~ 240.1 ~
execute as @s[scores={Deleter=3..4}] at @s run particle ds:reality_crater2 ~ 240.1 ~
execute as @s[scores={Deleter=3..4}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={Deleter=3..4}] at @s run particle ds:invert
execute as @s[scores={Deleter=3..4}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=3..4}] at @s run playsound mob.wither.break_block @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=3..4}] at @s run playsound ambient.weather.thunder @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=3..4}] at @s run playsound item.trident.throw @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={Deleter=3..4}] at @s run damage @e[tag=!Frames,r=15,family=!heroic] 40 suicide
execute as @s[scores={Deleter=3..4}] at @s run tag @e[tag=!Frames,r=15,family=!heroic] add hltn
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players set @e[tag=!Frames,r=15,family=!heroic] Hit 5
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players set @e[tag=!Frames,r=15,family=!heroic] shocked 15
execute as @s[scores={Deleter=3..4},name=spearult1] at @s run kill @e[name=spearult1trg,c=1]
execute as @s[scores={Deleter=3..4},name=spearult1b] at @s run kill @e[name=spearult1trg2,c=1]
execute as @s[scores={Deleter=3..4},name=spearult1c] at @s run kill @e[name=spearult1trg3,c=1]
execute as @s[scores={Deleter=1..2},name=spearult1c] at @s run kill @s