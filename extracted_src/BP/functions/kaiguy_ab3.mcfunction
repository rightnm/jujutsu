playanimation @s[scores={move=40}] animation.kaiguy_fireball_big

effect @s[scores={move=20..}] slowness 1 16 true
tp @s ~~~
tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=40}] at @s run particle ds:azurefire3 ~~1~
execute as @s[scores={move=40}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 9999 0.25 9999

execute as @s[scores={move=30}] at @s run particle ds:azurefire3 ~~1~
execute as @s[scores={move=30}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 9999 0.25 9999

execute as @s[scores={move=20}] at @s run particle ds:azurefire3 ~~1~
execute as @s[scores={move=20}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 9999 0.25 9999


execute as @s[scores={move=13..}] at @s run particle ds:azure_torch1 ^-0.25^1^
execute as @s[scores={move=13..}] at @s run particle ds:azure_torch2 ^-0.25^1^
execute as @s[scores={move=13..}] at @s run particle ds:azure_torch3 ^-0.25^1^

execute as @s[scores={move=10}] at @s run summon ds:projectile ^^1^1 facing ^^^20 none azurefireball
execute as @s[scores={move=9..10}] at @s run tag @e[name=azurefireball,c=1] add bigball
execute as @s[scores={move=10}] at @s run playsound mob.blaze.shoot @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s run particle ds:azurefire3 ^^1^1 
execute as @s[scores={move=10}] at @s run camerashake add @a[r=15] 1 0.15



