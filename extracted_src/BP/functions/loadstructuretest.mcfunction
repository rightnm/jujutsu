tickingarea add -10000 100 -10000 -10100 100 -10100 test
execute as @p positioned -10000 100 -10000 run summon ds:projectile spawntest
execute as @p positioned -10001 100 -10001 run spreadplayers ~~ 0 1 @e[name=spawntest,c=1]
execute as @p positioned -10001 100 -10001 run execute as @e[name=spawntest,c=1] at @s run structure load mystructure:trainstation ~~~
execute as @p positioned -10001 100 -10001 run execute as @e[name=spawntest,c=1] at @s run kill @e[name=spawntest]