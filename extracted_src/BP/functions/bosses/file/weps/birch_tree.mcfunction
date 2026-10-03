scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] BasicM1 61
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] Disabled2 120

execute as @s[tag=!birch_tree] at @s run playsound mob.tree1 @a[r=50] ~~1~ 99999 1 99999
tag @s[tag=!birch_tree] add birch_tree

playanimation @s[scores={BasicM1=0}] animation.birch_tree
playanimation @s[scores={BasicM1=60}] animation.birch_tree_hit

effect @s[scores={BasicM1=1..}] slowness 1 3 true

execute as @s[scores={BasicM1=60}] at @s run playsound mob.tree2 @a[r=50] ~~1~ 99999 1 9999

execute as @s[scores={BasicM1=28..33}] at @s run scriptevent ds:knockback 1

scoreboard players set @s[scores={BasicM1=28..31}] Frames 5
scoreboard players set @s[scores={BasicM1=15..31}] Move 6
execute as @s[scores={BasicM1=28}] at @s positioned ^^^5 run damage @e[family=!heroic,tag=!Frames,r=6] 400 suicide
execute as @s[scores={BasicM1=28}] at @s positioned ^^^5 run scoreboard players set @e[family=!heroic,tag=!Frames,r=6] Stun 28
execute as @s[scores={BasicM1=28}] at @s positioned ^^^5 run scoreboard players set @e[family=!heroic,tag=!Frames,r=6] knockdown 90
execute as @s[scores={BasicM1=28}] at @s positioned ^^^5 run scoreboard players set @e[family=!heroic,tag=!Frames,r=6] Hit 5
execute as @s[scores={BasicM1=36}] at @s run playsound mob.heavy_swing @a[r=50] ~~1~ 99999 1 9999
execute as @s[scores={BasicM1=28}] at @s positioned ^^^5 run camerashake add @a[r=10] 2 0.3 rotational

execute as @s[scores={BasicM1=15..31}] at @s run tp @s @s

execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:crater2
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:ground_slam1
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:ground_slam2
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:ground_slam3
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:dirt2
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run particle ds:dirt0
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run playsound mob.wither.break_block @a ~~~ 99999 0.5 999999
execute as @s[scores={BasicM1=28}] at @s positioned ^^^2.5 unless block ~~-1~ air run playsound random.explode @a ~~~ 99999 0.5 999999