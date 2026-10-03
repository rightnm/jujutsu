playanimation @s[scores={move=25..26}] animation.bluelemon.rushing_current

execute as @s[scores={move=22..},type=!player] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]

execute as @s[scores={move=20}] at @s run particle ds:ground_slam2

scoreboard players set @s[scores={move=7..22}] Move 6
scoreboard players set @s[scores={move=7..22}] Camera 6
execute as @s[scores={move=5..20}] at @s run tp @s ~~~
execute as @s[scores={move=5..20}] at @s run camerashake add @a[r=7] 0.1 0.09 rotational
execute as @s[scores={move=5..20}] at @s run playsound mob.witch.throw @a ~~~ 0.2 2
execute as @s[scores={move=6..20}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run tp @s ~~~ facing @e[scores={move=5..20},c=1]
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run playsound random.explode @a ~~~ 0.2 3
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run playsound mob.punch @a ~~~ 0.2 2
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run scoreboard players set @e[family=!heroic,r=2.4] Stun 45
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run scoreboard players set @e[family=!heroic,r=2.4] Hit 2
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run damage @e[family=!heroic,r=2.4] 3 suicide

execute as @s[scores={move=5}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run camerashake add @a[r=20] 4 0.15
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run playsound random.explode @a ~~~ 0.2 1
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run playsound mob.shock1 @a ~~~ 0.2 1
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run execute as @e[family=!heroic,r=2.4] at @s run particle ds:punch2 ~~1~

tag @s[scores={move=1..4}] remove wep1