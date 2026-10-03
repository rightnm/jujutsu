
clear @s[tag=!creative] ds:unstable_transfigured_human 0 1
clear @s[tag=!creative] ds:unstable_transfigured_human 0 1
clear @s[tag=!creative] ds:unstable_transfigured_human 0 1
scoreboard players set @s Disabled2 10

execute as @s at @s anchored eyes run playsound random.disfigure @a[r=20] ^^^1 9999 1.75 9999
execute as @s at @s anchored eyes run playsound random.disfigure @a[r=20] ^^^1 9999 1.75 9999
execute as @s at @s anchored eyes run playsound random.disfigure @a[r=20] ^^^1 9999 1.75 9999
execute as @s at @s anchored eyes run particle ds:curses_energy_hit1 ^^-0.25^1 
execute as @s at @s anchored eyes run particle ds:curses_energy_hit2 ^^-0.25^1 
execute as @s at @s anchored eyes run particle ds:curses_energy_hit3 ^^-0.25^1 
execute as @s at @s anchored eyes run particle ds:large_impact1 ^^-0.25^1
camerashake add @a[r=20] 2 0.25

execute as @s at @s run scriptevent ds:transfigured_worm2
execute as @s at @s run playsound mob.wither.shoot @a[r=50] ^^1^1 9999 1.25 9999
execute as @s at @s run playsound crossbow.shoot @a[r=50] ^^1^1 9999 0.5 9999
playanimation @s animation.mahito.throw_item2


tp @s[type=!player] ~~~ facing @e[scores={detect_health=0..},family=!purecurse,type=!item,type=!xp_orb,family=!projectile,tag=!creative,tag=!curse,c=1]
scoreboard players remove @s[type=!player] human_soul_counter 3
