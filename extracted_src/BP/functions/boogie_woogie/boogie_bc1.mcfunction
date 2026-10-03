# Setup stuff
execute as @s[scores={move=8..}] run scoreboard objectives add chance2 dummy
scoreboard players random @s[scores={move=8..}] chance2 1 3


# Clapped animation
execute as @s[scores={move=8..,chance2=1}] run playanimation @s animation.todo.clap1
execute as @s[scores={move=8..,chance2=2}] run playanimation @s animation.todo.clap2
execute as @s[scores={move=8..,chance2=3}] run playanimation @s animation.todo.clap3

tag @s[scores={move=4..},tag=itemUse:ds:boogie_woogie3] add feinted



execute as @s[scores={move=4}] at @s run playsound mob.clap @a[r=100] ~~1~ 999999 1 999999
execute as @s[scores={move=4},tag=feinted] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 3 99999
scoreboard players set @s[scores={move=3..4},tag=feinted] move 2

tag @s[scores={move=4}] add swapper

execute as @s[scores={move=3}] at @s[tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] run execute as @e[scores={brotherID=1..},r=99,c=1] at @s if score @s brotherID = @e[tag=swapper,c=1] brotherID as @e[tag=swapper,c=1] at @s positioned ^^^50 run function boogie_woogie/swap_brother

execute as @s[scores={move=3}] at @s[tag=yuji_preshibuya_brother] run execute as @e[type=ds:yuji_itadori,c=1,r=99] as @e[tag=swapper,c=1] at @s positioned ^^^50 run function boogie_woogie/swap_brother
execute as @s[scores={move=3}] at @s[tag=yuji_awakened_brother] run execute as @e[type=ds:yuji_itadori_awakened,c=1,r=99] as @e[tag=swapper,c=1] at @s positioned ^^^50 run function boogie_woogie/swap_brother



tag @s[scores={move=1..2}] remove feinted
tag @s[scores={move=1..2}] remove just_swapped
tag @s[scores={move=1..2}] remove form5

