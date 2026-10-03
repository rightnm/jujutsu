
playsound mob.shock1 @a[r=100] ~~~ 999999 3 999999
playsound mob.shock1 @a[r=100] ~~~ 999999 3.5 999999
playsound mob.slash1 @a[r=100] ~~~ 999999 1.75 999999
playsound mob.slice @a[r=100] ~~~ 999999 0.95 999999
camerashake add @a[r=10] 0.25 0.1 rotational
camerashake add @a[r=10] 0.3 0.25 rotational
particle ds:carve1 ~~1~
particle ds:carve2 ~~1~
particle ds:carve3 ~~1~
particle ds:carve4 ~~1~
particle ds:carve5 ~~1~
damage @s 30 override
scoreboard players set @s Stun 30
scoreboard players set @s Hit 10
scoreboard players add @s Evade 10
scoreboard players add @p[tag=sukuna,rm=1] fuga 3
scoreboard players operation @s damage += @e[tag=sukuna,scores={move=1..10},c=1] damageadd
scoreboard players operation @s damagehalf += @s strength
execute as @p positioned ^^^4 run function damages/cleave_damage
execute as @s[scores={damage=25..}] run particle ds:bloodbath