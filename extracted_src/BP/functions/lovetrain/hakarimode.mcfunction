tag @s[scores={antiheal=1..}] add cantheal

tag @s[tag=!fistenergy] add fistenergy

scoreboard players remove @s[type=!player,scores={hakarimode=1..}] hakarimode 1
execute unless entity @s[scores={countdown1=0..}] run scoreboard objectives add countdown1 dummy
execute unless entity @s[scores={countdown2=0..}] run scoreboard objectives add countdown2 dummy
execute unless entity @s[scores={countdown1=0..}] run scoreboard players add @s countdown1 0
execute unless entity @s[scores={countdown2=0..}] run scoreboard players add @s countdown2 0
scoreboard players remove @s[scores={countdown1=1..}] countdown1 1
scoreboard players remove @s[scores={countdown2=1..}] countdown2 1
scoreboard players set @s[scores={countdown1=-9999..-1}] countdown1 1

replaceitem entity @s[scores={countdown1=0},hasitem={item=ds:hakarimode,location=slot.weapon.offhand,quantity=0}] slot.weapon.offhand 1 ds:hakarimode 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
scoreboard players set @s[scores={countdown1=0}] countdown1 30

execute as @s[scores={countdown2=0}] at @s run playsound music.tukadonka @a[r=44]
scoreboard players set @s[scores={countdown2=0}] countdown2 1420

execute as @s[scores={hakarimode=-99999..1}] at @s run stopsound @a music.tukadonka
execute as @s[scores={hakarimode=-99999..1}] at @s run scoreboard players set @a[scores={hakarimode=2..}] countdown2 0

execute as @s[scores={countdown1=20}] at @s run camerashake add @a[r=44] 0.25 0.15
execute as @s[scores={countdown1=10}] at @s run camerashake add @a[r=44] 0.25 0.15

scoreboard players add @s domainCD 1
scoreboard players set @s divergent 40
scoreboard players set @s divergentfistCD 40
effect @s[scores={countdown1=0},tag=!cantheal] instant_health 1 2 true
effect @s[scores={countdown1=10},tag=!cantheal] instant_health 1 2 true

effect @s[scores={Disabled=0,Disabled2=0}] regeneration 2 20 true
effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0,detect_sprint=1..}] speed 1 12 true
effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0,detect_sprint=1..}] jump_boost 1 4 true
scoreboard players set @s reversecursedCD 40
scoreboard players add @s Energy 20



execute as @s[scores={hakarimode=-9999..1}] at @s run playsound random.fizz @a ~~~
execute as @s[scores={hakarimode=-9999..1}] at @s run particle ds:divergent_greenac5 
execute as @s[scores={hakarimode=-9999..1}] at @s run particle ds:divergent_greenac6
execute as @s[scores={hakarimode=-9999..2,countdown1=!0}] at @s run scoreboard players set @s countdown1 0
execute as @s[scores={hakarimode=-9999..2,countdown2=!0}] at @s run scoreboard players set @s countdown2 0
clear @s[scores={hakarimode=-9999..1}] ds:divergentfists_green
clear @s[scores={hakarimode=-9999..1}] ds:hakarimode
replaceitem entity @s[type=!player,scores={hakarimode=-9999..1}] slot.weapon.offhand 1 air

tag @s remove cantheal