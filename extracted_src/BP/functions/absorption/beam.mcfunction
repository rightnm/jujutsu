
execute as @p if entity @e[scores={move=10..30},c=1,r=60] unless block ~~~ air run particle ds:absorption_ex
execute as @p if entity @e[scores={move=30},c=1,r=60] unless block ~~~ air if entity @p[tag=griefable,scores={absorption=1..49}] run summon ds:lapse_explode
execute as @p if entity @e[scores={move=30},c=1,r=60] unless block ~~~ air if entity @p[tag=griefable,scores={absorption=50..}] run summon ds:energy_explosion
execute as @p if entity @e[scores={move=10},c=1,r=60] unless block ~~~ air if entity @p[tag=griefable,scores={absorption=1..49}] run summon ds:lapse_explode
execute as @p if entity @e[scores={move=10},c=1,r=60] unless block ~~~ air if entity @p[tag=griefable,scores={absorption=50..}] run summon ds:energy_explosion

execute as @p if entity @e[scores={move=30},c=1,r=60] run scoreboard players operation @e[r=3.99,c=1,tag=!Frames,type=!ds:kashimo,tag=!form5] damage += @e[scores={move=10..30,absorption=1..},c=1] absorption
execute as @p if entity @e[scores={move=30},c=1,r=60] run scoreboard players operation @e[r=3.99,c=1,tag=!Frames,type=!ds:kashimo,tag=!form5] damage /= ten endurance


execute as @p if entity @e[scores={move=11},c=1,r=60] run scoreboard players operation @e[r=3.99,c=1,tag=!Frames,type=!ds:kashimo,tag=!form5] damage += @e[scores={move=10..30,absorption=1..},c=1] absorption
execute as @p if entity @e[scores={move=11},c=1,r=60] run scoreboard players operation @e[r=3.99,c=1,tag=!Frames,type=!ds:kashimo,tag=!form5] damage /= ten endurance

execute as @p if entity @e[scores={move=10..30},c=1,r=60] run damage @e[r=3.99,c=1,tag=!Frames,tag=!lightning,type=!ds:kashimo,tag=!form5] 1 override
execute as @p if entity @e[scores={move=30},c=1,r=20] run function damages/electric_damage
execute as @p if entity @e[scores={move=25},c=1,r=20] run function damages/electric_damage
execute as @p if entity @e[scores={move=20},c=1,r=20] run function damages/electric_damage
execute as @p if entity @e[scores={move=15},c=1,r=20] run function damages/electric_damage
execute as @p if entity @e[scores={move=10},c=1,r=20] run function damages/electric_damage
execute as @p if entity @e[scores={move=10..30},c=1,r=60] positioned ^^^4 run function absorption/beam


