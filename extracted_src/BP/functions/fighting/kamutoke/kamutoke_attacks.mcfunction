execute as @s[tag=kamutoke,scores={move=1..},tag=wep1] run function fighting/kamutoke/lightning_strike
execute as @s[tag=kamutoke,scores={move=1..},tag=wep2] run function fighting/kamutoke/storm_slice
execute as @s[tag=kamutoke,scores={move=1..},tag=wep3] run function fighting/kamutoke/electrified_discharge
execute as @s[tag=kamutoke,scores={move=1..},tag=wep4] run function fighting/kamutoke/electro_beam
execute if entity @s[tag=kamutoke] as @e[name="lightning_strike"] at @s run function fighting/kamutoke/lightning