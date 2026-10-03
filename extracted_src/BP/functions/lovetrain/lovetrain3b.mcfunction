playanimation @s[scores={move=28..},tag=form3b,tag=lovetrain] animation.lovetrain.joystick

event entity @s[scores={move=22..,Stun=1..},tag=form3b,tag=lovetrain] joysticktextureoff
tag @s[scores={move=22..,Stun=1..},tag=form3b,tag=lovetrain] remove form3b

event entity @s[scores={move=1..3},tag=form3b,tag=lovetrain] joysticktextureoff
tag @s[scores={move=1..2},tag=form3b,tag=lovetrain] remove form3b


event entity @s[scores={move=24..25},tag=form3b,tag=lovetrain] joystick
scoreboard players set @s[scores={move=15..17},tag=form3b,tag=lovetrain] Frames 4
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run damage @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] 13 entity_attack entity @s
execute as @s[scores={move=14},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run scoreboard players operation @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] damage += @s damageadd
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run  scoreboard players add @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] Evade 13
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run  scoreboard players add @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] Stun 25
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run scoreboard players add @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] Hit 5
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run scoreboard players add @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] knockdown 95
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^1 run camerashake add @a[r=40] 2 0.2
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^1 run playsound mob.witch.throw @a ~~~ 1 0.25
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^1 run playsound mob.wither.shoot @a ~~~ 1 0.85
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 if entity @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] run playsound mob.metal1 @a ~~~ 1 0.4
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run execute as @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run execute as @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run execute as @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run execute as @e[type=!item,type=!ds:red_reverse,tag=!Frames,r=6.49] at @s run particle ds:heavy_impact5 ~~1~
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^1 run summon ds:red_reverse
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^2.5^^2 run particle ds:ground_slam3
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^4 run particle ds:ground_slam3
execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^-2.5^^2 run particle ds:ground_slam3

execute as @s[scores={move=15},tag=form3b,tag=lovetrain] at @s positioned ^^^6.5 run execute as @e[family=projectile,r=6.49] at @s run tp @s ~ ~ ~ ~ ~180

execute as @s[scores={move=10..15},tag=form3b,tag=lovetrain] at @s run tp @s ~~~