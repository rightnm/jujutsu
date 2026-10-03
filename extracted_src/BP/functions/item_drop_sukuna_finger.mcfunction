execute as @s at @s run tp @s ~~~

execute as @s[type=ds:sukuna_finger_drop] at @s if entity @e[r=2,type=player,m=!spectator] run give @e[r=2,type=player,m=!spectator,c=1] ds:sukuna_finger
execute as @s[type=ds:sukuna_finger_drop] at @s if entity @e[r=2,type=player,m=!spectator] run playsound mob.wither.spawn @a ~~~ 999999 0.5 999999
execute as @s[type=ds:sukuna_finger_drop] at @s if entity @e[r=2,type=player,m=!spectator] run camerashake add @a[r=240] 4 0.15
execute as @s[type=ds:sukuna_finger_drop] at @s if entity @e[r=2,type=player,m=!spectator] run scoreboard players set @s Deleter 6
execute as @s[type=ds:sukuna_finger_drop] at @s if entity @e[r=2,type=player,m=!spectator] run tp @s ~~-69~
 