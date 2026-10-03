playanimation @s[scores={move=10..}] animation.dismantle1


execute as @s[scores={move=6}] at @s run scoreboard objectives add dismantle_rot dummy
execute as @s[scores={move=5}] at @s positioned ^^1^1 run scriptevent ds:dismantle
execute as @s[scores={move=4..5}] at @s positioned ^^1^1 run scoreboard players set @e[type=ds:dismantle,c=1] Deleter 25
execute as @s[scores={move=4..5}] at @s positioned ^^1^1 run scoreboard players set @e[type=ds:dismantle,c=1] dismantle_rot 0
execute as @s[scores={move=5}] at @s positioned ^^1^1 run effect @a[r=20] blindness 1 1 true
execute as @s[scores={move=3}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true

execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=5}] at @s positioned ^^1^4 run playsound mob.slash @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=5}] at @s positioned ^^1^4 run playsound mob.dismantle @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=5}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.1 0.08

tag @s[scores={move=1..2}] remove form1s