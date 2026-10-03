
particle ds:level_up
scoreboard players operation @s Exp -= @s ExpMax
tag @s[tag=heavenlyrestriction,tag=heavenlyrestriction_mechimaru] remove heavenlyrestriction_mechimaru
tellraw @s[tag=!progidy,tag=!heavenlyrestriction,tag=!heavenlyrestriction_mechimaru] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+1 Invest Point\n§b+10 Cursed Energy\n§5>-=-------------------=-<"}]}
tellraw @s[tag=progidy,tag=!heavenlyrestriction_mechimaru] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+2 Invest Points\n§b+10 Cursed Energy\n§5>-=-------------------=-<"}]}
tellraw @s[tag=progidy,tag=heavenlyrestriction] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+2 Invest Points\n§5>-=-------------------=-<"}]}
tellraw @s[tag=!progidy,tag=heavenlyrestriction] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+1 Invest Point\n§5>-=-------------------=-<"}]}
tellraw @s[tag=!progidy,tag=heavenlyrestriction_mechimaru] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+1 Invest Points\n§b+30 Cursed Energy\n§5>-=-------------------=-<"}]}
tellraw @s[tag=progidy,tag=heavenlyrestriction_mechimaru] {"rawtext":[{"text":"§5>-=-------------------=-<\n§r§e  §lYou have levelled up!\n§r§g+2 Invest Points\n§b+30 Cursed Energy\n§5>-=-------------------=-<"}]}
scoreboard players add @s invest 1
scoreboard players add @s[tag=progidy] invest 1
scoreboard players add @s[tag=!heavenlyrestriction] EnergyCap 10
scoreboard players add @s[tag=heavenlyrestriction_mechimaru] EnergyCap 20
scoreboard players add @s ExpMax 2
scoreboard players add @s[scores={level=50..}] ExpMax 1
scoreboard players add @s[scores={level=100..}] ExpMax 1
scoreboard players add @s[scores={level=150..}] ExpMax 1
scoreboard players add @s[scores={level=200..}] ExpMax 1
scoreboard players add @s[scores={level=250..}] ExpMax 1
scoreboard players add @s level 1
scoreboard players set @s[scores={level=30}] grade 2
scoreboard players add @s[scores={level=30}] invest 5
tellraw @s[scores={level=30}] {"rawtext":[{"text":"§dYou have been promoted to: §6Grade 3§g!\n§o§cGrade 4 §e---------> §6Grade 3"}]}
scoreboard players set @s[scores={level=80}] grade 3
scoreboard players add @s[scores={level=80}] invest 5
tellraw @s[scores={level=80}] {"rawtext":[{"text":"§dYou have been promoted to: §bGrade 2§g!\n§o§6Grade 3 §e---------> §bGrade 2"}]}
scoreboard players set @s[scores={level=150}] grade 4
scoreboard players add @s[scores={level=150}] invest 5
tellraw @s[scores={level=150}] {"rawtext":[{"text":"§dYou have been promoted to: §aGrade 1§g!\n§o§bGrade 2 §e---------> §aGrade 1"}]}
scoreboard players set @s[scores={level=250}] grade 5
scoreboard players add @s[scores={level=250}] invest 5
tellraw @s[scores={level=250}] {"rawtext":[{"text":"§dYou have been promoted to: §l§5Special Grade§g!\n§o§aGrade 1 §e---------> §l§5Special Grade"}]}
playsound random.levelup @s ~~~ 1 0.5
scoreboard players set @s[scores={Exp=-999999..-1}] Exp 0