playanimation @s[scores={move=90..}] animation.primesoul.scythe_combo

execute as @s[scores={move=90..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=90..}] at @s run playsound mob.wither.hurt @a ~~~ 99999 2.6 99999

tp @s ~ 240 ~

execute as @s[scores={move=81..82}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=82..83,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=83,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=83}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=83}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=80}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=80}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=75..79}] at @s run tp @s ^^^5
execute as @s[scores={move=79..82}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=77..79}] at @s run damage @a[tag=!Frames,r=6] 12 suicide
execute as @s[scores={move=77..79}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=77..79}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=77..79}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=77..79}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=77..79}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=77..79}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=77..79}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=77..79}] at @s run particle ds:rift9 ^^^-3

execute as @s[scores={move=62..63}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=63..64,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=64,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=64}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=64}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=61}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=61}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=55..60}] at @s run tp @s ^^^5
execute as @s[scores={move=60..62}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=57..60}] at @s run damage @a[tag=!Frames,r=6] 15 suicide
execute as @s[scores={move=57..60}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=57..60}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=57..60}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=57..60}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=57..60}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=57..60}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=57..60}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=57..60}] at @s run particle ds:rift9 ^^^-3

execute as @s[scores={move=47..48,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=48,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=47..48}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=48}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 0.9 99999
execute as @s[scores={move=48}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=45}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=45}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=38..44}] at @s run tp @s ^^^5
execute as @s[scores={move=41..47}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=41..44}] at @s run damage @a[tag=!Frames,r=6] 20 suicide
execute as @s[scores={move=41..44}] at @s run scoreboard players set @a[tag=!Frames,r=6] Stun 20
execute as @s[scores={move=41..44}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=41..44}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=41..44}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=41..44}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.25
execute as @s[scores={move=41..44}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=41..44}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=41..44}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=41..44}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=1..8}] at @s run tp @s ~~~ facing @p[m=!c]

tag @s[scores={move=1..3}] remove scythecombo1