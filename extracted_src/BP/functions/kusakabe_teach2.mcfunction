scoreboard players add @a simpledomainown 0
tellraw @s[tag=!sorcerer] {"rawtext":[{"text":"§f< §gKusakabe §f> Yeah right, you're not even affiliated with us, why would I teach you anything when you haven't even passed the Sorcerer Exam?"}]}
tellraw @s[scores={simpledomainown=0},tag=sorcerer] {"rawtext":[{"text":"§f< §gKusakabe §f> Woah calm down buddy, you haven't even learned my simple domain technique."}]}

tellraw @s[scores={simpledomainown=0..,agility=0..19,strength=20..},tag=sorcerer] {"rawtext":[{"text":"§cYou cannot learn this technique as it requires §320+ Agility§c."}]}
tellraw @s[scores={simpledomainown=0..,agility=0..19,strength=0..19},tag=sorcerer] {"rawtext":[{"text":"§cYou cannot learn this technique as it requires §320+ Agility§c and §420+ Strength§c."}]}
tellraw @s[scores={simpledomainown=0..,agility=20..,strength=0..19},tag=sorcerer] {"rawtext":[{"text":"§cYou cannot learn this technique as it requires §420+ Strength§c."}]}

tellraw @s[tag=sorcerer,scores={simpledomainown=1..},hasitem={item=ds:shadow_style_katana}] {"rawtext":[{"text":"§f< §gKusakabe §f> Uh, I've already taught you?"}]}

execute as @s[tag=simpledomainquest2completed] at @s run function simple_domain_learn2


tellraw @s[tag=sorcerer,scores={simpledomainown=1..,agility=20..,strength=20..},tag=!shadowstyle] {"rawtext":[{"text":"§f< §gKusakabe §f> Heh, you want to learn my personal techniques? If you really want to I guess, however I'm not sure you'd be capable enough. I guess just go and exorcise a few High grade curses and that'll be enough.\n\n§f§l| You have been assigned a new Mission |\n§r§a- Kill 5 Grade 1 Curses§r"}]}
tag @s[tag=sorcerer,scores={simpledomainown=1..,agility=20..,strength=20..},tag=!shadowstyle] add simpledomainquest2

tellraw @s[tag=sorcerer,scores={simpledomainown=1..},tag=shadowstyle,hasitem={item=ds:shadow_style_katana,quantity=0}] {"rawtext":[{"text":"§f< §gKusakabe §f> Uh, I've already taught you? Oh you lost your katana. Idiot, take this."}]}


give @s[tag=sorcerer,scores={simpledomainown=1..},tag=shadowstyle,hasitem={item=ds:shadow_style_katana,quantity=0}] ds:shadow_style_katana  1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}