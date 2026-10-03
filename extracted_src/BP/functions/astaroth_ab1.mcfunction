playanimation @s[scores={move=30}] animation.astaroth_slash1

scoreboard players set @s[scores={move=4..12}] Frames 4
scoreboard players set @s[scores={move=4..12}] Move 4

tp @s ~~~

execute as @s[scores={move=30..}] at @s run tp @s ~~3~ facing @p[m=!c]
execute as @s[scores={move=1..29}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=11..}] at @s run particle ds:rift7 ~~1~
execute as @s[scores={move=11..16}] at @s run particle ds:stars ~~1~

execute as @s[scores={move=10..28}] at @s run scoreboard players set @e[tag=itemUse:ds:dash,r=20] Frames 10
execute as @s[scores={move=10..28}] at @s run scoreboard players set @e[scores={Dash=1..},r=20] Frames 10

scoreboard players set @e[scores={move=10..11}] atk 2
execute as @s[scores={move=10}] at @s run function damages/slash_damage
execute as @s[scores={move=10}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999
execute as @s[scores={move=10}] at @s positioned ^^^15 run scoreboard players operation @e[tag=!Frames,r=14.9] damagehalf += @s damageadd
execute as @s[scores={move=10}] at @s positioned ^^^15 run scoreboard players add @e[tag=!Frames,r=14.9] Hit 2
execute as @s[scores={move=10}] at @s positioned ^^^15 run effect @e[tag=!Frames,r=14.9] levitation 1 20 true
execute as @s[scores={move=10}] at @s positioned ^^^15 run damage @e[tag=!Frames,r=14.9] 20 entity_attack entity @s
execute as @s[scores={move=10}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 2 0.2
execute as @s[scores={move=10}] at @s positioned ^^^1.5 run particle ds:ground_slam2
execute as @s[scores={move=10}] at @s positioned ^^^1.5 run particle ds:ground_slam3
execute as @s[scores={move=9..10}] at @s if entity @e[scores={Hit=1..2},r=20] run summon ds:mahoraga_knockback2
execute as @s[scores={move=10}] at @s run  particle ds:dirt2
execute as @s[scores={move=10}] at @s run  particle ds:dirt0
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.swordslash @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=11}] at @s positioned ^^^1.5 run playsound mob.slash @a[r=50] ~~~ 9999 0.35 9999
execute as @s[scores={move=11}] at @s positioned ^^^15 if entity @e[tag=!Frames,r=14.9] run playsound mob.slice @a ~~~ 
execute as @s[scores={move=11}] at @s positioned ^^^15 if entity @e[tag=!Frames,r=14.9] run playsound mob.sword @a[r=50] ~~~ 9999 0.5 9999
