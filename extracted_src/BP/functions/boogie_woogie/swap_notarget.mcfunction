
tag @s add swapper
execute unless entity @e[tag=swapped,r=50] run tag @e[r=5,tag=!Frames,tag=!heavenlyrestriction,family=!hr,family=!heavenlyrestriction,tag=!swapper] add swapped


execute if entity @e[tag=swapped,r=50] at @s run summon ds:rift swapper_location

#swap
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp2
execute as @e[tag=swapped,c=1,r=49] at @s run tp @e[tag=swapper,c=1,tag=!swapkick] ~~~ facing ^^^1
execute as @e[tag=swapped,c=1,r=49,type=!ds:pebble] at @s run tp @e[tag=swapper,c=1,tag=swapkick] ~~~ 
execute as @e[tag=swapped,c=1,r=49,type=ds:pebble] at @s run tp @e[tag=swapper,c=1] ~~~ 
execute as @e[name=swapper_location,c=1,r=51] at @s run tp @e[tag=swapped,c=1]  ~~~ facing ^^^10
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp
execute at @s if entity @e[tag=swapped] run particle ds:boogie_woogie_tp2

execute at @s[tag=swapkick] if entity @e[tag=swapped] run scoreboard players set @s move 1001

execute as @s at @s run summon gg:impact_frame
kill @e[type=ds:pebble,tag=swapped]


execute unless entity @e[tag=swapped,r=50] if entity @e[tag=swapper,r=50] positioned ^^^5 run function boogie_woogie/swap_notarget
event entity @e[name=swapper_location,c=1] ds:disappear
tag @s remove swapper
tag @e remove swapped