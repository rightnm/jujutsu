playanimation @s[scores={move=20}] animation.kaiguy_punch

effect @s[scores={move=11..}] slowness 1 3 true

scoreboard players set @s[scores={move=11}] atk 2

execute as @s[scores={move=11}] run execute as @a[scores={punch=1..},r=4] at @s positioned ^^1^0.25 run function parry

execute as @s[scores={move=10}] at @s positioned ^^1^1 run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:heavy_impact5 ~~~
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:ground_slam2 ~~~

execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:azure_fire1
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:azure_fire2
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:azure_fire3
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:rift_azure1 
execute as @s[scores={move=10}] at @s positioned ^^1^1 run particle ds:rift_azure2
execute as @s[scores={move=10}] at @s positioned ^^1^1 run playsound mob.burn @a ~~~ 0.1 1.25

execute as @s[scores={move=11}] at @s positioned ^^1^1 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=9..13}] at @s positioned ^^1^4 run execute as @e[tag=!Frames,r=3.99] at @s run tp @s ~~~ facing @e[type=ds:kaiguy,c=1]

execute as @s[scores={move=11}] at @s positioned ^^1^4 run execute as @e[tag=!Frames,r=3.99] at @s run playsound mob.punch1 @a[r=50] ~~~ 9999 1 9999

execute as @s[scores={move=10}] at @s positioned ^^1^4 run execute as @e[tag=!Frames,r=3.99] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999

execute as @s[scores={move=10}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=3.99] 12 suicide
execute as @s[scores={move=10}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=3.99] Flourish 5
execute as @s[scores={move=10}] at @s positioned ^^^4 run tag @e[tag=!Frames,r=3.99] add bluefire
execute as @s[scores={move=10}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=3.99] onfire 30

scoreboard players set @s[scores={move=1..3}] chance 0

