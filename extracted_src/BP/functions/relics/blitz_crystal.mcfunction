playanimation @s animation.finger_bearer.hit2

tag @s[tag=!120percent,tag=heavenlyrestriction_mechimaru,scores={agility=20..}] add cant
tag @s[tag=heavenlyrestriction_mechimaru,tag=120percent,scores={agility=24..}] add cant
tag @s[tag=!120percent,tag=!heavenlyrestriction_mechimaru,scores={agility=50..}] add cant
tag @s[tag=120percent,tag=!heavenlyrestriction_mechimaru,scores={agility=60..}] add cant

execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=19},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=23},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=49},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=59},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 1
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=!20..},tag=!120percent,tag=heavenlyrestriction_mechimaru] agility 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=!24..},tag=120percent,tag=heavenlyrestriction_mechimaru] agility 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=!50..},tag=!120percent,tag=!heavenlyrestriction_mechimaru] agility 2
execute as @p[r=0.2,tag=!cant] at @s run scoreboard players add @s[scores={agility=!60..},tag=120percent,tag=!heavenlyrestriction_mechimaru] agility 2
tellraw @p[scores={agility=25..26},tag=heavenlyrestriction,tag=!cant,r=0.2] {"rawtext":[{"text":"§r§aNew Agility Skill Unlocked: Side Flashstep"}]}
tellraw @p[scores={agility=40..41},tag=!cant,r=0.2] {"rawtext":[{"text":"§r§aNew Agility Skill Unlocked: Flashstep Counter, Sneak+Dash to teleport behind your opponent, but beware as they can counter this move."}]}
tellraw @p[r=0.2,tag=!cant] {"rawtext":[{"text":"\n§r§o§eYou crushed the crystal...\n\n§e+2 §3Agility"}]}

execute as @p[r=0.2,tag=!cant] at @s run playsound random.glass @a ~~~ 1 0.95
execute as @p[r=0.2,tag=!cant] at @s run playsound beacon.power @a ~~~ 1 2.25
tellraw @p[tag=cant,r=0.2] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
execute as @p[r=0.2,tag=!cant] at @s run particle ds:blitz_crystal1 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run particle ds:blitz_crystal2 ~~1~
execute as @p[r=0.2,tag=!cant] at @s run clear @s ds:blitz_crystal 0 1
tag @s remove cant



