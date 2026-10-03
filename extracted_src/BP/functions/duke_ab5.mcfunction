playanimation @s[scores={move=100..}] animation.cyclone_bomb

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=100..}] at @s run tp @s ~~8~

execute as @s[scores={move=21..}] at @s run particle ds:cyclone_bomb1 ~~10~
execute as @s[scores={move=21..90}] at @s run particle ds:cyclone_bomb2 ~~10~
execute as @s[scores={move=21..80}] at @s run particle ds:cyclone_bomb3 ~~10~
execute as @s[scores={move=21..70}] at @s run particle ds:cyclone_bomb4 ~~10~
execute as @s[scores={move=21..60}] at @s run particle ds:cyclone_bomb5 ~~10~
execute as @s[scores={move=21..91}] at @s run playsound mob.wither.shoot @a ~~30~ 999999 2.5 999999
execute as @s[scores={move=21..91}] at @s run playsound mob.wither.shoot @a ~~30~ 999999 0.5 999999
execute as @s[scores={move=21..91}] at @s run playsound mob.wind @a ~~30~ 999999 2.5 999999
execute as @s[scores={move=21..91}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=20}] at @s run summon ds:projectile cyclonebomb ~~10~
execute as @s[scores={move=20}] at @s run execute as @p[r=150] at @s run summon ds:projectile cyclonebombtrg ~~~
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=cyclonebomb,c=1] Deleter 51
execute as @s[scores={move=15..20}] at @s run scoreboard players set @e[name=cyclonebombtrg,c=1] Deleter 51