playanimation @s[scores={move=50..}] animation.primesoul.spear_ranged

execute as @s[scores={move=22..}] run tp @s ~ 260 ~ facing @p[m=!c]
execute as @s[scores={move=1..20}] run tp @s ~ 240 ~ facing @p[m=!c]

execute as @s[scores={move=49}] run playsound portal.trigger @a ~~~ 99999 3 99999
execute as @s[scores={move=49}] run particle ds:rift_charging1 ~~1~

execute as @s[scores={move=23}] run playsound mob.flash @a[r=200] ~~~ 9999 0.95 9999
execute as @s[scores={move=23}] run particle ds:parrymarker

execute as @s[scores={move=30..47}] run playsound mob.electricity @a[r=200] ~~11~ 99999 2.25 99999
execute as @s[scores={move=30..47}] run particle ds:white_lightning3 ~~1~
execute as @s[scores={move=49}] run particle ds:large_impact2 ~~1~
execute as @s[scores={move=39}] run particle ds:large_impact2 ~~1~
execute as @s[scores={move=29}] run particle ds:large_impact2 ~~1~
execute as @s[scores={move=23..33}] run particle ds:rift_charging3 ~~2~


execute as @s[scores={move=20}] run execute as @p[m=!c,r=200] at @s run tp @e[type=ds:primesoul,scores={move=20..21},c=1] ^^^2 
execute as @s[scores={move=20..23}] run execute as @e[tag=!Frames,type=!ds:primesoul,r=20,scores={punch=1..2}] at @s anchored eyes positioned ^^^1 run function parry

execute as @s[scores={move=19}] run damage @e[tag=!Frames,type=!ds:primesoul,r=20] 40 suicide
execute as @s[scores={move=19}] run scoreboard players set @e[tag=!Frames,type=!ds:primesoul,r=20] Hit 7
execute as @s[scores={move=19}] run tag @e[tag=!Frames,type=!ds:primesoul,r=20] add hltn
execute as @s[scores={move=19}] run scoreboard players set @e[tag=!Frames,type=!ds:primesoul,r=20] shocked 33
execute as @s[scores={move=19}] run summon ds:mahoraga_knockback2 
execute as @s[scores={move=19}] run effect @e[tag=!Frames,type=!ds:primesoul,r=20] levitation 1 25 true
execute as @s[scores={move=11}] run effect @e[tag=!Frames,type=!ds:primesoul,r=200] levitation 0 30 true

execute as @s[scores={move=19}] run particle ds:storm_spear_ex1 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:storm_spear_ex2 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:storm_spear_ex3 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:storm_spear_ex4 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:storm_spear_ex5 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:storm_spear_ex6 ~ 240.1 ~
execute as @s[scores={move=19}] run particle ds:large_shockwave
execute as @s[scores={move=19}] run particle ds:demons_descent4 ~ 240.25 ~
execute as @s[scores={move=19}] run particle ds:reality_crater1 ~ 240.25 ~
execute as @s[scores={move=19}] run particle ds:reality_crater2 ~ 240.25 ~
execute as @s[scores={move=19}] run particle ds:crash ~ 240.25 ~
execute as @s[scores={move=19}] run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=19}] run playsound mob.shock1 @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=19}] run playsound mob.distort2 @a[r=200] ~~~ 99999 5 99999
execute as @s[scores={move=19}] run playsound mob.crash @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=17..19}] run playsound mob.electricity @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={move=17..19}] run playsound mob.electricity @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=17}] run playsound item.trident.thunder @a[r=200] ~~~ 99999 0.75 99999


tag @s[scores={move=1..3}] remove spearranged1
