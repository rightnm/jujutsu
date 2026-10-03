

execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~ facing ^^^30
execute as @s[scores={Deleter=1..}] at @s run tp @s @s

effect @s[scores={Deleter=3..9}] resistance 2 10 true
effect @s[scores={Deleter=1..2}] resistance 0 20 true
tag @s[scores={Deleter=3..9}] add Frames
tag @s[scores={Deleter=1..2}] remove Frames
execute as @s[scores={Deleter=15}] at @s  positioned ^^^1.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^3 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^4.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^6 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^7.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^9 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^10.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^12 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^14.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^16 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^17.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^19 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^20.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^22 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^23.5 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=15}] at @s  positioned ^^^25 run function shikigami/shikigami/ox_rush2
execute as @s[scores={Deleter=14}] at @s  positioned ^^^28 run tp @s ~~~
execute as @s[scores={Deleter=1..14}] at @s run kill @e[type=item,r=40]
execute as @s[scores={Deleter=1..14}] at @s unless block ~~~ air run spreadplayers ~ ~ 1 2 @s

execute as @s[scores={Deleter=1..14}] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s[scores={Deleter=12}] at @s run tp @s ~~-50~
execute as @s[scores={Deleter=10}] at @s run kill @s