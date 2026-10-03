execute as @s[tag=!sorcerer,tag=!curse] run tellraw @s {"rawtext":[{"text":"< Principle Yaga > §eGet him."}]}
scoreboard players set @a[r=10] Frames 22
execute as @s[tag=sorcerer,tag=!curse] run tellraw @s {"rawtext":[{"text":"< Principle Yaga > §eUh... you already completed the exam?"}]}
execute as @s[tag=curse] run tellraw @s {"rawtext":[{"text":"< Principle Yaga > §eUh... you're literally a curse..."}]}
execute as @s[tag=!sorcerer,tag=!curse] run tellraw @s {"rawtext":[{"text":"\n\n§5Sorcerer's Exam:\n- Defeat Principle Yaga's cursed doll to complete the exam!"}]}
execute as @s[tag=!sorcerer,tag=!curse] run summon ds:cursed_doll "Cursed Doll" ~2~~
