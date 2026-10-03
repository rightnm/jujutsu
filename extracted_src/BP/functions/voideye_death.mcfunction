
execute unless entity @s[scores={Mode=1..}] run tellraw @a[r=200] {"rawtext":[{"text":"§l§dYou have no authority."}]}
execute unless entity @s[scores={Mode=1..}] run summon ds:void_eye
execute unless entity @s[scores={Mode=1..}] run event entity @s ds:disappear

execute if entity @s[scores={Mode=1..}] run scoreboard objectives add voideyedeath dummy
execute if entity @s[scores={Mode=1..}] run scoreboard players set @a voideyedeath 1

execute if entity @s[scores={Mode=1..}] run give @p[r=200] ds:keycard


execute if entity @s[scores={Mode=1..}] run particle ds:voideye_death
execute if entity @s[scores={Mode=1..}] run particle ds:voideye_death2
execute if entity @s[scores={Mode=1..}] run particle ds:invert
execute if entity @s[scores={Mode=1..}] run playsound mob.wither.death @a ~~~ 99999 0.5 99999
execute if entity @s[scores={Mode=1..}] run camerashake add @a[r=100] 0.25 1 rotational
execute if entity @s[scores={Mode=1..}] run event entity @s ds:disappear
