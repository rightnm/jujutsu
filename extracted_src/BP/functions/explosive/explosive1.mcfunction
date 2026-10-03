playanimation @s[scores={move=30}] animation.finger_bearer.palm_blast1

effect @s[scores={move=21..}] slowness 1 3 true

tag @s[scores={move=1..2},tag=form1] remove form1

tag @s[scores={move=25..,Stun=1..},tag=form1] remove form1
scoreboard players set @s[scores={move=26..,Stun=1..},tag=form1] move 0


execute as @s[scores={move=10}] at @s run function damages/explosion_damage

execute as @s[scores={move=26}] at @s positioned ^^^5 run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=26}] at @s positioned ^^^5 run playsound portal.trigger @a[r=90] ~~~ 99999 4 99999

execute as @s[scores={move=3..10}] at @s run tp @s ~~~

execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames] Stun 30
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames] Evade 6
execute as @s[scores={move=10}] at @s positioned ^^^5 run scoreboard players add @e[r=4.99,tag=!Frames] Hit 8
execute as @s[scores={move=10}] at @s positioned ^^^5 run damage @e[r=4.99,tag=!Frames] 12 entity_attack entity @s
execute as @s[scores={move=10}] at @s positioned ^^^1 run summon ds:knockback
execute as @s[scores={move=10}] at @s positioned ^^^5 run effect @e[r=15] resistance 1 10 true
execute as @s[scores={move=10}] at @s positioned ^^^6 run summon ds:lapse_explode ~~~
execute as @s[scores={move=10}] at @s positioned ^^^4 run summon ds:lapse_explode ~~~
execute as @s[scores={move=10}] at @s positioned ^^^2 run summon ds:lapse_explode ~~~

execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.shock1 @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=10}] at @s positioned ^^^5 run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=10}] at @s positioned ^^^5 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:fingerer_ex1 ^^1^2

