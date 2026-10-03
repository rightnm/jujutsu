summon ds:shadowrabbit  ~~~2
summon ds:shadowrabbit ~~~1
summon ds:shadowrabbit  ~-2~~
summon ds:shadowrabbit  ~3~~1
summon ds:shadowrabbit  ~~~5
summon ds:shadowrabbit  ~~~-7
summon ds:shadowrabbit  ~-3~~5
summon ds:shadowrabbit  ~~~6
summon ds:shadowrabbit ~-3~~
summon ds:shadowrabbit ~~~-4
summon ds:shadowrabbit  ~1~~-2
summon ds:shadowrabbit  ~2~~-7
summon ds:shadowrabbit  ~~~-5
summon ds:shadowrabbit ~3 ~ ~
summon ds:shadowrabbit  ~~~-6
execute as @e[type=ds:shadowrabbit,r=25] at @s unless entity @s[scores={Deleter=1..}] run scoreboard players set @s Deleter 300
execute as @e[type=ds:shadowrabbit,r=25,scores={Deleter=300}] at @s run spreadplayers ~ ~ 1 25 @s
execute as @e[type=ds:shadowrabbit,r=26,scores={Deleter=300}] at @s run scoreboard players random @s Deleter 200 300