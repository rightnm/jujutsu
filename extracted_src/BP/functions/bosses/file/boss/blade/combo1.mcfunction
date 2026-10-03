playanimation @s[scores={move=90..}] animation.primesoul.blade_combo

execute as @s[scores={move=90..}] at @s run particle ds:stars ~~1~
execute as @s[scores={move=90..}] at @s run playsound mob.wither.hurt @a ~~~ 99999 2.6 99999

scoreboard players set @s[type=player] Frames 5

scoreboard players set @s[scores={move=1..},type=player] Move 7
scoreboard players set @s[scores={move=1..40},type=player] Camera 7

tp @s[scores={move=66..},type=!player] ~ 240 ~

execute as @s[scores={move=81..82},type=!player] at @s run tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=82..83,phase=3..},type=!player] at @s run  function bosses/file/boss/tp
execute as @s[scores={move=83,phase=3..},type=!player] at @s run execute as @p[m=!c,r=200] at @s run spreadplayers ~ ~ 7 10 @e[type=ds:primesoul,scores={move=1..},c=1]

execute as @s[scores={move=83},type=!player] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=83},type=!player] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=80}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=80}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=75..79},type=!player] at @s run tp @s ^^^5
execute as @s[scores={move=75..79},type=player] at @s run scriptevent ds:autoJump2

execute as @s[scores={move=79..82},type=!player] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=77..79}] at @s run damage @e[tag=!Frames,family=!heroic,r=6] 32
execute as @s[scores={move=77..79}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Hit 3
execute as @s[scores={move=77..79}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=77..79}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=77..79}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=77..79}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=77..79}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=77..79}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=77..79}] at @s run particle ds:rift9 ^^^-3


execute as @s[scores={move=72..73},type=!player] at @s run tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=73},type=!player] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=73},type=!player] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=71}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=71}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=62..70},type=!player] at @s run tp @s ^^^5
execute as @s[scores={move=66..73},type=!player] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry
execute as @s[scores={move=62..70},type=player] at @s run scriptevent ds:autoJump2


execute as @s[scores={move=66..73}] at @s run damage @e[tag=!Frames,family=!heroic,r=6] 35
execute as @s[scores={move=66..73}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Hit 3
execute as @s[scores={move=66..73}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=66..73}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=66..73}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=66..73}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=66..73}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=66..73}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=66..73}] at @s run particle ds:rift9 ^^^-3





execute as @s[scores={move=48..65},type=!player] at @s run tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=47},type=!player] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=47},type=!player] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=44..47},type=!player] at @s run tp @s ^^^-3 facing @p[m=!c]

execute as @s[scores={move=45}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=45}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=44..45}] at @s run tp @s ^^3^1


execute as @s[scores={move=42..46},type=!player] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=42..44}] at @s run damage @e[tag=!Frames,family=!heroic,r=10] 35
execute as @s[scores={move=42..44}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=10] Hit 3
execute as @s[scores={move=42..44}] at @s run execute as @e[tag=!Frames,family=!heroic,r=10] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=42..44}] at @s run execute as @e[tag=!Frames,family=!heroic,r=10] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=42..44}] at @s run execute as @e[tag=!Frames,family=!heroic,r=10] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=42..44}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=42..44}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=42..44}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=42..44}] at @s run particle ds:rift9 ^^^-3



execute as @s[scores={move=43}] at @s run playsound mob.flash @a[r=200] ~~~ 999999 1 99999
execute as @s[scores={move=43}] at @s run particle ds:parrymarker ~~4~

execute as @s[scores={move=41}] at @s run playsound mob.slash @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=41}] at @s run playsound mob.heavy_swing @a[r=200] ~~~ 999999 0.6 99999
execute as @s[scores={move=37..40},type=!player] at @s run tp @s ^^^4
execute as @s[scores={move=37..42},type=player] at @s run scriptevent ds:downfall
execute as @s[scores={move=39..40},type=player] at @s run scriptevent ds:autoJump2

execute as @s[scores={move=37..42},type=!player] at @s run execute as @p[tag=!Frames,scores={punch=1..2},r=22] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=37..38},type=!player] at @s run tp @s ~ 240 ~
execute as @s[scores={move=37..40}] at @s run damage @e[tag=!Frames,family=!heroic,r=6] 35
execute as @s[scores={move=37..40}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=6] Hit 3
execute as @s[scores={move=37..40}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:slice ~~0.25~
execute as @s[scores={move=37..40}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run particle ds:blood_splat ~~0.33~
execute as @s[scores={move=37..40}] at @s run execute as @e[tag=!Frames,family=!heroic,r=6] at @s run playsound mob.slice4 @a ~~~ 0.2 1.5
execute as @s[scores={move=37..40}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=37..40}] at @s run particle ds:rift9 ^^^-1
execute as @s[scores={move=37..40}] at @s run particle ds:shard_make1 ^^1^-1 
execute as @s[scores={move=37..40}] at @s run particle ds:rift9 ^^^-3

execute as @s[scores={move=37},type=!player] at @s positioned ^^^7 run particle ds:reality_crater1 ~ 240.25 ~
execute as @s[scores={move=37},type=!player] at @s positioned ^^^7 run particle ds:reality_crater2 ~ 240.25 ~
execute as @s[scores={move=37},type=!player] at @s positioned ^^^7 run particle ds:demons_descent1  ~ 240.25 ~

execute as @s[scores={move=35..38},type=player] at @s run tp @s @s
execute as @s[scores={move=37},type=player] at @s positioned ^^^7 unless block ~~-1~ air run particle ds:reality_crater1 ~ ~ ~
execute as @s[scores={move=37},type=player] at @s positioned ^^^7 unless block ~~-1~ air  run particle ds:reality_crater2 ~ ~ ~
execute as @s[scores={move=37},type=player] at @s positioned ^^^7 unless block ~~-1~ air  run particle ds:demons_descent1  ~ ~ ~

execute as @s[scores={move=37}] at @s positioned ^^^7 run playsound random.explode @a ~~~ 9999 0.5 9999
execute as @s[scores={move=37}] at @s positioned ^^^7 run execute as @a[r=200] at @s run playsound music.blade2 @s ~~~ 99999 0.8 99999
execute as @s[scores={move=37}] at @s positioned ^^^7 run camerashake add @a[r=200] 1 0.15 rotational

execute as @s[scores={move=37}] at @s positioned ^^^7 unless entity @a[tag=Frames,r=12] run summon ds:red_reverse ~ 240 ~
execute as @s[scores={move=37}] at @s positioned ^^^7 run scoreboard players set @e[tag=!Frames,family=!heroic,r=12] Hit 15
execute as @s[scores={move=37}] at @s positioned ^^^7 run scoreboard players set @e[tag=!Frames,family=!heroic,r=12] knockdown 33
execute as @s[scores={move=37}] at @s positioned ^^^7 run damage @e[tag=!Frames,family=!heroic,r=12] 20 suicide

execute as @s[scores={move=1..8}] at @s run tp @s ~~~ facing @p[m=!c]

tag @s[scores={move=1..3}] remove bladecombo1