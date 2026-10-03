particle ds:curse_warder4
particle ds:closet_aura_red1 ~~1.5~
playsound ambient.soulsand_valley.additions @a ~~~ 0.015 1.25

execute if entity @e[type=ds:cursed_closet,r=40] at @s unless block ~~-1~ bedrock run damage @s 15


execute as @s[type=ds:curse_warder_v4] at @s unless block ~~-1~ bedrock run execute as @e[family=purecurse,r=75] at @s unless block ~~-1~ bedrock run function curse_warded4
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run scoreboard players set @s Deleter 10
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run playsound mob.wither.hurt @a[r=20] ~~~ 99999 1.8 99999
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run give @p[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] ds:curse_warder_v4_spawn_egg
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run tp @s ~~-200 ~