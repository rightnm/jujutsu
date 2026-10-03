playanimation @s[scores={move=35}] animation.finger_bearer.slam

scoreboard players set @s[scores={move=21..,Stun=1..}] move 3
execute as @s[scores={move=3..}] at @s run tp @s ~~~

execute as @s[scores={move=20}] at @s run function damages/blunt_damage

tag @s[scores={move=15..20}] add Frames
tag @s[scores={move=1..14}] remove Frames

execute as @s[scores={move=20}] at @s positioned ~~1~ run scoreboard players add @e[r=7.5,tag=!Frames] Evade 5
execute as @s[scores={move=20}] at @s positioned ~~1~ run scoreboard players add @e[r=7.5,tag=!Frames] Hit 8
execute as @s[scores={move=20}] at @s positioned ~~1~ run damage @e[r=7.5,tag=!Frames] 12 entity_attack entity @s
execute as @s[scores={move=20}] at @s unless entity @e[scores={ab=1..},r=7,rm=0.2] run summon ds:boss_knockback1

execute as @s[scores={move=20}] at @s positioned ~~1~ run playsound mob.shock1 @a[r=90] ~~~ 99999 0.5 99999
execute as @s[scores={move=20}] at @s positioned ~~1~ run playsound mob.wither.break_block @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={move=20}] at @s positioned ~~1~ run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={move=20}] at @s positioned ~~1~ run playsound random.explode @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=1..20}] at @s run title @a[r=33,tag=!impactframesoff] title 

execute as @s[scores={move=20}] at @s positioned ~~1~ run camerashake add @a[r=30] 4 0.35
execute as @s[scores={move=20}] at @s run particle ds:dirt0
execute as @s[scores={move=20}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=20}] at @s run particle ds:ground_slam4 ~~~
execute as @s[scores={move=20}] at @s run particle ds:leap ~~~
execute as @s[scores={move=20}] at @s run particle ds:rubble3
execute as @s[scores={move=20}] at @s unless block ~~-0.5~ air run particle ds:crater2 ~~~
