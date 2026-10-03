
playanimation @s animation.finger_bearer.hit2

scoreboard players add @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] Energy 2000
scoreboard players add @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] EnergyCap 30
scoreboard players add @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] energystat 1
tellraw @p[tag=!cant,r=0.2,tag=!heavenlyrestriction] {"rawtext":[{"text":"\n§r§o§eYou crushed the crystal...\n\n§e+30 §bCursed Energy"}]}

execute as @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] at @s run playsound random.glass @a ~~~ 1 1
execute as @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] at @s run playsound beacon.power @a ~~~ 1 1
tellraw @p[tag=cant,r=0.2,tag=!heavenlyrestriction] {"rawtext":[{"text":"§r§cYour body has reached it's limits..."}]}
tellraw @p[r=0.2,tag=heavenlyrestriction] {"rawtext":[{"text":"§cYou are restricted from using Cursed Energy!"}]}
execute as @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] at @s run particle ds:cursed_crystal1 ~~1~
execute as @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] at @s run particle ds:cursed_crystal2 ~~1~
execute as @p[r=0.2,tag=!cant,tag=!heavenlyrestriction] at @s run clear @s ds:cursed_crystal 0 1
tag @s remove cant



