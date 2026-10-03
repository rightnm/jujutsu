

dialogue open @p none
execute as @p[tag=!sorcerer,tag=!curse,r=5] run tellraw @s {"rawtext":[{"text":"< Principle Yaga > §eYou must pass the sorcerer's exam!"}]}
scoreboard players set @p[tag=sorcerer,tag=!curse,r=5] guitimer 11

