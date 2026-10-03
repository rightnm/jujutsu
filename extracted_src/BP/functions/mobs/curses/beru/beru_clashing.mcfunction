

scoreboard players set @e[r=33,type=!ds:projectile] Stun 100
scoreboard players set @e[r=33,type=!ds:projectile] chance 0
scoreboard players set @e[r=33,type=!ds:projectile] Camera 25
scoreboard players set @e[r=33,type=!ds:projectile] Move 25
scoreboard players set @e[r=33,type=!ds:projectile] Disabled 100

execute as @s[scores={cutscene=10000..}] at @s run playanimation @s animation.beru.clash_start
execute as @s[scores={cutscene=10000..}] at @s run playanimation @e[tag=beru_clashhit,c=1] animation.beru.clash_start_human

execute as @s at @s run tp @s ~~~~ 0
execute as @e[tag=beru_clashhit] at @s run tp @s ~~~~ 0


execute as @s[scores={cutscene=1..9990}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run tp @e[tag=beru_clash,c=1] ^^^4.75 facing @s

effect @s[scores={cutscene=1..5}] slow_falling 10 1 true

execute as @s[scores={cutscene=10000}] at @s run camera @a[tag=beru_clashhit,c=1] set minecraft:free  pos ^^3^5 facing ~~~
execute as @s[scores={cutscene=9991}] at @s run particle ds:crater2
execute as @s[scores={cutscene=9991}] at @s run particle ds:ground_pound1
execute as @s[scores={cutscene=9991}] at @s run particle ds:ground_pound2
execute as @s[scores={cutscene=9991}] at @s run particle ds:ground_pound3
execute as @s[scores={cutscene=9991}] at @s run particle ds:ground_pound4
execute as @s[scores={cutscene=9991}] at @s run camerashake add @a[r=100] 2 0.15 rotational
execute as @s[scores={cutscene=9991}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9991}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9991}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.75 99999


execute as @s[scores={cutscene=9700..9990}] at @s run camera @a[tag=beru_clashhit,c=1] set minecraft:free pos ^-25^1^2.5 facing ~~~

execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=9970}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.35 99999
execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.6 99999
execute as @s[scores={cutscene=9975}] at @s run title @a[tag=!impactframesoff,tag=beru_clashhit] title 
execute as @s[scores={cutscene=9974}] at @s run title @a[tag=!impactframesoff,tag=beru_clashhit] title 
execute as @s[scores={cutscene=9973}] at @s run title @a[tag=!impactframesoff,tag=beru_clashhit] title .                                .
execute as @s[scores={cutscene=9974}] at @s run summon gg:impact_frame
execute as @s[scores={cutscene=9973}] at @s run particle ds:invert ^^1^1
execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:large_impact1 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:demons_descent4 ^^1^2
execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:sky_clash1 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:sky_clash2 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:sky_clash3 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:sky_clash_energy_red ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:ant_fly1 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:ant_fly2 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:ground_impact2 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={cutscene=9973}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:ground_slam3 ^^1^2
execute as @s[scores={cutscene=9967}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:large_shockwave ^^1^2

execute as @s[scores={cutscene=9975}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run camerashake add @a 2 0.5 rotational

execute as @s[scores={cutscene=9930..9940}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 1.5 9999
execute as @s[scores={cutscene=9930..9940}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 99999 1.5 9999
execute as @s[scores={cutscene=9930..9940}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run particle ds:agito_dash1 ^^-2^-18
execute as @s[scores={cutscene=9930..9940}] at @s run particle ds:agito_dash1 ^^-2^-18
execute as @s[scores={cutscene=9930..9940}] at @s run camerashake add @a[r=100] 0.15 0.15

execute as @s[scores={cutscene=5..9990}] at @s run camera @a[tag=beru_clashhit,c=1] set minecraft:free pos ^-30^5^5 facing ~~~
execute as @s[scores={cutscene=5..9925}] at @s run camerashake add @a[r=100] 0.75 0.15
execute as @s[scores={cutscene=5..9925}] at @s run playsound mob.slash1 @a[r=100] ~~22 ~ 999999 2 999999
execute as @s[scores={cutscene=5..9925}] at @s run playsound mob.slash @a[r=100] ~~22 ~ 999999 3.33 999999
execute as @s[scores={cutscene=5..9925}] at @s run playsound mob.shock1 @a[r=100] ~~22 ~ 999999 2 999999
execute as @s[scores={cutscene=5..9925}] at @s run particle ds:rampage_area
execute as @s[scores={cutscene=5..9925}] at @s run playanimation @e[r=25] animation.beru.invisible
execute as @s[scores={cutscene=5..9925}] at @s run execute as @e[tag=beru_clashhit,c=1] at @s run tp @s ^^0.1^1.33
execute as @s[scores={cutscene=5..9925}] at @s run effect @s invisibility 2 1 true
execute as @s[scores={cutscene=5..9925}] at @s run effect @e[tag=beru_clashhit,c=1] invisibility 2 1 true



execute as @s[scores={cutscene=9925..9926}] at @s unless entity @s[scores={clash_score=0..}] run scoreboard players add @s clash_score 0
execute as @s[scores={cutscene=9925..9926}] at @s run execute as @a[tag=beru_clashhit,c=1,r=8] at @s unless entity @s[scores={clash_score=0..}] run scoreboard players add @s clash_score 0
execute as @s[scores={cutscene=5..9925}] at @s run scoreboard players add @a[tag=beru_clashhit,scores={detect_left=1},c=1,r=8] clash_score 3
execute as @s[scores={cutscene=5..9925}] at @s run scoreboard players add @a[tag=beru_clashhit,scores={punch=1},c=1,r=8] clash_score 3
scoreboard players set @a[scores={punch=1..},r=8] punch 0
scoreboard players set @a[scores={detect_left=1..},r=8] detect_left 0

execute as @s[scores={cutscene=5..9800}] at @s run scoreboard players random @s[tag=beru_clash,c=1,r=8] clash_score -300 101
execute as @s[scores={cutscene=5..9650}] at @s run scoreboard players set @e[tag=beru_clash,c=1,r=8] clash_score 101

execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run scoreboard players set @e[r=25] Frames 0
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run tag @e[r=25] remove Frames
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run scoreboard players set @s Frames 20
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run tag @s add Frames
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run damage @e[r=25] 200 override
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run scoreboard players set @e[r=25] Stun 35
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run scoreboard players set @e[r=25] Hit 5
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run particle ds:large_shockwave ~~1~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run particle ds:demons_descent4 ~~1~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run particle ds:ground_impact2 ~~1~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run camerashake add @a[r=200] 4 0.25 rotational
execute as @s[scores={cutscene=1..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run camera @a clear
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run playanimation @s animation.deadly_strike
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run effect @a[r=100] clear invisibility
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run tellraw @s {"rawtext":[{"text":"§a- You won the clash!"}]}
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run tag @e remove beru_clashhit
execute as @s[scores={cutscene=5..9920}] at @s run execute as @e[scores={clash_score=100..}] at @s run scoreboard players set @e[r=100,scores={cutscene=5..}] cutscene 4
execute as @s[scores={cutscene=1..5}] at @s run scoreboard players set @e[r=100,scores={clash_score=1..}] clash_score 0
execute as @s[scores={cutscene=1..5}] run tag @e remove beru_clashhhit
execute as @s[scores={cutscene=1..5}] run tag @e remove beru_clash


execute as @s[scores={cutscene=5..9925,clash_score=0..5},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=5..10},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=11..16},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=17..23},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=24..30},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=31..35},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=36..40},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=41..50},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=51..65},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=66..80},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=81..99},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925,clash_score=100..},type=player] run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}

execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=0..5}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a§4☐☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=5..10}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐§4☐☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=11..16}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐§4☐☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=17..23}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐§4☐☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=24..30}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐§4☐☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=31..35}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐§4☐☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=36..40}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐§4☐☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=41..50}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐§4☐☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=51..65}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐§4☐☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=66..80}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐§4☐☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=81..99}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐§4☐ §l§f]=-§r"}]}
execute as @s[scores={cutscene=5..9925}] run titleraw @p[tag=beru_clashhit,c=1,r=8,scores={clash_score=100..}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §aPUNCH §l§f>\n\n§l§f-=[ §l§a☐☐☐☐☐☐☐☐☐☐☐§4 §l§f]=-§r"}]}











