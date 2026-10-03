

execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run playsound mob.shock2 @a[r=100] ~~~ 99999 2 99999
execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run playsound mob.wither.spawn @a[r=100] ~~~ 99999 4 99999
execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run playsound mob.distort2 @a[r=100] ~~~ 99999 1 99999
execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run camerashake add @a[r=100] 1 0.15
execute as @p[tag=mountain_buster,r=5.5] at @s positioned ^^1^2 run particle ds:invert
execute as @p[tag=griefable] unless entity @e[type=ds:void_reactor,r=200] run function 4x4sphere
scoreboard players set @s Stun 15


particle ds:atomic_breath_aura
particle ds:atomic_breath_aura1
particle ds:atomic_breath_aura2
particle ds:atomic_breath_aura3
particle ds:atomic_breath_aura4
particle ds:atomic_breath_aura5
particle ds:large_impact2
damage @e[tag=!Frames,r=20,tag=!mountain_buster] 100
scoreboard players set @e[tag=!Frames,r=20,tag=!mountain_buster] Hit 5
scoreboard players set @e[tag=!Frames,r=20,tag=!mountain_buster] Stun 50
summon ds:energy_explosion



execute as @p[tag=mountain_buster,r=70] positioned ^^^5 run function mountain_bust


