

scoreboard players add @p[scores={invest=1..},r=0.2,tag=!heavenlyrestriction,tag=!cant] energystat 1
scoreboard players add @p[scores={invest=1..},r=0.2,tag=!heavenlyrestriction,tag=!cant] EnergyCap 20
scoreboard players add @p[scores={invest=1..},r=0.2,tag=heavenlyrestriction_mechamaru,tag=!cant] EnergyCap 40

tellraw @p[scores={invest=-9999..0},tag=!cant,r=0.2] {"rawtext":[{"text":"§r§cYou do not have any §gInvest Points§c, §eLevel-Up§c to gain Invest Points."}]}

tellraw @p[scores={invest=1..},r=0.2,tag=heavenlyrestriction] {"rawtext":[{"text":"§cYou are restricted from using Cursed Energy!"}]}
tellraw @p[scores={invest=1..},r=0.2,tag=!heavenlyrestriction,tag=!cant] {"rawtext":[{"text":"\n§0╔════════════════════════╗\n"},{"text":"§0║§7You invested one point into: §bCursed Energy§f§0║\n"},{"text":"§0╚════════════════════════╝"}]}

kill @e[tag=StatsNPC,c=1,r=2]
scoreboard players set @p[scores={invest=1..},r=0.2] statopen 0
execute as @p[scores={invest=1..},r=0.2,tag=!heavenlyrestriction,tag=!cant] at @s run playsound random.levelup @a ~~~ 1 1.75
execute as @p[scores={invest=1..},r=0.2,tag=heavenlyrestriction,tag=!cant] at @s run playsound note.pling @a ~~~ 1 0.75
scoreboard players remove @p[scores={invest=1..},r=0.2,tag=!heavenlyrestriction,tag=!cant] invest 1
tellraw @p[tag=cant,r=0.2,tag=!heavenlyrestriction] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
tag @s remove cant
