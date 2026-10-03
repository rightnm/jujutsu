
execute as @s if entity @p[r=50,tag=sukuna] run scoreboard players set @e[tag=!Frames,r=9.99] Hit 15
execute as @s if entity @p[r=50,tag=sukuna] run damage @e[tag=!Frames,r=9.99] 100 
execute as @s if entity @p[r=50,tag=sukuna] run scoreboard players set @e[tag=!Frames,r=9.99] Stun 30
execute as @s if entity @p[r=50,tag=sukuna] run scoreboard players add @e[tag=!Frames,r=9.99] Evade 50

execute as @s if entity @p[r=50,tag=sukuna] if entity @e[tag=!Frames,r=9.99] run scoreboard players add @p[tag=sukuna,rm=2,r=55] fuga 33

execute as @s positioned ~~10~ if entity @p[r=50,tag=sukuna] run scoreboard players set @e[tag=!Frames,r=9.99] Hit 15
execute as @s positioned ~~10~ if entity @p[r=50,tag=sukuna] run damage @e[tag=!Frames,r=9.99] 150 
execute as @s positioned ~~10~ if entity @p[r=50,tag=sukuna] run scoreboard players set @e[tag=!Frames,r=9.99] Stun 30
execute as @s positioned ~~10~ if entity @p[r=50,tag=sukuna] run scoreboard players add @e[tag=!Frames,r=9.99] Evade 50

execute as @s positioned ~~10~ if entity @p[r=50,tag=sukuna] if entity @e[tag=!Frames,r=9.99] run scoreboard players add @p[tag=sukuna,rm=2,r=55] fuga 5

particle ds:large_slam2
particle ds:ground_slam_large
particle ds:max_cleave_energy
particle ds:dismantle_attack_up ^^^
particle ds:dismantle_attack_up ^^^5
particle ds:cleave_aureole_alot


execute as @s if entity @p[tag=griefable] positioned ^^^10 run effect @a[r=30] resistance 1 40 true

execute as @s if entity @p[tag=griefable] positioned ^^^10 run summon ds:limitless_explosion ~~5~
execute as @s if entity @p[r=50] positioned ^^^10 run function sukuna/attacks/cleaves/max_cleave_shockwave



