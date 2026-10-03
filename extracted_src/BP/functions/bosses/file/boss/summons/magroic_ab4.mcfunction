playanimation @s[scores={move=20..}] animation.magroic.ab3

tp @s ~~~

execute as @s[scores={move=12..15}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=12..15}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=12..15}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=12..15}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999
execute as @s[scores={move=6}] at @s run spreadplayers ~~ 20 23 @s
execute as @s[scores={move=4..5}] at @s run particle ds:mag_tp1 ~~~
execute as @s[scores={move=4..5}] at @s run particle ds:mag_tp2 ~~~
execute as @s[scores={move=4..5}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=4..5}] at @s run playsound mob.phantom.idle @a[r=100] ~~~ 9999 0.4 9999