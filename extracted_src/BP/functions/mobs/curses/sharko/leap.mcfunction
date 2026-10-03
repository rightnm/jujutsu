playanimation @s[scores={move=20}] animation.sharko.leap

execute as @s[scores={move=13}] at @s run particle ds:leap
execute as @s[scores={move=13}] at @s run particle ds:ground_slam1
execute as @s[scores={move=13}] at @s run particle ds:ground_slam2
execute as @s[scores={move=13}] at @s run particle ds:ground_slam3
execute as @s[scores={move=13}] at @s run particle ds:rubble3
execute as @s[scores={move=13}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=13}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=13}] at @s run tp @s ~~7~
effect @s[scores={move=1..10}] resistance 1 20 true

execute as @s[scores={move=10}] at @s run execute as @e[scores={combat=1..},family=!purecurse,c=1] at @s run tp @e[type=ds:sharko,scores={move=9..11},c=1] ~~17~ facing @s 