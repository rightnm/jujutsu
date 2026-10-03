scoreboard players add @s[tag=inumaki] agility 5
scoreboard players add @s[tag=kamo] endurance 5 
effect @s[tag=kamo] health_boost 999999 10 true
scoreboard players add @s[tag=zenin] strength 5
scoreboard players add @s[tag=zenin] damageinsurance 1
scoreboard players add @s[tag=zenin] damageadd 1
scoreboard players add @s[tag=gojo] EnergyCap 100
tag @s add menufinal
tag @s remove noct
tag @s remove menucredits
tag @s remove menuhelp
tag @s remove menuhome
tag @s remove menutraits
tag @s remove menutechniques
tag @s remove menutrait
tag @s remove menutechnique
tag @s remove rolledtechniques
tag @s remove rollingtechniques
tag @s remove rolledtechnique
tag @s remove rollingtechnique
tag @s remove selectedtechnique1
tag @s remove selectedtechnique2
tag @s remove selectedtechnique3
stopsound @s music.menutheme
scoreboard players set @s menumusic 0
scoreboard players set @s techniquerolls 0
scoreboard players set @s common 0
scoreboard players set @s uncommon 0
scoreboard players set @s rare 0
scoreboard players set @s exotic 0
scoreboard players set @s honored 0
scoreboard players set @s detect_jump 0
scoreboard players set @s menuselect 0
clear @s ds:cursedenergy
clear @s ds:basic_combat
clear @s ds:stats_book
give @s ds:basic_combat 1 0 {"minecraft:keep_on_death":{}}
give @s ds:cursedenergy 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
give @s ds:stats_book 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

title @s actionbar §l
scoreboard players set @s menutimer2 0
scoreboard players set @s menutimer 0