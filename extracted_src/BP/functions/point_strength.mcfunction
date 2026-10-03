tag @s[tag=!120percent,tag=heavenlyrestriction_mechimaru,scores={strength=20..}] add cant
tag @s[tag=heavenlyrestriction_mechimaru,tag=120percent,scores={strength=24..}] add cant
tag @s[tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=60..}] add cant
tag @s[tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={strength=50..}] add cant

tellraw @p[scores={invest=-9999..0},tag=!cant,r=0.2] {"rawtext":[{"text":"§r§cYou do not have any §gInvest Points§c, §eLevel-Up§c to gain Invest Points."}]}

scoreboard players add @p[scores={invest=1..},r=0.2,tag=!cant] strength2 1
scoreboard players add @p[scores={strength2=5..,strength=0..59,invest=1..},r=0.2] damageinsurance 1
scoreboard players add @p[scores={strength2=5..,strength=0..59,invest=1..},r=0.2] damageadd 1
scoreboard players remove @p[scores={strength2=5..,strength=0..59,invest=1..},r=0.2] strength2 5
scoreboard players add @p[scores={invest=1..},r=0.2,tag=!cant] strength 1
tellraw @p[scores={invest=1..},r=0.2,tag=!cant] {"rawtext":[{"text":"\n§0╔═══════════════════════╗\n"},{"text":"§0║ §7You invested one point into: §4Strength.§f    §0║\n"},{"text":"§0╚═══════════════════════╝"}]}
kill @e[tag=StatsNPC,c=1,r=2]
scoreboard players set @p[scores={invest=1..},r=0.2,tag=!cant] statopen 0
execute as @p[scores={invest=1..},r=0.2,tag=!cant] at @s run playsound random.levelup @a ~~~ 1 1.75
scoreboard players remove @p[scores={invest=1..},r=0.2,tag=!cant] invest 1

tellraw @p[tag=cant,r=0.2] {"rawtext":[{"text":"§r§cYour body has reached its limits..."}]}
tag @s remove cant

