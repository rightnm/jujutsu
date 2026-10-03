playanimation @s[scores={move=36..}] animation.primesoul.katana_combo1

execute as @s[scores={move=36}] at @s run particle ds:dirt0
execute as @s[scores={move=36..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=36..}] at @s run playsound mob.wither.hurt @a ~~~ 99999 2.6 99999

tp @s ~ 240 ~


execute as @s[scores={move=30..31,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=31,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=28..30}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=30}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1.15 99999
execute as @s[scores={move=30}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=29}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 4 99999
execute as @s[scores={move=29}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=26..28}] at @s run tp @s ^^^6
execute as @s[scores={move=26..30}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=26..28}] at @s run damage @a[tag=!Frames,r=6] 5 suicide 
execute as @s[scores={move=26..28}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=26..28}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=26..28}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=26..28}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.sword @a ~~~ 0.2 2.35
execute as @s[scores={move=26..28}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=26..28}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=26..28}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=26..28}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=23..24,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=23,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=21..23}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=23}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1.15 99999
execute as @s[scores={move=23}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=21}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 4 99999
execute as @s[scores={move=21}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=18..20}] at @s run tp @s ^^^7.5
execute as @s[scores={move=18..20}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=18..20}] at @s run damage @a[tag=!Frames,r=6] 6 suicide 
execute as @s[scores={move=18..20}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=18..20}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=18..20}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=18..20}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 2.5
execute as @s[scores={move=18..20}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=18..20}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=18..20}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=18..20}] at @s run particle ds:rift9 ^^^-3



execute as @s[scores={move=17..18,phase=3..}] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=17,phase=3..}] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=16..17}] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=17}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1.15 99999
execute as @s[scores={move=17}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=16}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 3.5 99999
execute as @s[scores={move=16}] at @s run playsound mob.slash1 @a[r=200] ~~~ 999999 0.8 99999
execute as @s[scores={move=13..15}] at @s run tp @s ^^^7.5
execute as @s[scores={move=13..15}] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=13..15}] at @s run damage @a[tag=!Frames,r=6] 6 suicide 
execute as @s[scores={move=13..15}] at @s run scoreboard players set @a[tag=!Frames,r=6] Hit 3
execute as @s[scores={move=13..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=13..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=13..15}] at @s run execute as @a[tag=!Frames,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 2.5
execute as @s[scores={move=13..15}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=13..15}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=13..15}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=13..15}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=1..6}] at @s run tp @s ~~~ facing @p[m=!c]

tag @s[scores={move=1..3}] remove katanacombo1