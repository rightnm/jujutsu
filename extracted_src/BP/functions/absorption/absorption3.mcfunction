playanimation @s[scores={move=7..8}] animation.absorption.ab3

tag @e[scores={move=1..2}] remove form3

scoreboard players set @s[scores={move=1..6}] Frames 4

execute as @s[scores={move=6}] at @s run playsound mob.electricity @a ~~~  100000 1.15 100000
execute as @s[scores={move=6}] at @s run playsound mob.shock1 @a ~~~  100000 1.25 100000

execute as @s[scores={move=5}] at @s run camerashake add @a[r=40] 3 0.15

execute as @s[scores={move=5}] at @s run execute as @e[r=5,tag=!Frames] at @s run tp @s
execute as @s[scores={move=5}] at @s run execute as @e[r=5,tag=!Frames] at @s run tp @s ~~~ facing @p[scores={move=1..5}]
execute as @s[scores={move=5}] at @s run damage @e[r=5,tag=!Frames] 3 none entity @s

execute as @s[scores={move=5}] at @s run  particle ds:absorption_ex ~~~
execute as @s[scores={move=5}] at @s run  particle ds:power_leap1 ~~~
execute as @s[scores={move=5}] at @s run  particle ds:power_leap2 ~~~
execute as @s[scores={move=5}] at @s run  particle ds:power_leap3 ~~~

execute as @s[scores={move=1..7}] at @s run scoreboard players remove @s[scores={absorption=1..}] absorption 1
execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run  summon ds:knockback ~~~
execute as @s[scores={move=5}] at @s run effect @s levitation 1 35 true

