execute as @s[name=DogSummonW] at @s run summon ds:white_wolf "Light Divine Dog" ~~~
execute as @s[name=DogSummonB] at @s run summon ds:black_wolf "Shadow Divine Dog" ~~~
effect @e[tag=divinedogs,c=2] speed 99999991 1 true
scoreboard players set @e[type=ds:white_wolf,c=1] Deleter 2400
scoreboard players set @e[type=ds:black_wolf,c=1] Deleter 2400
camerashake add @a[r=15] 0.2 1




