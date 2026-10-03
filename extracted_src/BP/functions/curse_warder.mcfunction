particle ds:curse_warder1
particle ds:closet_aura1 ~~1.5~
playsound ambient.soulsand_valley.additions @a ~~~ 0.015 1.75

execute if entity @e[type=ds:cursed_closet,r=40] at @s unless block ~~-1~ bedrock run damage @s 15

execute as @s[type=ds:curse_warder_v1] at @s unless block ~~-1~ bedrock run execute as @e[family=purecurse,family=!grade2,family=!grade1,family=!special_grade,r=25] at @s unless block ~~-1~ bedrock run function curse_warded1
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run scoreboard players set @s Deleter 10
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run playsound mob.wither.hurt @a[r=20] ~~~ 99999 1.8 99999
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run give @p[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] ds:curse_warder_v1_spawn_egg
execute if entity @a[scores={detect_left=1..,Sneaking=1..},r=3.5,m=!spectator] run tp @s ~~-200 ~