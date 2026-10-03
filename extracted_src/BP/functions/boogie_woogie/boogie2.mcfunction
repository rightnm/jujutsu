# Setup stuff
execute as @s[scores={move=8..}] run scoreboard objectives add chance2 dummy
scoreboard players random @s[scores={move=8..}] chance2 1 3


# Clapped animation
execute as @s[scores={move=8..,chance2=1}] run playanimation @s animation.todo.clap1
execute as @s[scores={move=8..,chance2=2}] run playanimation @s animation.todo.clap2
execute as @s[scores={move=8..,chance2=3}] run playanimation @s animation.todo.clap3

tag @s[scores={move=4..},tag=itemUse:ds:boogie_woogie1] add feinted

execute as @s[scores={move=4}] at @s run playsound mob.clap @a[r=100] ~~1~ 999999 1 999999
execute as @s[scores={move=4},tag=feinted] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 3 99999
scoreboard players set @s[scores={move=3..4},tag=feinted] move 2

tag @s[scores={move=4}] add swapping

execute as @s[scores={move=3},tag=!just_swapped] at @s positioned ^^^5 run function boogie_woogie/swap_others

scoreboard players set @s[scores={move=1..2}] chance2 0
tag @s[scores={move=1..2}] remove feinted
tag @s[scores={move=1..2}] remove just_swapped
tag @s[scores={move=1..2}] remove swapping
tag @s[scores={move=1..2}] remove form2

