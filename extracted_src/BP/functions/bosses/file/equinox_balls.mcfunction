tp @s ^^^0.8 facing @p[r=200,m=!c]
tp @s ^^^0.8 facing @p[r=200,m=!c]
particle ds:equinoxball1
particle ds:equinoxball2

execute unless entity @a[scores={punch=1..},r=5] if entity @a[tag=!Frames,r=1.5] run function bosses/file/equinox_ball_explode


execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run particle ds:white_parry1
execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run particle ds:heavy_impact2
execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run particle ds:large_impact2
execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run playsound mob.wither.spawn @a[r=200] ~~~ 99999 7 999999
execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run scoreboard players set @s Deleter 10
execute positioned ^^^3 if entity @a[scores={punch=1..},r=5] run tp @s ~ -200 ~