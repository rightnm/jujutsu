
tag @s add swapping
#place location
execute unless entity @e[tag=swapper,r=200] run tag @e[r=5,tag=!Frames,tag=!heavenlyrestriction,family=!hr,family=!heavenlyrestriction,tag=!swapping,tag=!swapper] add swapper
execute as @e[tag=!Frames,tag=swapper,c=1] at @s run summon ds:rift ~~~ facing ^^^10 none swapper_location 


#selectswap
execute as @e[scores={BoogieTargetID=1..},r=200,tag=!swapping] at @s if score @s[tag=!swapping] BoogieTargetID = @e[tag=swapping,c=1] BoogieSelfID run tag @s[tag=!swapping] add swapped

#error
execute unless entity @e[tag=swapped,r=200] run tellraw @s[r=5.1] {"rawtext":[{"text":"§cYou need to select a target for this first and then face the other target you want to swap.\n( §aPunch §c)."}]}


#swapping system below
#particles
execute as @e[tag=swapped,c=1] at @s run particle ds:boogie_woogie_tp
execute as @e[tag=swapped,c=1] at @s run particle ds:boogie_woogie_tp2

#tps
execute as @e[tag=swapped,c=1,r=200] at @s run tp @e[tag=swapper,c=1] ~~~ facing ^^^1
execute as @e[name=swapper_location,c=1,r=200] at @s run tp @e[tag=swapped,c=1]  ~~~ facing ^^^10

#particles
execute as @e[tag=swapped,c=1] at @s run particle ds:boogie_woogie_tp
execute as @e[tag=swapped,c=1] at @s run particle ds:boogie_woogie_tp2


execute as @s at @s run summon gg:impact_frame


execute unless entity @e[tag=swapper,r=200] if entity @e[tag=swapping,r=50] positioned ^^^5 run function boogie_woogie/swap_others
#cleanup
event entity @e[name=swapper_location,c=1] ds:disappear
tag @e remove swapper
tag @e remove swapped
tag @s remove swapping

#swapper = target ur looking at
#swapped = target u selected
#swapping = the user