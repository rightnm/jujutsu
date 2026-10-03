scoreboard players add @s miracles 1
fill ~33~1~33~-33~-1~-33 stone [] replace diamond_ore
fill ~33~1~33~-33~-1~-33 stone [] replace emerald_ore
fill ~33~1~33~-33~-1~-33 netherrack [] replace ancient_debris

fill ~15~15~15~-15~-15~-15 stone [] replace diamond_ore
fill ~15~15~15~-15~-15~-15 stone [] replace emerald_ore
fill ~15~15~15~-15~-15~-15 netherrack [] replace ancient_debris
playsound random.orb @s ~~~ 9999 0.5 9999
scoreboard players set @s chance 0
tellraw @s {"rawtext":[{"text":"§d+1 Miracle"}]}

scoreboard players set @s[scores={miracles=7..}] miracles 6
