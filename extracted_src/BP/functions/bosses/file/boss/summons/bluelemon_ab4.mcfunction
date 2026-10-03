playanimation @s[scores={move=55..56}] animation.bluelemon.whirlwind_combo1


execute as @s[scores={move=31..}] at @s if block ~~-0.2~ air run scriptevent ds:downfall
scoreboard players set @s Frames 10
scoreboard players set @s Move 10

execute as @s[scores={move=26..},type=!player] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]
execute as @s[scores={move=26..31}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~~ 0.2 1.5
execute as @s[scores={move=26..31}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~  0.2 1.5
execute as @s[scores={move=26..31}] at @s run camerashake add @a[r=20] 0.25 0.15
execute as @s[scores={move=26..31}] at @s run particle ds:flashstep1 ^1.25^^
execute as @s[scores={move=26..31}] at @s run particle ds:sonido1 ^^^
execute as @s[scores={move=26..31}] at @s run particle ds:flashstep1 ^-1.25^^

execute as @s[scores={move=37..42}] at @s run playsound music.turbulence @a[r=200] ~~1~ 99999 0.88 99999
execute as @s[scores={move=28}] at @s run particle ds:blue_tint
execute as @s[scores={move=27}] at @s run particle ds:invert
execute as @s[scores={move=26}] at @s run summon gg:impact_frame
execute as @s[scores={move=25}] at @s run particle ds:blue_tint

execute as @s[scores={move=34},type=!player] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=34},type=!player] at @s run playsound mob.sekiro @a[r=300]



execute as @s[scores={move=23..25},type=!player] at @s run tag @e[tag=!Frames,family=!heroic,scores={detect_health=0..},c=1,r=200] add whirlwindcombo
execute as @s[scores={move=20..25},type=!player] at @s run execute as @e[tag=!Frames,family=!heroic,scores={detect_health=0..},c=1,r=200] at @s run tp @s @s
execute as @s[scores={move=20..25},type=!player] at @s run execute as @e[tag=!Frames,family=!heroic,scores={detect_health=0..},c=1,r=200] at @s run tp @e[type=ds:bluelemon,scores={chance=12},c=1] ^^^1.25 facing @s
execute as @s[scores={move=20..25},type=!player] at @s run execute as @e[tag=!Frames,family=!heroic,scores={detect_health=0..},c=1,r=200] at @s run tp @e[type=ds:bluelemon,scores={chance=12},c=1] ^^^1.25 facing @s


execute as @s[scores={move=23..25},type=player] at @s unless entity @e[tag=whirlwindcombo,r=100] positioned ^^^20 run tag @e[tag=!Frames,scores={detect_health=0..},c=1,r=19] add whirlwindcombo
execute as @s[scores={move=20..25},type=player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @s @s
execute as @s[scores={move=20..25},type=player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @p[tag=wep4,scores={move=1..},hasitem={item=ds:water_fists,location=slot.weapon.mainhand},c=1] ^^^1.25 facing @s
execute as @s[scores={move=20..25},type=player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @p[tag=wep4,scores={move=1..},hasitem={item=ds:water_fists,location=slot.weapon.mainhand},c=1] ^^^1.25 facing @s




execute as @s[scores={move=20..23}] at @s if entity @e[tag=whirlwindcombo,c=1,r=200] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..}] animation.bluelemon.whirlwind_combo2
execute as @s[scores={move=986..},type=!player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @e[type=ds:bluelemon,scores={chance=12},c=1] ^^^1.25 facing @s

execute as @s[scores={move=986..},type=player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @p[tag=wep4,scores={move=1..},hasitem={item=ds:water_fists,location=slot.weapon.mainhand},c=1] ^^^1.25 facing @s
execute as @s[scores={move=986..}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @s @s


execute as @s[scores={move=987..}] at @s run camerashake add @a[r=100] 0.15 0.1 rotational
execute as @s[scores={move=994}] at @s run particle ds:invert
execute as @s[scores={move=992}] at @s run particle ds:red_tint
execute as @s[scores={move=995}] at @s run particle ds:blue_tint
execute as @s[scores={move=994}] at @s run summon gg:impact_frame
execute as @s[scores={move=999}] at @s run execute as @a[r=200] at @s run playsound music.energy @s ~~~ 999999 2.7 99999
execute as @s[scores={move=986..}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run camera @s set minecraft:free pos ^-2.5^0.5^0.75 facing ^^1^1.25
execute as @s[scores={move=986..994}] at @s run playanimation @e[tag=whirlwindcombo,c=1] animation.stunned2

execute as @s[scores={move=962}] at @s run playsound music.bass3 @a[r=100] ~~~ 99999 2 99999

execute as @s[scores={move=984..985}] at @s run particle ds:large_impact2 ^^1^1 
execute as @s[scores={move=984..985}] at @s run particle ds:flowingwater_burst1 ^^1^1 
execute as @s[scores={move=984..985}] at @s run particle ds:flowingwater_burst2 ^^1^1 
execute as @s[scores={move=984..985}] at @s run particle ds:flowingwater_burst3 ^^1^1 
execute as @s[scores={move=984..985}] at @s run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=984..985}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=984..985}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=984..985}] at @s run playsound random.explode @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=984..985}] at @s run tp @e[tag=whirlwindcombo,c=1] ^^11^24 facing @s
execute as @s[scores={move=950..985}] at @s run scoreboard players set @e[tag=whirlwindcombo,c=1] knockdown 85
execute as @s[scores={move=986..987}] at @s run camera @p[tag=whirlwindcombo] set minecraft:free pos ^-1^0.25^-2 facing ^^14^24

execute as @s[scores={move=961..985}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @s ^^0.05^-0.05

execute as @s[scores={move=976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:dirt0
execute as @s[scores={move=974}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run summon gg:impact_frame
execute as @s[scores={move=973}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:invert ^^^2
execute as @s[scores={move=975..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:blue_tint
execute as @s[scores={move=961..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:origin_flashslash1 ~~0.5~
execute as @s[scores={move=961..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:origin_flashslash2 ~~0.5~
execute as @s[scores={move=961..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:origin_flashslash3 ~~0.5~
execute as @s[scores={move=961..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run playsound mob.slash1 @a[r=200] ~~50~ 99999 1.25 99999
execute as @s[scores={move=961..976}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run camerashake add @a[r=200] 0.25 0.15
execute as @s[scores={move=961..962}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=961..962}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=961..962}] at @s run scoreboard players set @e[tag=whirlwindcombo,c=1] Hit 4

execute as @s[scores={move=951..955}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~~ 0.2 1.5
execute as @s[scores={move=951..955}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~  0.2 1.5
execute as @s[scores={move=951..955}] at @s run camerashake add @a[r=20] 0.25 0.15
execute as @s[scores={move=951..955}] at @s run particle ds:flashstep1 ^1.25^^
execute as @s[scores={move=951..955}] at @s run particle ds:sonido1 ^^^
execute as @s[scores={move=951..955}] at @s run particle ds:flashstep1 ^-1.25^^

execute as @s[scores={move=940..960}] at @s run particle ds:blue_star ~~1~

execute as @s[scores={move=958..960}] at @s run execute as @p[tag=whirlwindcombo,c=1] at @s run camera @s set minecraft:free  pos ^1^-4^-3 facing ^^1^-0.25
execute as @s[scores={move=910..960}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @s ~~~
execute as @s[scores={move=910..953},type=!player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @e[type=ds:bluelemon,scores={chance=12},c=1] ^^1^0.25 facing @s
execute as @s[scores={move=910..953},type=player] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run tp @p[tag=wep4,scores={move=1..},hasitem={item=ds:water_fists,location=slot.weapon.mainhand},c=1] ^^1^0.25 facing @s




execute as @s[scores={move=930..939}] at @s run damage @e[family=purecurse,r=7] 50 suicide
execute as @s[scores={move=939..942}] at @s run particle ds:flowingwater_burst1 ~~-0.5~
execute as @s[scores={move=939..942}] at @s run particle ds:flowingwater_burst2 ~~-0.5~
execute as @s[scores={move=939..942}] at @s run particle ds:flowingwater_burst3 ~~-0.5~
execute as @s[scores={move=941..942}] at @s run particle ds:dirt1 ~~-0.5~
execute as @s[scores={move=941..942}] at @s run particle ds:dirt2 ~~-0.5~
execute as @s[scores={move=942}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 999999 1.25 99999
execute as @s[scores={move=942}] at @s run playsound mob.burst @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={move=939}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:dirt0
execute as @s[scores={move=938}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run summon gg:impact_frame
execute as @s[scores={move=937}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:invert ^^^2
execute as @s[scores={move=939}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run camerashake add @a[r=200] 4 0.15 rotational
execute as @s[scores={move=939}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=939}] at @s run execute as @e[tag=whirlwindcombo,c=1] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=940}] at @s run tp @e[tag=whirlwindcombo,tag=arenaboss,c=1] ~ 240 ~ 
execute as @s[scores={move=940}] at @s run tp @e[tag=whirlwindcombo,tag=!arenaboss,c=1] ~ ~ ~ 
execute as @s[scores={move=940}] at @s run damage @e[tag=whirlwindcombo,c=1] 80 suicide

execute as @s[scores={move=940}] at @s if entity @p[tag=arenaboss] run particle ds:reality_crater1 ~ 240 ~ 
execute as @s[scores={move=940}] at @s if entity @p[tag=arenaboss] run particle ds:reality_crater2 ~ 240 ~ 
execute as @s[scores={move=940}] at @s if entity @p[tag=arenaboss] run particle ds:dirt0 ~ 240 ~ 




execute as @s[scores={move=900..933}] at @s run camera @a clear
execute as @s[scores={move=900..933}] at @s run tag @e remove whirlwindcombo
scoreboard players set @s[scores={move=900..932}] move 3