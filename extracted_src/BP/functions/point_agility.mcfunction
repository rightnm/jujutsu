

tag @s[tag=!120percent,tag=heavenlyrestriction_mechimaru,scores={agility=20..}] add cant
tag @s[tag=heavenlyrestriction_mechimaru,tag=120percent,scores={agility=24..}] add cant
tag @s[tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={agility=50..}] add cant
tag @s[tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={agility=60..}] add cant

tellraw @p[scores={invest=-9999..0},tag=!cant,r=0.2] {"rawtext":[{"text":"§r§cYou do not have any §gInvest Points§c, §eLevel-Up§c to gain Invest Points."}]}

scoreboard players add @p[scores={invest=1..},r=0.2,tag=!cant] agility 1
tellraw @p[scores={agility=25},tag=heavenlyrestriction,tag=!cant,r=0.2] {"rawtext":[{"text":"§r§aNew Agility Skill Unlocked: Side Flashstep"}]}
tellraw @p[scores={agility=40},tag=!cant,r=0.2] {"rawtext":[{"text":"§r§aNew Agility Skill Unlocked: Flashstep Counter, Sneak+Dash to teleport behind your opponent, but beware as they can counter this move."}]}
tellraw @p[scores={invest=1..},r=0.2,tag=!cant] {"rawtext":[{"text":"\n§0╔═══════════════════════╗\n"},{"text":"§0║ §7You invested one point into: §3Agility. §f       §0║\n"},{"text":"§0╚═══════════════════════╝"}]}
kill @e[tag=StatsNPC,c=1,r=2,tag=!cant]
scoreboard players set @p[scores={invest=1..},r=0.2,tag=!cant] statopen 0
execute as @p[scores={invest=1..},r=0.2,tag=!cant] at @s run playsound random.levelup @a ~~~ 1 1.75
scoreboard players remove @p[scores={invest=1..},r=0.2,tag=!cant] invest 1
tellraw @p[tag=cant,r=0.2] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
tag @s remove cant



