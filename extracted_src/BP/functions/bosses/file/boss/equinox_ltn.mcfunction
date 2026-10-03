execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 14

execute as @s[scores={Deleter=1..}] run particle ds:equinoxbeam_trg1 ~~0.1~

execute as @s[scores={Deleter=13}] run playsound mob.wither.shoot @a ~~15~ 99999 0.5 99999


execute as @s[scores={Deleter=4}] run particle ds:stormspear_lightning1
execute as @s[scores={Deleter=4}] run particle ds:storm_spear_ex1
execute as @s[scores={Deleter=4}] run particle ds:storm_spear_ex2
execute as @s[scores={Deleter=4}] run particle ds:storm_spear_ex3
execute as @s[scores={Deleter=4}] run particle ds:storm_spear_ex4
execute as @s[scores={Deleter=4}] run particle ds:storm_spear_ex5
execute as @s[scores={Deleter=3}] run camerashake add @a[r=200] 2 0.15
execute as @s[scores={Deleter=3}] run particle ds:invert
execute as @s[scores={Deleter=3}] run playsound mob.shock1 @a[r=200] ~~~ 99999 1.15 99999
execute as @s[scores={Deleter=3}] run playsound random.explode @a[r=200] ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=3}] run damage @e[r=5,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 25 suicide
execute as @s[scores={Deleter=3}] positioned ~~5~ run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 25 suicide

execute as @s[scores={Deleter=1..2}] at @s run tp @s ~ -200 ~