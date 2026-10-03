playanimation @s[scores={move=20..21}] animation.kamutoke_ab1

scoreboard players set @s[scores={move=19..}] Move 17

execute as @s[scores={move=10}] at @s positioned ^^^20 run execute as @e[family=!damage,family=!despawncito,family=!projectile,type=!ds:negative_field,type=!item,type=!xp_orb,r=19,c=3] at @s run function fighting/kamutoke/lightning_spawn
execute as @s[scores={move=10}] at @s positioned ^^^40 run execute as @e[family=!damage,family=!despawncito,family=!projectile,type=!ds:negative_field,type=!item,type=!xp_orb,r=19,c=3] at @s run function fighting/kamutoke/lightning_spawn
execute as @s[scores={move=10}] at @s positioned ^^^60 run execute as @e[family=!damage,family=!despawncito,family=!projectile,type=!ds:negative_field,type=!item,type=!xp_orb,r=19,c=3] at @s run function fighting/kamutoke/lightning_spawn

execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run particle ds:kamutoke_counter1 ~~~
execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run particle ds:kamutoke_counter2 ~~~
execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run particle ds:kamutoke_counter3 ~~~
execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run particle ds:kamutoke_counter4 ~~~
execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run camerashake add @a[r=10] 2 0.08
execute as @s[scores={move=18}] at @s anchored eyes  positioned ^0.4^0.5^ run playsound beacon.power @a[r=100] ~~~ 9999 3 9999

execute as @s[scores={move=11}] at @s anchored eyes  positioned ^0.4^0.5^ run playsound mob.witch.throw @a[r=100] ~~~ 9999 1.5 9999

tag @s[scores={move=1..2}] remove wep1