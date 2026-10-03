scoreboard players set @s[scores={level=149..249}] level 250
scoreboard players set @s[scores={level=80..149}] level 150
scoreboard players set @s[scores={level=30..79}] level 80
scoreboard players set @s[scores={level=-999..29}] level 30
scoreboard players operation @s Exp = @s ExpMax
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
playsound random.levelup @s ~~~ 1 2
clear @s ds:promotion 0 1