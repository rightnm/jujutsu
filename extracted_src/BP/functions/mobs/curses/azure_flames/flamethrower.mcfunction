playanimation @s[scores={move=40}] animation.azureflames_curse.flamethrower

scoreboard players set @s[scores={move=6..}] Move 4
scoreboard players set @s[scores={move=6..}] Camera 4

execute as @s[scores={move=1..}] at @s run tp @s ~~~ facing @e[scores={detect_health=0..},c=1,r=30]

execute as @s[scores={move=37}] at @s positioned ^^^2 run effect @a[r=50] night_vision 2 1 true
execute as @s[scores={move=40}] at @s positioned ^^^2 run playsound mob.enderdragon.growl @a[r=150] ~~~ 9999 1.25 99999
execute as @s[scores={move=23..31}] at @s positioned ^^^7.5 run function mobs/curses/azure_flames/blue_heat
execute as @s[scores={move=23..31}] at @s positioned ^^^15 run function mobs/curses/azure_flames/blue_heat
execute as @s[scores={move=23..31}] at @s positioned ^^^22.5 run function mobs/curses/azure_flames/blue_heat
execute as @s[scores={move=25..31}] at @s positioned ^^^7 run playsound mob.burn @a[r=30] ~~~ 99999 1.25 99999
execute as @s[scores={move=20..31}] at @s positioned ^^^7 run playsound mob.blaze.shoot @a[r=30] ~~~ 99999 0.5 99999


scoreboard players set @s[scores={move=1..3}] chance 0
