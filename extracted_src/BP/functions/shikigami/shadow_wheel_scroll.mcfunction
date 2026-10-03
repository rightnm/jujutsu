 execute as @s[tag=shadow_wheel,scores={scrollanim=1}] at @s run playsound mob.wither.hurt @s ~~~ 1 0.7 1
scoreboard players set @s[tag=shadow_wheel,scores={scrollanim=6..}] Disabled 4
scoreboard players set @s[tag=shadow_wheel,scores={scrollanim=6..}] Disabled2 4

titleraw @s[tag=shadow_wheel,scores={scrollanim=6..,scroll=1}] title {"rawtext":[{"text":"\n\n        "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=6..,scroll=1}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=1}] title {"rawtext":[{"text":"\n\n  "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=1}] {"rawtext":[{"text":"§eRabbit Escape §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=2}] title {"rawtext":[{"text":"\n\n  "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=2}] title {"rawtext":[{"text":"\n\n         "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=2}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=2}] title {"rawtext":[{"text":"\n  "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=2}] {"rawtext":[{"text":"§eToad §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=3}] title {"rawtext":[{"text":"\n\n  "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=3}] title {"rawtext":[{"text":"\n\n\n      "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=3}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=3}] title {"rawtext":[{"text":"\n\n    "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=3}] {"rawtext":[{"text":"§eDivine Dogs §8have been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=4}] title {"rawtext":[{"text":"\n\n   "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=4}] title {"rawtext":[{"text":"\n\n          "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=4}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=4}] title {"rawtext":[{"text":"\n\n\n\n         "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=4}] {"rawtext":[{"text":"§eNue §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=5}] title {"rawtext":[{"text":"\n\n\n\n         "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=5}] title {"rawtext":[{"text":""}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=5}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=5}] title {"rawtext":[{"text":"\n\n "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=5}] {"rawtext":[{"text":"§eGreat Serpent §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=6}] title {"rawtext":[{"text":"\n\n "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=6}] title {"rawtext":[{"text":" "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=6}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=6}] title {"rawtext":[{"text":"\n\n\n  "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=6}] {"rawtext":[{"text":"§ePiercing Ox §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=7}] title {"rawtext":[{"text":"\n\n\n  "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=7}] title {"rawtext":[{"text":"\n  "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=7}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=7}] title {"rawtext":[{"text":"\n        "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=7}] {"rawtext":[{"text":"§eMax Elephant §8has been selected."}]}

titleraw @s[tag=shadow_wheel,scores={scrollanim=7..,scroll=8}] title {"rawtext":[{"text":"\n        "}]}
titleraw @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=8}] title {"rawtext":[{"text":"\n\n   "}]}
execute as @s[tag=shadow_wheel,scores={scrollanim=5..6,scroll=8}] at @s run playsound block.barrel.close @s ~~~ 1 1.2
titleraw @s[tag=shadow_wheel,scores={scrollanim=1..4,scroll=8}] title {"rawtext":[{"text":"\n\n   "}]}
tellraw @s[tag=shadow_wheel,scores={scrollanim=1,scroll=8}] {"rawtext":[{"text":"§eRound Deer §8has been selected."}]}

tag @s[scores={scrollanim=1}] remove shadow_wheel
scoreboard players set @s[scores={scroll=9..}] scroll 1