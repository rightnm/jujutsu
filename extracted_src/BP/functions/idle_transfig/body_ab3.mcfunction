

titleraw @s[scores={move=77..86}] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §eCLICK/PUNCH §l§f>\n\n"}]}
titleraw @s[scores={move=72..76}] title {"rawtext":[{"text":"§f"}]}
execute as @s[scores={move=77..86,punch=1}] at @s run scoreboard players set @s move 1001
execute as @s[scores={move=77..86},tag=itemUse:ds:idle_transfig2] at @s run scoreboard players set @s move 1001



playanimation @s[scores={move=1000..1001}] animation.mahito.body_ab3b

execute as @s[scores={move=996}] at @s run camerashake add @a[r=5] 1 0.15
execute as @s[scores={move=998}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.25 99999
execute as @s[scores={move=996}] at @s run playsound random.anvil_land @a[r=33] ~~1~ 99999 1.25 99999

event entity @s[scores={move=997}] mahito_drill_on

scoreboard players set @s[scores={move=978..987,Camera=0..5}] Camera 10


execute as @s[type=!player] at @s run tp @s ~~~



execute as @s[scores={move=976..985}] at @s run scriptevent ds:knockback 3
scoreboard players set @s[scores={move=976..988}] Frames 6


execute as @s[scores={move=988..992}] at @s run playsound mob.turbulence @a[r=50] ^^1^1  99999 0.8 99999


execute as @s[scores={move=985..987}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=992}] at @s run playsound mob.drill @a[r=50] ^^1^2  99999 1 99999
execute as @s[scores={move=978..985}] at @s run playsound mob.drill @a[r=50] ^^1^1  99999 1.5 99999
execute as @s[scores={move=976..985}] at @s run camerashake add @a[r=5] 0.08 0.15 rotational
execute as @s[scores={move=988..992}] at @s run playsound mob.turbulence @a[r=50] ^^1^1  99999 0.8 99999
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] 3 override
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] Stun 33
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] Hit 3
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] Evade 1
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] at @s run particle ds:transfigure_death4 ~~1~
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] at @s run playsound mob.sword @a ~~-4~ 99999 1 99999
execute as @s[scores={move=976..985}] at @s positioned ^^^4 run tp @e[tag=!Frames,r=3.98,type=!item,type=!xp_orb] ^^^ facing @s

execute as @s[scores={move=976..985}] at @s positioned ^^^4 if entity @p[tag=griefable] unless block ~~~ barrier unless block ~~~ water unless block ~~~ lava unless block ~~~ barrier unless block ~~~ structure_block unless block ~~~ command_block unless block ~~~ repeating_command_block unless block ~~~ chain_command_block run fill ~2 ~3 ~2 ~-2 ~ ~-2 air [] destroy 
execute as @s[scores={move=976..985}] at @s if entity @e[type=item,r=4] run particle ds:sparks ^^1^1 

execute as @s[scores={move=985}] at @s if entity @e[type=item,r=4] run particle ds:burst_sparks2 ^^1^3
execute as @s[scores={move=977}] at @s if entity @e[type=item,r=4] run particle ds:burst_sparks2 ^^1^3 

execute as @s[scores={move=976..985}] at @s run playsound mob.wither.shoot @a[r=50] ^^1^1  99999 1.25 99999

execute as @s[scores={move=966}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 0.8 99999

execute as @s[scores={move=985}] at @s run function damages/slash_damage


scoreboard players set @s[scores={move=900..965}] move 3














execute as @s[type=!Player,scores={move=23..30}] at @s run tp @s ~~~ facing @e[family=!purecurse,scores={detect_health=0..},r=50,c=1]
execute as @s[type=!Player,scores={move=23}] at @s positioned ^^^30 run execute as @e[family=!purecurse,scores={detect_health=0..},r=50,c=1,tag=!Frames] at @s run function idle_transfig/drill_impact



playanimation @s[scores={move=85..86}] animation.mahito.body_ab3

playanimation @s[scores={move=76..86,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=76..86,Stun=1..}] move 3
tag @s[scores={move=76..86,Stun=1..},tag=form5] remove form5

execute as @s[scores={move=81}] at @s run camerashake add @a[r=5] 1 0.15
execute as @s[scores={move=81}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.25 99999
execute as @s[scores={move=75}] at @s run playsound random.anvil_land @a[r=33] ~~1~ 99999 1.25 99999

execute as @s[scores={move=8}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.5 99999

event entity @s[scores={move=76}] mahito_drill_on

scoreboard players set @s[scores={move=10..,Move=0..5}] Move 10
scoreboard players set @s[scores={move=10..31,Camera=0..5}] Camera 10

execute as @s[scores={move=75}] at @s run playsound mob.drill @a[r=50] ^^1^1  99999 1.5 99999
execute as @s[scores={move=70}] at @s run playsound mob.drill @a[r=50] ^^1^1  99999 1.75 99999
execute as @s[scores={move=65}] at @s run playsound mob.drill @a[r=50] ^^1^1  99999 2 99999
execute as @s[scores={move=40..60}] at @s run playsound mob.drill @a[r=50] ^^1^1  99999 2.25 99999

execute as @s[scores={move=30..70}] at @s run camerashake add @a[r=5] 0.15 0.15
execute as @s[scores={move=45}] at @s run playsound mob.turbulence @a[r=50] ^^1^1  99999 0.65 99999

execute as @s[scores={move=73..76}] at @s run scriptevent ds:knockback 1

execute as @s[scores={move=25}] at @s run playsound mob.shock1 @a[r=55] ~~1~ 9999 3 99999
execute as @s[scores={move=24..27}] at @s run scriptevent ds:knockback 1
scoreboard players set @s[scores={move=25..27}] Frames 6
execute as @s[scores={move=23}] at @s run scriptevent ds:raycast 80 6 idle_transfig/drill_impact
execute as @s[scores={move=27}] at @s run playsound mob.wither.shoot @a[r=50] ^^1^1  99999 0.75 99999

execute as @s[scores={move=15..18}] at @s run tp @e[tag=pullback_drill,r=80] ^^^2.5 facing @s
execute as @s[scores={move=15..18}] at @s run scoreboard players set @e[tag=pullback_drill,r=80] knockdown 0
execute as @s[scores={move=15..18}] at @s run scoreboard players set @e[tag=pullback_drill,r=80] Stun 40
execute as @s[scores={move=10..14}] at @s run tag @e[tag=pullback_drill,r=80] remove pullback_drill

execute as @s[scores={move=12}] at @s run function damages/blunt_damage


event entity @s[scores={move=1..4}] mahito_metal_off
tag @s[scores={move=0..3}] remove form5
