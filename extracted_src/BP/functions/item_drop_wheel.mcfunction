execute as @s[type=ds:wheel_drop] at @s run particle ds:sacred_treasure1 ~~1~
execute as @s[type=ds:wheel_drop] at @s run particle ds:sacred_treasure2 ~~1~
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run give @e[r=2,type=player,m=!spectator,c=1] ds:mahoragawheel
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run playsound beacon.power @a ~~~ 999999 0.5 999999
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run camerashake add @a[r=40] 2 0.15
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run particle ds:sacred_treasure_pickup1 ~~1~
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run scoreboard players set @s Deleter 6
execute as @s[type=ds:wheel_drop] at @s if entity @e[r=2,type=player,m=!spectator] run tp @s ~~-69~