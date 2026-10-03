scoreboard players set @s[scores={domainamp=5..,move=24..}] domainamp 4
scoreboard players set @s[scores={divergent=5..,move=24..}] divergent 4
scoreboard players set @s[scores={bluefist=5..,move=24..}] bluefist 4

playanimation @s[scores={move=40},tag=divergentfist] animation.divergent_enable

scoreboard players set @s[scores={move=32..,Stun=1..},tag=divergentfist] move 3
tag @s[scores={move=1..2},tag=divergentfist] remove divergentfist

execute as @s[scores={move=19..20},tag=divergentfist] at @s run playsound random.wither.shoot @a[r=100] ~~~ 99999 0.6 9999
execute as @s[scores={move=19..20},tag=divergentfist] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 0.6 9999
execute as @s[scores={move=19..20},tag=divergentfist] at @s run playsound mob.cursed_energy @a[r=100] ~~~ 99999 1 9999

execute as @s[scores={move=12..20},tag=divergentfist,tag=!roughce] at @s run particle ds:divergent_ac4
execute as @s[scores={move=12..20},tag=divergentfist] at @s run particle ds:divergent_ac5
execute as @s[scores={move=12..20},tag=divergentfist,tag=!roughce] at @s run particle ds:divergent_ac6


execute as @s[scores={move=12..20},tag=divergentfist,tag=roughce] at @s run particle ds:divergent_acgreen4
execute as @s[scores={move=12..20},tag=divergentfist,tag=roughce] at @s run particle ds:divergent_acgreen6

execute as @s[scores={move=1..13},tag=divergentfist,tag=!roughce,hasitem={item=ds:divergentfists,location=slot.weapon.offhand,quantity=0}] at @s run replaceitem entity @s slot.weapon.offhand 1 ds:divergentfists 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={move=1..13},tag=divergentfist,tag=roughce,hasitem={item=ds:divergentfists_green,location=slot.weapon.offhand,quantity=0}] at @s run replaceitem entity @s slot.weapon.offhand 1 ds:divergentfists_green 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={move=1..13},tag=divergentfist,tag=curse,hasitem={item=ds:divergentfists_purple,location=slot.weapon.offhand,quantity=0}] at @s run replaceitem entity @s slot.weapon.offhand 1 ds:divergentfists_purple 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={move=1..13},tag=sukuna,hasitem={item=ds:divergentfists_red,location=slot.weapon.offhand,quantity=0}] at @s run replaceitem entity @s slot.weapon.offhand 1 ds:divergentfists_red 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute as @s[scores={move=20},tag=divergentfist] at @s run particle ds:dirt2
execute as @s[scores={move=20},tag=divergentfist] at @s unless block ~~-1~ air run playsound mob.wither.break_block @a ~~~ 1 0.5
execute as @s[scores={move=20},tag=divergentfist] at @s unless block ~~-1~ air run particle ds:crater
execute as @s[scores={move=20},tag=divergentfist] at @s unless block ~~-1~ air run particle ds:rubble3

execute as @s[scores={move=22},tag=divergentfist] at @s run scoreboard objectives add divfist dummy
execute as @s[scores={move=22},tag=divergentfist] at @s run scoreboard objectives add damageinsurance dummy
execute as @s[scores={move=21..22},tag=divergentfist] at @s run  scoreboard players operation @s damageinsurance = @s damageadd
execute as @s[scores={move=20},tag=divergentfist] at @s run  scoreboard players set two endurance 2
execute as @s[scores={move=20},tag=divergentfist] at @s run  scoreboard players operation @s divfist = @s damageadd
execute as @s[scores={move=20},tag=divergentfist] at @s run  scoreboard players operation @s divfist /= two endurance
execute as @s[scores={move=20},tag=divergentfist] at @s run  scoreboard players operation @s damageadd += @s divfist
execute as @s[scores={move=20},tag=divergentfist,tag=roughce] at @s run  scoreboard players operation @s divfist /= two endurance
execute as @s[scores={move=20},tag=divergentfist,tag=roughce] at @s run  scoreboard players operation @s damageadd += @s divfist


execute as @s[scores={move=5..20},tag=divergentfist] at @s run camerashake add @a 4 0.25
execute as @s[scores={move=5..20},tag=divergentfist] at @s run scoreboard players set @s Stun 15
execute as @s[scores={move=5..20},tag=divergentfist] at @s run scoreboard players set @s Move 4
execute as @s[scores={move=5..20},tag=divergentfist] at @s run scoreboard players remove @s Energy 2

execute as @s[scores={move=20},tag=divergentfist] at @s run scoreboard players set two endurance 2
execute as @s[scores={move=20},tag=divergentfist] at @s run scoreboard objectives add divergent dummy
execute as @s[scores={move=20},tag=divergentfist] at @s run scoreboard players set @s divergent 300
execute as @s[scores={move=20},tag=divergentfist] at @s run scoreboard players operation @s divergent += @s Energy
execute as @s[scores={move=20},tag=divergentfist] at @s run scoreboard players operation @s divergent /= two endurance

scoreboard players remove @s[scores={divergent=1..}] divergent 1