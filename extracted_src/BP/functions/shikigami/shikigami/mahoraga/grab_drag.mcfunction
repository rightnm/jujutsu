playanimation @s[scores={move=60}] animation.mahoraga.grab_drag

execute as @s[scores={move=45..46}] at @s unless entity @e[tag=GrabDrag] run playanimation @s animation.armor_stand.no_pose
execute as @s[scores={move=45..46}] at @s unless entity @e[tag=GrabDrag] run scoreboard players set @s chance 0
execute as @s[scores={move=45..46}] at @s unless entity @e[tag=GrabDrag] run scoreboard players set @s move 0
execute as @s[scores={move=51..}] at @s run tp @s ~~~
execute as @s[scores={move=1..}] at @s unless block ~~~ air run tp @s ~~0.44~
execute as @s[scores={move=1..50}] at @s run tp @s @s
execute as @s[scores={move=1..50}] at @s run tp @s ^^^1
execute as @s[scores={move=21..50}] at @s unless block ^^4^2 air if entity @a[tag=griefable] run effect @s resistance 2 6 true
execute as @s[scores={move=1..50}] at @s unless block ^^4^2 air if entity @a[tag=griefable] run summon ds:lapse_explode ^^2.5^2
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Stun 40
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Evade 3
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run scoreboard players add @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run damage @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] 3
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run playsound random.explode @a ~~~ 90 1.85 90
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run playsound random.explode @a ~~~ 90 1.5 90
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a ~~~ 90 0.55 90
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run playsound mob.wither.shoot @a ~~~ 90 0.45 90
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run tag @e[r=4.49,tag=!Frames,tag=!mahoraga_tame] add GrabDrag 
execute as @s[scores={move=50}] at @s positioned ^^^4.5 run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=1..50}] at @s run playsound random.explode @a ~~~ 0.35 0.3 
execute as @s[scores={move=1..50}] at @s run playsound random.explode @a ~~~ 0.35 0.6
execute as @s[scores={move=1..50}] at @s run playsound mob.wither.break_block @a ~~~ 0.35 0.3
execute as @s[scores={move=1..50}] at @s run playsound mob.wither.break_block @a ~~~ 0.35 0.55

execute as @s[scores={move=1..50}] at @s positioned ^^^ run tp @e[tag=GrabDrag,c=1,r=40] ~~~ facing @s
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run damage @e[tag=GrabDrag,c=1] 2
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run scoreboard players add @e[tag=GrabDrag,c=1] Evade 2
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run scoreboard players set @e[tag=GrabDrag,c=1] knock 25
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run particle ds:ground_slam1
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run particle ds:ground_slam2
execute as @s[scores={move=1..50}] at @s positioned ^1.5^0.6^2 run particle ds:rubble3
execute as @s[scores={move=1..3}] at @s run tag @e remove GrabDrag