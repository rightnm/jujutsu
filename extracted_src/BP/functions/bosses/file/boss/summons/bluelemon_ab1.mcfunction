playanimation @s[scores={move=25..26}] animation.bluelemon.slam


execute as @s[scores={move=22..}] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]
execute as @s[scores={move=25}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~~ 99999 1.25 99999

execute as @s[scores={move=16..20}] at @s unless entity @e[family=!heroic,scores={detect_health=0..},c=1,r=2.5] run scriptevent ds:knockback 2.5

execute as @s[scores={move=22}] at @s run particle ds:leap
execute as @s[scores={move=22}] at @s run particle ds:ground_slam2

execute as @s[scores={move=1..15}] at @s run tp @s ~~~

execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.break_block @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={move=15}] at @s run particle ds:dirt0
execute as @s[scores={move=15}] at @s run particle ds:crater2
execute as @s[scores={move=15}] at @s run particle ds:rubble3
execute as @s[scores={move=15}] at @s run particle ds:dirt2
execute as @s[scores={move=15}] at @s run particle ds:leap
execute as @s[scores={move=15}] at @s run particle ds:ground_slam1
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2
execute as @s[scores={move=15}] at @s run execute as @e[family=!heroic,r=2.6] at @s run particle ds:large_impact1
execute as @s[scores={move=15}] at @s run execute as @e[family=!heroic,r=2.6] at @s run particle ds:large_impact2
execute as @s[scores={move=15}] at @s run scoreboard players set @e[family=!heroic,r=2.6] knock 60
execute as @s[scores={move=15}] at @s run scoreboard players set @e[family=!heroic,r=2.6] Hit 5
execute as @s[scores={move=15}] at @s run damage @e[family=!heroic,r=2.6] 10 suicide

execute as @s[scores={move=10..12}] at @s if entity @e[family=!heroic,r=2.6,scores={knock=1..}] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..}] animation.bluelemon.slam2
execute as @s[scores={move=1000..}] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]

execute as @s[scores={move=995}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §1Blue Lemon §r§f> ez"}]}
execute as @s[scores={move=996}] at @s run playsound camera.take_picture @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={move=993}] at @s run playsound camera.take_picture @a[r=100] ~~1~ 99999 1 99999 
execute as @s[scores={move=992}] at @s run playsound camera.take_picture @a[r=100] ~~1~ 99999 1 99999 
execute as @s[scores={move=990}] at @s run playsound camera.take_picture @a[r=100] ~~1~ 99999 1 99999 


scoreboard players set @s[scores={move=970..975}] move 3 