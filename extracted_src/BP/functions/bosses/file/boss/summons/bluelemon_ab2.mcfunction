playanimation @s[scores={move=35..36}] animation.bluelemon.water_stream1


execute as @s[scores={move=17..},type=!player] at @s run tp @s ~~~ facing @e[family=!heroic,scores={detect_health=0..},c=1]
execute as @s[scores={move=17}] at @s run playsound mob.enderdragon.flap @a[r=200] ~~~ 99999 1.25 99999

execute as @s[scores={move=10..16},type=!player] at @s unless entity @e[family=!heroic,scores={detect_health=0..},c=1,r=2.5] run scriptevent ds:knockback 3.5
execute as @s[scores={move=10..16},type=player] at @s unless entity @e[tag=!Frames,c=1,r=2.5] run scriptevent ds:knockback 3.5

execute as @s[scores={move=22},type=!player] at @s run particle ds:parrymarker ~~1~
execute as @s[scores={move=22},type=!player] at @s run playsound mob.flash @a[r=300] ~~~ 99999 1.2 99999

execute as @s[scores={move=16}] at @s run particle ds:leap
execute as @s[scores={move=16}] at @s run particle ds:ground_slam2


execute as @s[scores={move=11..17},type=!player] at @s run execute as @a[scores={punch=1..},r=6,tag=!Frames] at @s anchored eyes positioned ^^^0.5 run function parry

execute as @s[scores={move=11..15},type=!player] at @s run scoreboard players set @e[family=!heroic,scores={detect_health=0..},c=1,r=3,tag=!Frames] Stun 50
execute as @s[scores={move=11..15},type=!player] at @s if entity @e[family=!heroic,scores={detect_health=0..},c=1,r=3,tag=!Frames] run scoreboard players set @s move 1001


execute as @s[scores={move=11..15},type=player] at @s run scoreboard players set @e[c=1,r=3,tag=!Frames] Stun 50
execute as @s[scores={move=11..15},type=player] at @s if entity @e[c=1,r=3,tag=!Frames] run scoreboard players set @s move 1001

playanimation @s[scores={move=1000..}] animation.bluelemon.water_stream2

scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..}] Frames 10
execute as @s[scores={move=984..}] at @s run tp @s @s
execute as @s[scores={move=984..}] at @s run tp @s ^^^0.15
execute as @s[scores={move=984..}] at @s run tp @e[family=!heroic,scores={detect_health=0..,Stun=1..},c=1,r=3,tag=!Frames] ^^^1 facing ~~~
execute as @s[scores={move=984..}] at @s run camera @p[family=!heroic,scores={detect_health=0..,Stun=1..},c=1,r=3,tag=!Frames] set minecraft:free ease 0.08 in_sine pos ^1.25^2.5^-2 facing ^^1^1

execute as @s[scores={move=1000}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.5
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 2
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 2
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=1000}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=997}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=997}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=997}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=997}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=997}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.95
execute as @s[scores={move=997}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=997}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=997}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=997}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=997}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=995}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=995}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=995}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=995}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=995}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.95
execute as @s[scores={move=995}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=995}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=995}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=995}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=995}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=992}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=992}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=992}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=992}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=992}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 2
execute as @s[scores={move=992}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=992}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=992}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=992}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=992}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=989}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=989}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=989}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=989}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.35
execute as @s[scores={move=989}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.8
execute as @s[scores={move=989}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=989}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=989}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=989}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=989}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=986}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=986}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=986}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=986}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.4
execute as @s[scores={move=986}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.9
execute as @s[scores={move=986}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=986}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=986}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=986}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=986}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=984}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=984}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=984}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=984}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=984}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.95
execute as @s[scores={move=984}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=984}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=984}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=984}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=984}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=981}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=981}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=981}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=981}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=981}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.95
execute as @s[scores={move=981}] at @s positioned ^^1^1 run playsound random.explode @a ~~~ 0.5 1.95
execute as @s[scores={move=981}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 3 suicide
execute as @s[scores={move=981}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=981}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=981}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned


execute as @s[scores={move=980}] at @s positioned ^^1^1 run particle ds:heavy_impact3
execute as @s[scores={move=980}] at @s positioned ^^1^1 run particle ds:heavy_impact2
execute as @s[scores={move=980}] at @s positioned ^^1^1 run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=980}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1.45
execute as @s[scores={move=980}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1.95
execute as @s[scores={move=980}] at @s positioned ^^1^1 run playsound mob.wither.break_block @a ~~~ 0.5 0.5
execute as @s[scores={move=980}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 5 suicide
execute as @s[scores={move=980}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Stun 40
execute as @s[scores={move=980}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=980}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned

execute as @s[scores={move=976}] at @s positioned ^^1^1 run particle ds:large_impact2
execute as @s[scores={move=976}] at @s positioned ^^1^1 run particle ds:large_impact1
execute as @s[scores={move=976}] at @s positioned ^^1^1 run camerashake add @a[r=20] 3 0.15
execute as @s[scores={move=976}] at @s positioned ^^1^1 run playsound mob.punch1 @a ~~~ 0.5 1
execute as @s[scores={move=976}] at @s positioned ^^1^1 run playsound mob.shock1 @a ~~~ 0.5 1
execute as @s[scores={move=976}] at @s positioned ^^1^1 run playsound mob.wither.break_block @a ~~~ 0.5 0.25
execute as @s[scores={move=976}] at @s positioned ^^1^1 run damage @e[family=!heroic,tag=!Frames,r=3] 5 suicide
execute as @s[scores={move=976}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Flourish 11
execute as @s[scores={move=976}] at @s positioned ^^1^1 run scoreboard players set @e[family=!heroic,tag=!Frames,r=3] Hit 2
execute as @s[scores={move=976}] at @s positioned ^^1^1 run playanimation @e[family=!heroic,tag=!Frames,r=3] animation.stunned



tag @s[scores={move=1..3}] remove wep2

execute as @s[scores={move=37..975}] at @s run camera @a clear
scoreboard players set @s[scores={move=37..975}] move 3
