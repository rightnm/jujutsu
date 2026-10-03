playanimation @s[scores={move=30}] animation.toji.sprint_push

effect @s[scores={move=30}] speed 1 3 true
effect @s[scores={move=19}] speed 0 20 true

execute as @s[scores={move=1..19}] at @s run tp @s ~~~

execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 15
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Flourish 9
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 3
execute as @s[scores={move=19}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=19}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 3 entity_attack entity @s
execute as @s[scores={move=19}] at @s run playsound random.explode @a[r=90] ~~~ 99999 1.25 99999
execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 1.25 99999
execute as @s[scores={move=19}] at @s run camerashake add @a[r=30] 1 0.15

execute as @s[scores={move=13..14}] at @s run particle ds:flashstep1 ~~-0.15~
execute as @s[scores={move=13..14}] at @s run particle ds:flashstep2 ~~-0.15~
execute as @s[scores={move=13..14}] at @s run particle ds:ground_slam2 ~~-0.15~
execute as @s[scores={move=13..14}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 2 9999

execute as @s[scores={move=12..14}] at @s positioned ^^^7 run execute as @e[scores={Stun=1..},c=1,family=!toji] at @s run tp @s @s
execute as @s[scores={move=11..13}] at @s positioned ^^^7 run execute as @e[scores={Stun=1..},c=1,family=!toji] at @s run tp @e[scores={chance=14},type=ds:toji_reawakened,c=1] ^^^1.25 facing @s

execute as @s[scores={move=11}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Stun 15
execute as @s[scores={move=11}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99] Flourish 14
execute as @s[scores={move=11}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Evade 9
execute as @s[scores={move=11}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99] Hit 3
execute as @s[scores={move=11}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.99] 3 override entity @s
execute as @s[scores={move=11}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=2.99] damage += @s damageadd
execute as @s[scores={move=11}] at @s run playsound random.shock @a[r=90] ~~~ 99999 1.75 99999
execute as @s[scores={move=11}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.95 99999
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact5 ^^1^1
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact2 ^^1^1
execute as @s[scores={move=11}] at @s run particle ds:heavy_impact3 ^^1^1
execute as @s[scores={move=11}] at @s run particle ds:ground_slam2 ^^1^1
execute as @s[scores={move=11}] at @s run camerashake add @a[r=30] 3 0.25


