scoreboard objectives add windup dummy
scoreboard players add @s windup 0
scoreboard players add @s windup 1

playanimation @s[scores={windup=0..49}] animation.windup
playanimation @s[scores={windup=50..149}] animation.windup2
playanimation @s[scores={windup=150..499}] animation.windup3
playanimation @s[scores={windup=500..}] animation.windup4


tellraw @s[scores={windup=50,strength=0..9}] {"rawtext":[{"text":"§r§cYou cannot contain this much power, you need to upgrade your §r§4Strength§c to 10+"}]}
scoreboard players set @s[scores={windup=49..,strength=0..9}] windup 49

tellraw @s[scores={windup=150,strength=1..24}] {"rawtext":[{"text":"§r§cYou cannot contain this much power, you need to upgrade your §r§4Strength§c to 25+"}]}
scoreboard players set @s[scores={windup=149..,strength=1..24}] windup 149

tellraw @s[scores={windup=500,strength=1..49}] {"rawtext":[{"text":"§r§cYou cannot contain this much power, you need to upgrade your §r§4Strength§c to 50+"}]}
scoreboard players set @s[scores={windup=499..,strength=1..49}] windup 499

tellraw @s[scores={windup=1001..}] {"rawtext":[{"text":"§r§cYou cannot contain any more power."}]}
scoreboard players set @s[scores={windup=1001..}] windup 1000

tellraw @s {"rawtext":[{"text":"§r§eWind-up damage stack:\n§r§l§c"},{"score":{"name":"@s","objective":"windup"}}]}


camerashake add @s 2 0.15

scoreboard players set @s ability1 100
scoreboard players set @s Disabled 25
scoreboard players remove @s Energy 50
