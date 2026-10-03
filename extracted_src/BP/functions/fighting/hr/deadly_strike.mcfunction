playanimation @s[scores={move=25}] animation.deadly_strike

tag @s[scores={move=1..2}] remove wep1

scoreboard players set @s[scores={move=19}] Frames 8
scoreboard players set @s[scores={move=16..}] Move 4

scoreboard players set @a[scores={move=15..17}] atk 2


execute as @s[scores={move=1..17}] at @s run tp @s ~~~
scoreboard players set @s punch 0

execute as @s[scores={move=15}] at @s run function damages/blunt_damage

execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact1
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact2
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run particle ds:heavy_impact5
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=17..19}] at @s anchored eyes positioned ^^^2.5 run titleraw @a[r=2.49,tag=!wep1] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}

execute as @s[scores={move=15..19}] at @s run scoreboard objectives add clash dummy
execute as @s[scores={move=16..19}] at @s run scoreboard players set @s clash 2

execute as @s[scores={move=15..18}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,scores={punch=1..}] add deadlystrikeclash2
execute as @s[scores={move=15..18}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,scores={punch=1..}] run tag @s add deadlystrikeclash
execute as @s[scores={move=15..18}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,scores={punch=1..}] run scoreboard players set @s cutscene 51
execute as @s[scores={move=15..18}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49,scores={punch=1..}] cutscene 51
execute as @s[scores={move=15..18}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.49,scores={punch=1..}] run scoreboard players set @s move 2

execute as @s[scores={move=16},tag=!deadlystrikeclash] at @s positioned ^^^1.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=16},tag=!deadlystrikeclash] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=16},tag=!deadlystrikeclash] at @s positioned ^^^1.5 run playsound random.explode @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=16},tag=!deadlystrikeclash] at @s positioned ^^^1.5 run playsound mob.shock1 @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^1.5 run tag @e[tag=!Frames,r=2.49] add hardknockback
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=2.49] damage += @s damageadd
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 12 override entity @s
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.49] levitation 1 1 true
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Evade 14
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] knockdown 95
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=2.49] Stun 40
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Hit 10
execute as @s[scores={move=15},tag=!deadlystrikeclash] at @s run summon ds:red_reverse ~~~
