playanimation @s[scores={move=50..}] animation.primesoul.scythe_combo_fast

execute as @s[scores={move=50..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=50..}] at @s run playsound mob.wither.hurt @a ~~~ 99999 2.6 99999

tp @s ~ 240 ~


execute as @s[scores={move=47..48,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=47,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=46..47}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=47}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=47}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=46}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=46}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=43..45}] at @s run tp @s ^^^5
execute as @s[scores={move=43..50}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=43..45}] at @s run damage @a[tag=!Frames,r=6] 9 suicide
execute as @s[scores={move=43..45}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=43..45}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=43..45}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=43..45}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=43..45}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=43..45}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=43..45}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=43..45}] at @s run particle ds:rift9 ^^^-3

execute as @s[scores={move=37..38,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=37,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=35..37}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=37}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=37}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=36}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=36}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=33..35}] at @s run tp @s ^^^5
execute as @s[scores={move=33..38}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=33..35}] at @s run damage @a[tag=!Frames,r=6] 10 suicide
execute as @s[scores={move=33..35}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=33..35}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=33..35}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=33..35}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=33..35}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=33..35}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=33..35}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=33..35}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=23..24,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=24,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=22..23}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=24}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 0.9 99999
execute as @s[scores={move=24}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=23}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=23}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=19..22}] at @s run tp @s ^^^5
execute as @s[scores={move=19..25}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=19..22}] at @s run damage @a[tag=!Frames,r=6] 14 suicide
execute as @s[scores={move=19..22}] at @s run scoreboard players set @a[tag=!Frames,r=6] Stun 20
execute as @s[scores={move=19..22}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=19..22}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=19..22}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=19..22}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.25
execute as @s[scores={move=19..22}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=19..22}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=19..22}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=19..22}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=1..8}] at @s run tp @s ~~~ facing @p[m=!c]

tag @s[scores={move=1..3}] remove scythecombo1_fast