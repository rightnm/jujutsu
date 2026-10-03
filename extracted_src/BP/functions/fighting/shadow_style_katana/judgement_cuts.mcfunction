playanimation @s[scores={move=9..}] animation.shadow_katana.ab4



scoreboard players set @s Move 4
scoreboard players set @s Camera 5
scoreboard players set @s Disabled 8
scoreboard players set @s[scores={wep1=0..44}] wep1 45



execute as @s[scores={move=6}] at @s positioned ^^1.5^5 run execute as @e[tag=!Frames,r=4.99] at @s run summon ds:projectile Jcut ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^5 run scoreboard players set @e[name=Jcut,r=7] Deleter 8

execute as @s[scores={move=6}] at @s run execute as @e[name=Jcut,r=10] at @s run playsound mob.jcut @a[r=20] ~~~ 0.5 1.5
tag @e[name=Jcut] add Frames

execute as @e[name=Jcut] at @s run playsound mob.slash1 @a[r=10] ~~~ 0.25 2.75
execute as @e[name=Jcut] at @s run camerashake add @a[r=10] 0.25 0.08
execute as @e[name=Jcut] at @s run tp @e[tag=!Frames,r=2.5,c=1]

execute as @s[scores={move=6}] at @s run camera @s set minecraft:free pos ^3^3^-3 facing ^-1.5^^5


execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:intersection ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts1 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts2 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts3 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts4 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts5 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts6 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run particle ds:judgement_cuts7 ~~1.5~
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run execute as @e[tag=!Frames,r=2] at @s run playsound mob.sword @a[r=10] ~~~ 0.2 2.25
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run execute as @e[tag=!Frames,r=2] at @s run playsound mob.cut @a[r=10] ~~~ 0.2 1.25
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run damage @e[tag=!Frames,r=2] 7 override
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run scoreboard players set @e[tag=!Frames,r=2] Stun 15
execute as @s[scores={move=6}] at @s positioned ^^1.5^2.5 run execute as @e[name=Jcut,c=1] at @s run scoreboard players set @e[tag=!Frames,r=2] Hit 4

execute as @s[scores={move=3..7}] at @s run tp @s ~~~

titleraw @s[scores={move=4..5}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §eCLICK §l§f>\n\n"}]}
execute as @s[scores={move=3..5}] at @s run scoreboard players add @s chance 0

execute as @s[scores={move=3..5,chance=0..4},tag=itemUse:ds:shadow_style_katana] at @s run tp @s @s
execute as @s[scores={move=3..5,chance=0..4},tag=itemUse:ds:shadow_style_katana] at @s run tp @s ^^^1.5 facing @e[scores={Hit=1..},r=5.5,rm=3]
execute as @s[scores={move=3..5,chance=0..4},tag=itemUse:ds:shadow_style_katana] at @s run tp @e[name=Jcut,c=1] ~~-100~
execute as @s[scores={move=3..5,chance=0..4},tag=itemUse:ds:shadow_style_katana] at @s run scoreboard players add @s chance 1
execute as @s[scores={move=3..5,chance=0..4},tag=itemUse:ds:shadow_style_katana] at @s run scoreboard players set @s move 10

scoreboard players set @s[scores={move=1..2}] chance 0

titleraw @s[scores={move=1..2}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§l§4<X>"}]}
tag @s[scores={move=1..2}] remove wep4