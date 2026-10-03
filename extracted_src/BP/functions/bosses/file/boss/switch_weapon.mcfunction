playanimation @s[scores={move=60..}] animation.primesoul.weapon_switch


execute as @s[scores={move=50}] at @s run playsound beacon.activate @a[r=200] ~~~ 99999 1.4 99999
execute as @s[scores={move=50}] at @s run playsound mob.fuga_hands @a[r=200] ~~~ 99999 2.4 99999

execute as @s[scores={move=18}] at @s run function bosses/file/boss/switch_wep_dialogue
execute as @s[scores={move=34}] at @s run scoreboard objectives add scroll dummy
execute as @s[scores={move=33..34}] at @s run scoreboard players add @s scroll 0
execute as @s[scores={move=33..34}] at @s run scoreboard players set @s[scores={scroll=0}] scroll 1
execute as @s[scores={move=31}] at @s run scoreboard players add @s scroll 1

execute as @s[scores={move=30..31,scroll=1}] at @s run event entity @s primekatana_off
execute as @s[scores={move=29..30,scroll=1}] at @s run event entity @s scythe
execute as @s[scores={move=30,scroll=2}] at @s run event entity @s sword
execute as @s[scores={move=30,scroll=3}] at @s run event entity @s spear
execute as @s[scores={move=30,scroll=4}] at @s run event entity @s primekatana_sheathed
execute as @s[scores={move=25..33,scroll=4}] at @s run particle ds:shard_make1 ^0.4^1^0.22
execute as @s[scores={move=25..33,scroll=4}] at @s run particle ds:shard_make2 ^0.4^1^0.22
execute as @s[scores={move=25..33,scroll=4}] at @s run particle ds:shard_make3 ^0.4^1^0.22

scoreboard players set @s[scores={scroll=5..}] scroll 1


scoreboard players set @s[scores={move=1..4}] invest 0
tag @s[scores={move=1..4}] remove switchingwep