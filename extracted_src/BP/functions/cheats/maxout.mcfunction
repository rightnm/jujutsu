tellraw @p {"rawtext":[{"text":"§r§eYour stats have been Maxed-Out"}]}
scoreboard players set @p grade 5
scoreboard players set @p level 250
scoreboard players set @p agility 50
scoreboard players set @p endurance 100
scoreboard players set @p strength 50
scoreboard players set @p damageinsurance 10
scoreboard players set @p damageadd 10
scoreboard players set @p energystat 50
scoreboard players add @p EnergyCap 10000
scoreboard players set @p Energy 999999
effect @p health_boost 99999999 104 true
effect @p instant_health 3 20 true
playsound random.levelup @a ~~~ 1 0.5
tellraw @p {"rawtext":[{"text":"§r§aNew Agility Skill Unlocked: Flashstep, Sneak+Dash to teleport behind your opponent, but beware as they can counter this move."}]}
