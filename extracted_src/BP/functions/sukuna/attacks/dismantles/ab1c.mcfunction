

execute as @s[scores={move=4}] at @s anchored eyes run scriptevent ds:dismantle_small
execute as @s[scores={move=3}] at @s anchored eyes positioned ^^^4 run function sukuna/attacks/dismantle_small
execute as @s[scores={move=3}] at @s positioned ^^1^1 run playsound mob.slash @a[r=10] ~~~ 0.05 3
execute as @s[scores={move=3}] at @s positioned ^^1^1 run playsound mob.witch.throw @a[r=10] ~~~ 0.15 1
execute as @s[scores={move=3}] at @s positioned ^^1^1 run camerashake add @a[r=20] 0.1 0.08

tag @s[scores={move=1..2}] remove form1sc