execute as @p[r=15] if block ~~1~ air run summon ds:projectile cursedcavern ~~1~
execute as @p[r=15] if block ~~1~ air run scoreboard players random @e[name=cursedcavern,c=1] Deleter 5 6
execute as @p[r=15] if block ~~1~ air run scoreboard players random @e[name=cursedcavern,c=1] chance 1 100
execute as @p[r=15] if block ~~1~ air run execute as @e[name=cursedcavern,c=1,scores={chance=1..10}] at @s run summon ds:centipede_grade1 ~~1~
execute as @p[r=15] if block ~~1~ air run execute as @e[name=cursedcavern,c=1,scores={chance=11..99}] at @s run summon ds:finger_bearer "§r§f[§5 Special Grade §r§f] Finger Bearer"
execute as @p[r=15] run clone ~~~1 ~~~1 ~~~