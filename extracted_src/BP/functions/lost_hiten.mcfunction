particle ds:hiten_fly1b
playsound elytra.loop @a ~~-5~ 0.1 2
execute as @e[r=3,scores={punch=1},type=player,m=!spectator,c=1] at @s positioned ^^^1.5 if entity @e[type=ds:lost_hiten,r=1.5,c=1] run give @s ds:hiten
execute as @e[r=3,scores={punch=1},type=player,m=!spectator,c=1] at @s positioned ^^^1.5 run event entity @e[type=ds:lost_hiten,r=1.5,c=1] ds:disappear