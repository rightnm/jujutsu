tag @s add swapper
#place location
tag @s add just_swapped
execute as @s at @s run summon ds:rift ~~~ facing ^^^10 none swapper_location 

#selectswap
execute as @e[tag=yuji_preshibuya_brother,r=149] at @s run tag @e[type=ds:yuji_itadori,c=1,r=150] add swapped
execute as @e[tag=yuji_awakened_brother,r=149] at @s run tag @e[type=ds:yuji_itadori_awakened,c=1,r=150] add swapped
execute as @e[scores={brotherID=1..},r=149,tag=!swapper] at @s if score @s brotherID = @e[tag=swapper,c=1] brotherID run tag @e[r=150] remove swapped
execute as @e[scores={brotherID=1..},r=149,tag=!swapper] at @s if score @s brotherID = @e[tag=swapper,c=1] brotherID run tag @s add swapped


#swap
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp2
execute as @e[tag=swapped,c=1,r=149] at @s run tp @e[tag=swapper,c=1,tag=!swapkick] ~~~ facing ^^^1
execute as @e[tag=swapped,c=1,r=149] at @s run tp @e[tag=swapper,c=1,tag=swapkick] ~~~
execute as @e[name=swapper_location,c=1,r=151] at @s run tp @e[tag=swapped,c=1]  ~~~ facing ^^^10
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp2

execute as @s at @s run summon gg:impact_frame

execute at @s[tag=swapkick] if entity @e[tag=swapped] run scoreboard players set @s move 1001
kill @e[type=ds:pebble,tag=swapped]

#cleanup
event entity @e[name=swapper_location,c=1] ds:disappear
tag @s remove swapper
tag @e remove swapped