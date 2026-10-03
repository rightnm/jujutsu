# Setup stuff
scoreboard objectives add chance2 dummy
scoreboard players random @s chance2 1 3

# Clapped animation
execute if score @s chance2 matches 1 run playanimation @s animation.todo.clap1
execute if score @s chance2 matches 2 run playanimation @s animation.todo.clap2
execute if score @s chance2 matches 3 run playanimation @s animation.todo.clap3

tag @s[tag=itemUse:ds:boogie_woogie1] add feinted

playsound mob.clap @a[r=100] ~ ~1 ~ 999999 1 999999
execute if entity @s[tag=feinted] run playsound mob.wither.shoot @a[r=50] ~ ~1 ~ 99999 3 99999
execute if entity @s[tag=feinted] run scoreboard players set @s move 2

tag @s add swapper

# Swap logic
execute positioned ^ ^ ^50 run execute as @e[scores={BoogieTargetID=1..},r=49] at @s if score @s BoogieTargetID = @e[tag=swapper,c=1] BoogieSelfID as @e[tag=swapper,c=1] at @s positioned ^ ^ ^50 run function boogie_woogie/swap
execute unless entity @s[tag=just_swapped] positioned ^ ^ ^5 run function boogie_woogie/swap_notarget

# Cleanup
tag @s remove feinted
tag @s remove just_swapped
scoreboard players set @s Disabled2 5