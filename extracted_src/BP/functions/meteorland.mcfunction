scoreboard players random @s chance 1 19
scoreboard objectives add meteordropped dummy
scoreboard players add @a[r=300] meteordropped 1
execute as @s[scores={chance=1..3}] at @s run structure load mystructure:originorb ~~3~
execute as @s[scores={chance=4..7}] at @s run structure load mystructure:riftdrop1 ~~3~
execute as @s[scores={chance=8..10}] at @s run structure load mystructure:riftdrop2 ~~3~
execute as @s[scores={chance=11..13}] at @s run structure load mystructure:riftdrop3 ~~3~

execute as @s[scores={chance=14}] at @s run structure load mystructure:riftdrop1 ~~3~
execute as @s[scores={chance=14}] at @s run structure load mystructure:riftdrop2 ~~3~

execute as @s[scores={chance=15}] at @s run structure load mystructure:riftdrop2 ~~3~
execute as @s[scores={chance=15}] at @s run structure load mystructure:riftdrop3 ~~3~

execute as @s[scores={chance=16}] at @s run structure load mystructure:riftdrop1 ~~3~
execute as @s[scores={chance=16}] at @s run structure load mystructure:riftdrop3 ~~3~

execute as @s[scores={chance=17}] at @s run structure load mystructure:originorb ~~3~
execute as @s[scores={chance=17}] at @s run structure load mystructure:riftdrop3 ~~3~

execute as @s[scores={chance=18}] at @s run structure load mystructure:originorb ~~3~
execute as @s[scores={chance=18}] at @s run structure load mystructure:riftdrop1 ~~3~

execute as @s[scores={chance=19}] at @s run structure load mystructure:originorb ~~3~
execute as @s[scores={chance=19}] at @s run structure load mystructure:riftdrop2 ~~3~

summon ds:conflict_essence_drop ~~1~
spreadplayers ~ ~ 3 5 @e[type=ds:conflict_essence_drop,c=1]

kill @e[family=projectile,r=10]

particle ds:demons_descent1
particle ds:demons_descent2
particle ds:demons_descent3
particle ds:demons_descent4
particle ds:demons_descent5
particle ds:demons_descent6
particle ds:demons_descent7
particle ds:demons_descent8
particle ds:demons_descent9
particle ds:riftmeteor_land1
particle ds:riftmeteor_land2
particle ds:riftmeteor_land3
particle ds:invert
particle ds:large_slam1
particle ds:large_slam2
particle ds:large_slam3
particle ds:meteor_dust
summon gg:impact_frame
camerashake add @a 4 0.15 rotational
playsound item.trident.thunder @a ~~~ 99999 0.5 99999
playsound mob.shock1 @a ~~~ 99999 1 99999
playsound mob.wither.shoot @a ~~~ 99999 0.35 99999
playsound mob.wither.break_block @a ~~~ 99999 0.35 99999
playsound random.explode @a ~~~ 99999 0.5 99999
playsound random.explode @a ~~~ 99999 0.25 99999
playsound random.explode @a ~~~ 99999 1 99999

tickingarea remove meteorfall
tickingarea remove meteorfall1
tickingarea remove meteorfall2
tickingarea remove meteorfall3
tickingarea remove meteorfall4
tickingarea remove meteorfall5
tickingarea remove meteorfall6
tickingarea remove meteor
