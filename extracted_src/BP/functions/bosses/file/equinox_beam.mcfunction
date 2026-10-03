execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 53

execute as @s[scores={Deleter=1..}] run particle ds:equinoxbeam_trg1 ~~0.1~

execute as @s[scores={Deleter=45}] run playsound mob.blast2 @a ~~15~ 99999 1 99999
execute as @s[scores={Deleter=45}] run camerashake add @a[r=20] 2 0.15
execute as @s[scores={Deleter=45}] run summon gg:impact_frame

execute as @s[scores={Deleter=11..45}] run particle ds:equinox_beam1 ~~0.1~
execute as @s[scores={Deleter=11..45}] run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 3 suicide
execute as @s[scores={Deleter=11..45}] positioned ~~10~ run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 3 suicide
execute as @s[scores={Deleter=11..45}] positioned ~~20~ run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 3 suicide
execute as @s[scores={Deleter=11..45}] positioned ~~-10~ run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 3 suicide
execute as @s[scores={Deleter=11..45}] positioned ~~-20~ run damage @e[r=10,tag=!Frames,family=!projectile,family=!heroic,type=!ds:rift_prison] 3 suicide

execute as @s[scores={Deleter=1..10}] at @s run tp @s ~ -200 ~