
clone ~~~1 ~~~1 ~~~
summon ds:projectile randomcrate
scoreboard players random @e[name=randomcrate,c=1] chance 1 10
scoreboard players set @e[name=randomcrate,c=1] Deleter 5


execute as @e[name=randomcrate,c=1,scores={chance=1..4}] at @s run setblock ~~1~ ds:crate_v2
execute as @e[name=randomcrate,c=1,scores={chance=5..7}] at @s run setblock ~~1~ ds:crate_v3
execute as @e[name=randomcrate,c=1,scores={chance=8..9}] at @s run setblock ~~1~ ds:crate_v4
execute as @e[name=randomcrate,c=1,scores={chance=10}] at @s run setblock ~~1~ ds:crate_v5

execute as @e[name=randomcrate,c=1] at @s run kill @s


