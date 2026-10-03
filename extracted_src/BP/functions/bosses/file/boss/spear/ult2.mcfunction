playanimation @s[scores={move=60..}] animation.primesoul.spear_ult2

execute as @s[scores={move=32..}] run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=35}] at @s run playsound music.sekiro @a[r=200]
execute as @s[scores={move=35}] at @s run particle ds:unparrymarker ~~1~

execute as @s[scores={move=40..}] at @s run particle ds:rift_charging3 ~~1~
execute as @s[scores={move=40}] at @s run playsound mob.turbulence @a[r=200] ~~~ 9999 1.15 9999
execute as @s[scores={move=35}] at @s run particle ds:invert
execute as @s[scores={move=34}] at @s run summon gg:impact_frame
execute as @s[scores={move=32}] at @s run particle ds:invert
execute as @s[scores={move=29}] at @s run summon gg:impact_frame
execute as @s[scores={move=30}] at @s run camerashake add @a[r=200] 3 0.15 rotational
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] run function bosses/file/boss/spear/spear_ult2hit
execute as @s[scores={move=30}] positioned -59936 250 -59936 if entity @e[tag=spearult2,c=1,r=60] at @s run tp @s ^^^5 facing ^^^20
execute as @s[scores={move=30}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 9999 1.5 9999
execute as @s[scores={move=30}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=30}] at @s run playsound mob.slash1 @a[r=200] ~~~ 9999 0.75 9999
execute as @s[scores={move=30}] at @s run playsound mob.electricity1 @a[r=200] ~~~ 9999 0.5 9999

tag @s[scores={move=1..3}] remove spearult2


