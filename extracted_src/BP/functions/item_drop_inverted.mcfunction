execute as @s at @s run tp @s ~~~

execute as @s[type=ds:inverted_spear_drop] at @s run particle ds:special_grade1 ~~1~
execute as @s[type=ds:inverted_spear_drop] at @s run particle ds:special_grade2 ~~1~
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run give @e[r=2,type=player,m=!spectator,c=1] ds:inverted_spear
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run playsound beacon.power @a ~~~ 999999 0.5 999999
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run camerashake add @a[r=40] 2 0.15
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run particle ds:special_grade_pickup1 ~~1~
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run scoreboard players set @s Deleter 6
execute as @s[type=ds:inverted_spear_drop] at @s if entity @e[r=2,type=player,m=!spectator] run tp @s ~~-69~
