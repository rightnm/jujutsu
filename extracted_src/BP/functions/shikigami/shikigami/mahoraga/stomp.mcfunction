playanimation @s[scores={move=30}] animation.mahoraga.stomp
effect @s[scores={move=21..}] speed 1 7 true

execute as @s[scores={move=1..15}] at @s run tp @s ~~~
execute as @s[scores={move=15}] at @s run scoreboard players add @e[r=12,tag=!Frames,tag=!mahoraga_tame] Stun 30
execute as @s[scores={move=15}] at @s  unless entity @e[scores={ab=1..},r=12] run summon ds:mahoraga_knockback1
execute as @s[scores={move=15}] at @s run scoreboard players add @e[r=12,tag=!Frames,tag=!mahoraga_tame] Evade 16
execute as @s[scores={move=15}] at @s run scoreboard players add @e[r=12,tag=!Frames,tag=!mahoraga_tame] Hit 8
execute as @s[scores={move=15}] at @s run damage @e[r=12,tag=!Frames,tag=!mahoraga_tame] 15 entity_attack entity @s
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=90] ~~~ 9999 0.85 9999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=90] ~~~ 9999 0.45 9999
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 9999 0.5 9999
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 9999 0.75 9999
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=90] ~~~ 9999 0.75 9999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=16}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=16}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=14..15}] at @s run particle ds:crater3 ~~~
execute as @s[scores={move=15}] at @s run particle ds:large_slam1
execute as @s[scores={move=15}] at @s run particle ds:large_slam2
execute as @s[scores={move=15}] at @s run particle ds:large_slam3
execute as @s[scores={move=15}] at @s run particle ds:large_slam4