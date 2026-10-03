playanimation @s[scores={move=15}] animation.reversal_red3

tag @e[scores={move=1..2}] remove form3b

scoreboard players set @s[scores={move=1..7}] Frames 4

execute as @s[scores={move=5}] at @s run camerashake add @a[r=15] 0.1 0.1


execute as @s[scores={move=5}] at @s run camera @a[r=20] fade time 0.1 0 1 color 255 75 75

execute as @s[scores={move=11}] at @s run playsound mob.red1 @a ~~~  100000 1.15 100000
execute as @s[scores={move=6}] at @s run playsound mob.shock2 @a ~~~  100000 1.15 100000
execute as @s[scores={move=6}] at @s run playsound mob.shock1 @a ~~~  100000 1.25 100000

execute as @s[scores={move=5}] at @s run camerashake add @a[r=40] 3 0.15

execute as @s[scores={move=5}] at @s run execute as @e[r=5,tag=!Frames] at @s run tp @s
execute as @s[scores={move=5}] at @s run execute as @e[r=5,tag=!Frames] at @s run tp @s ~~~ facing @p[scores={move=1..5}]
execute as @s[scores={move=5}] at @s run damage @e[r=5,tag=!Frames] 3 none entity @s

execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run effect @s levitation 1 35 true

