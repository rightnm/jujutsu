scoreboard players add @s Energy 0
tp @s ~~~
execute as @e[type=!ds:cursed_closet,r=1] at @s run tp @s ^^^-0.33 facing @s 
execute as @s if block ~~-0.15~ air run tp @s ~~-0.15~
tag @s add Frames
scoreboard players random @s[scores={Energy=0}] EnergyCap 85 100
execute as @s[scores={Energy=0,EnergyCap=100}] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 redstone_torch [] replace soul_torch
execute as @s[scores={Energy=0,EnergyCap=100}] run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 redstone_wire [] replace soul_lantern
execute as @s[scores={EnergyCap=1..99}] run particle ds:closet_aura1 ~~-0.25~
execute as @s[scores={EnergyCap=1..99}] run particle ds:closet_aura2 ~~-0.25~
execute as @s[scores={EnergyCap=100..}] run particle ds:closet_aura_red1 ~~-0.25~
execute as @s[scores={EnergyCap=100..}] run particle ds:closet_aura_red2 ~~-0.25~
scoreboard players set @s[scores={EnergyCap=1..,Energy=0}] Energy 5

execute as @s[scores={EnergyCap=1..99}] at @s run playsound ambient.soulsand_valley.additions @a ~~~ 0.05 1.25
execute as @s[scores={EnergyCap=100}] at @s run  playsound ambient.soulsand_valley.additions @a ~~~ 0.085 0.4

execute as @s[scores={EnergyCap=100}] at @s run camerashake add @a[r=15] 0.08 0.08

execute as @s[tag=!closet_opened] at @s positioned ^^^5 run execute as @p[r=4.99,scores={punch=1}] at @s positioned ^^^4 run scoreboard objectives add countdown1 dummy
execute as @s[tag=!closet_opened] at @s positioned ^^^5 run execute as @p[r=4.99,scores={punch=1}] at @s positioned ^^^4 run scoreboard players set @e[type=ds:cursed_closet,c=1,r=3.99] countdown1 1001

scoreboard players remove @s[scores={countdown1=1..}] countdown1 1

tag @s[scores={countdown1=999}] add closet_opened
execute as @s[scores={countdown1=990}] at @s run camerashake add @a[r=50] 4 0.25
execute as @s[scores={countdown1=990}] at @s run playsound mob.wither.spawn @a[r=100] ~~~ 99999 0.5 99999
playanimation @s[scores={countdown1=999}] animation.cursed_closet.open
playanimation @s[scores={countdown1=900..968}] animation.cursed_closet.opened
scoreboard players set @s[scores={countdown1=900..947}] countdown1 905

scoreboard players random @s[scores={countdown1=950..960,EnergyCap=100}] chance 4 17
scoreboard players random @s[scores={countdown1=950..960,EnergyCap=1..99}] chance -3 14
execute as @s[scores={countdown1=963..965}] at @s run scoreboard objectives add targets dummy


execute as @s[scores={countdown1=950..960,chance=4}] at @s run summon ds:mouth_curse
execute as @s[scores={countdown1=950..960,chance=3}] at @s run summon ds:hair_curse
execute as @s[scores={countdown1=950..960,chance=5}] at @s run summon ds:mushroom_curse
execute as @s[scores={countdown1=950..960,chance=7}] at @s run summon ds:mushroom_curse_big
execute as @s[scores={countdown1=950..960,chance=6}] at @s run summon ds:longshroom_curse
execute as @s[scores={countdown1=950..960,chance=6}] at @s run summon ds:centipede_curse
execute as @s[scores={countdown1=950..960,chance=2,EnergyCap=1..99}] at @s run summon ds:gremlin_curse1
execute as @s[scores={countdown1=950..960,chance=1,EnergyCap=1..99}] at @s run summon ds:flyhead

execute as @s[scores={countdown1=950..960,chance=10}] at @s run summon ds:lizard_curse
execute as @s[scores={countdown1=950..960,chance=11}] at @s run summon ds:brute
execute as @s[scores={countdown1=950..960,chance=12}] at @s run summon ds:brute2
execute as @s[scores={countdown1=950..960,chance=13}] at @s run summon ds:brute3
execute as @s[scores={countdown1=950..960,chance=14}] at @s run summon ds:brute4
execute as @s[scores={countdown1=950..960,chance=15}] at @s run summon ds:grasshopper_curse

execute as @s[scores={countdown1=950..960,chance=16}] at @s run summon ds:azureflames_curse
execute as @s[scores={countdown1=950..960,chance=17}] at @s run summon ds:centipede_grade1


execute as @s[scores={EnergyCap=1..99,countdown1=950..990}] run particle ds:closet_aura_open1 ~~0.3~
execute as @s[scores={EnergyCap=1..99,countdown1=950..990}] run particle ds:closet_aura_open2 ~~0.3~
execute as @s[scores={EnergyCap=100..,countdown1=950..990}] run particle ds:closet_aura_open_red1 ~~0.3~
execute as @s[scores={EnergyCap=100..,countdown1=950..990}] run particle ds:closet_aura_open_red2 ~~0.3~

execute as @s[scores={countdown1=950..960,EnergyCap=1..99}] run execute as @e[scores={targets=1..},r=40] at @s run particle ds:closet_aura_spawn1 ~~1~
execute as @s[scores={countdown1=950..960,EnergyCap=100}] run execute as @e[scores={targets=1..},r=40] at @s run particle ds:closet_aura_spawn_red1 ~~1~

execute as @s[scores={countdown1=949..960,chance=1..}] at @s run scoreboard players set @e[family=purecurse,r=25] targets 1
execute as @s[scores={countdown1=949..960,chance=1..}] at @s run spreadplayers ~ ~ 4 17 @e[family=purecurse,scores={targets=1..},r=2]
execute as @s[scores={countdown1=948..960,chance=1..}] at @s run damage @r[type=!player,family=purecurse,r=25] 1 entity_attack entity @s
execute as @s[scores={countdown1=948..960,chance=1..}] at @s run damage @r[type=!player,family=purecurse,r=25] 1 entity_attack entity @p[tag=!curse,r=30]

execute as @s[scores={countdown1=900..906}] at @s run execute as @e[family=purecurse,r=4.5] run particle ds:damaged_box ~~-0.15~
execute as @s[scores={countdown1=900..906}] at @s run execute as @e[family=purecurse,r=4.5] run scoreboard players add @e[type=ds:cursed_closet,c=1] Evade 1
execute as @s[scores={countdown1=900..906}] at @s run execute as @a[tag=curse,r=4.5,scores={detect_left=1..}] run scoreboard players add @e[type=ds:cursed_closet,c=1] Evade 2
execute as @s[scores={countdown1=900..906}] at @s run execute as @a[tag=curse,r=4.5,tag=abilitying] run scoreboard players add @e[type=ds:cursed_closet,c=1] Evade 2
execute as @s[scores={countdown1=900..906}] at @s run execute as @e[family=purecurse,r=4.5,family=grade2] run scoreboard players add @e[type=ds:cursed_closet,c=1] Evade 1
execute as @s[scores={countdown1=900..906}] at @s run execute as @e[family=purecurse,r=4.5,family=grade1] run scoreboard players add @e[type=ds:cursed_closet,c=1] Evade 1
execute as @s[scores={Evade=1000..}] at @s run particle ds:large_impact1 ~~-0.25~
execute as @s[scores={Evade=1000..}] at @s run particle ds:large_impact2 ~~-0.25~
execute as @s[scores={Evade=1000..}] at @s run particle ds:ground_slam1 ~~-0.25~
execute as @s[scores={Evade=1000..}] at @s run particle ds:ground_slam3 ~~-0.25~
execute as @s[scores={Evade=1000..}] at @s run particle ds:ground_slam2 ~~-0.25~
execute as @s[scores={Evade=1000..,EnergyCap=1..99}] at @s run particle ds:closet_aura_release1 ~~-0.25~
execute as @s[scores={Evade=1000..,EnergyCap=100}] at @s run particle ds:closet_aura_release_red1 ~~-0.25~
execute as @s[scores={Evade=1000..}] at @s run camerashake add @a[r=50] 4 0.25
execute as @s[scores={Evade=1000..}] at @s run playsound random.explode @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={Evade=1000..}] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.82 9999
execute as @s[scores={Evade=1000..}] at @s run summon ds:lapse_explode ~~-1~
execute as @s[scores={Evade=1000..}] at @s run summon ds:lapse_explode ~~-1~
execute as @s[scores={Evade=1000..}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={Evade=1000..}] at @s run effect @e[family=purecurse,r=15] strength 120 3
execute as @s[scores={Evade=1000..}] at @s run effect @e[family=purecurse,r=15] speed 120 2
execute as @s[scores={Evade=1000..}] at @s run effect @e[family=purecurse,r=15] health_boost 120 10
execute as @s[scores={Evade=1000..}] at @s run effect @e[family=purecurse,r=15] instant_health 2 10
execute as @s[scores={Evade=1000..,EnergyCap=1..99}] at @s run execute as @e[tag=cursed_box_mission,tag=curse,r=30] at @s run function missions/rewards/cursed_box_mission_curses1
execute as @s[scores={Evade=1000..,EnergyCap=100}] at @s run execute as @e[tag=cursed_box_mission,tag=curse,r=30] at @s run function missions/rewards/cursed_box_mission_curses2
execute as @s[scores={Evade=1000..}] at @s run kill @s

execute as @s[scores={countdown1=900..906,EnergyCap=1..99}] at @s unless entity @e[scores={targets=1..},r=100] run function cursed_closet_loot
execute as @s[scores={countdown1=900..906,EnergyCap=100..}] at @s unless entity @e[scores={targets=1..},r=100] run function cursed_closet_loot2