playanimation @s[scores={move=12..}] animation.dismantle_spam

effect @s[scores={move=11..}] slow_falling 1 1 true

execute as @s[scores={move=1..10}] at @s positioned ^^1^1 run scriptevent ds:dismantle_quick
execute as @s[scores={move=10}] at @s positioned ^^1^1 run effect @a[r=20] blindness 1 1 true
execute as @s[scores={move=8}] at @s positioned ^^1^1 run effect @a[r=20] blindness 0 20 true

execute as @s[scores={move=5}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=1..10}] at @s positioned ^^1^4 run playsound mob.slash @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={move=1..10}] at @s positioned ^^1^4 run playsound mob.dismantle @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=1..10}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.1 0.08

tag @s[scores={move=1..2}] remove form2sb