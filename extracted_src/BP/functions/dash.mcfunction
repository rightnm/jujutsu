
scoreboard players set @s[scores={Dash=1..,Move=1..}] Dash 0
scoreboard players set @s[scores={Dash=1..}] Frames 5

playanimation @e[scores={Dash=11},tag=!ChargeDash,tag=!infinitydash] animation.dash
execute as @p[tag=delusional,scores={Dash=11},tag=!ChargeDash,tag=!infinitydash] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.dash

execute as @s[scores={Dash=11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run playsound mob.wither.shoot @a[r=99] ~~~ 99999 1.5 99999
execute as @s[scores={Dash=11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run playsound mob.shocked2 @a[r=99] ~~~ 99999 0.72 99999
execute as @s[scores={Dash=11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run particle ds:lightning_cloak_dash2 ~~~
execute as @s[scores={Dash=11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run particle ds:lightning_cloak_dash3 ~~~

scoreboard players set @s[scores={DashCD=-99999..-1}] DashCD 5

execute as @s[scores={Dash=11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run particle ds:lightning_shockwave1 ~~1~

execute as @s[scores={Dash=1,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run particle ds:lightning_cloak_dash2 ~~~
execute as @s[scores={Dash=1,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run particle ds:lightning_cloak_dash3 ~~~

execute as @s[scores={Dash=11},tag=!ChargeDash,tag=!infinitydash] at @s run playsound mob.witch.throw @a ~~~ 1 0.8
execute as @s[scores={Dash=10..11,agility=0..24},tag=!ChargeDash,tag=!infinitydash] at @s run scriptevent ds:knockback 2
execute as @s[scores={Dash=9..11,agility=25..49},tag=!ChargeDash,tag=!infinitydash] at @s run scriptevent ds:knockback 3
execute as @s[scores={Dash=8..11,agility=50..},tag=!ChargeDash,tag=!infinitydash] at @s run scriptevent ds:knockback 4
execute as @s[scores={Dash=10..11,ltncloak=1..},tag=!ChargeDash,tag=!infinitydash] at @s run scriptevent ds:knockback 12




scoreboard players set @e[scores={Dash=9..},tag=!ChargeDash,tag=!infinitydash]  DashCD 60
scoreboard players operation @s[scores={Dash=8},tag=!ChargeDash,tag=!infinitydash] DashCD -= @s agility
scoreboard players set @e[scores={Dash=11..},tag=!ChargeDash,tag=!infinitydash] Frames 10
execute as @s[scores={Dash=1..,Frames=1..},tag=!ChargeDash,tag=!infinitydash] at @s if entity @e[scores={atk=1..},r=4,rm=0.2] run particle ds:dodge ~~~

execute as @a[scores={Dash=1..},tag=!ChargeDash,tag=infinitydash] at @s run function infinity_dash

effect @a[scores={Dash=1..4},tag=!ChargeDash,tag=!infinitydash] levitation 0 80 true

execute as @s[scores={Dash=11..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run summon ds:dash ^^^
execute as @s[scores={Dash=11..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run playanimation @s animation.updash
execute as @s[tag=delusional,scores={Dash=11..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run playanimation @e[type=ds:takada_chan,c=1] animation.updash


execute as @s[scores={Dash=11..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 22 true
execute as @s[scores={Dash=11..,agility=10..19},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 22 true
execute as @s[scores={Dash=11..,agility=20..29},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 24 true
execute as @s[scores={Dash=11..,agility=30..39},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 26 true
execute as @s[scores={Dash=11..,agility=40..49},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 28 true
execute as @s[scores={Dash=11..,agility=50..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run effect @s levitation 1 30 true
execute as @s[scores={Dash=11..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run particle ds:double_jump
execute as @s[scores={Dash=11},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run playsound mob.bat.takeoff @a ~~~ 1 1.2
execute as @s[scores={Dash=5..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run scoreboard players set @s DashCD 65
execute as @s[scores={Dash=5..},rx=-25,tag=!ChargeDash,tag=!infinitydash] at @s if block ~~-0.5~ air run scoreboard players operation @s DashCD -= @s agility

playanimation @e[scores={Dash=27},tag=ChargeDash] animation.charge_dash

execute as @s[scores={Dash=9..10},tag=ChargeDash] at @s positioned ^^^35 unless entity @e[tag=ChargeTRG,r=35] run scoreboard players set @s Dash 2
execute as @s[tag=ChargeTRG] at @s unless entity @e[tag=ChargeDash] run tag @s remove ChargeTRG

execute as @s[scores={Dash=17},tag=ChargeDash] at @s positioned ^^^7 run function chargetrg

scoreboard players set @s[scores={Dash=5..},tag=ChargeDash,tag=!infinitydash] DashCD 60
scoreboard players set @s[scores={Dash=10..17},tag=ChargeDash,tag=!infinitydash] Camera 5


execute as @s[scores={Dash=8..},tag=ChargeDash] at @s run tp @s ~~~

execute as @s[scores={Dash=6..13},tag=ChargeDash] at @s run titleraw @a[tag=ChargeTRG,c=1] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}
execute as @s[scores={Dash=4..5},tag=ChargeDash] at @s run title @a[tag=ChargeTRG,c=1] title §l

execute as @s[scores={Dash=13},tag=ChargeDash] at @s positioned ^^^30 run execute as @e[tag=ChargeTRG,c=1] at @s run tp @s @s
execute as @s[scores={Dash=13},tag=ChargeDash] at @s positioned ^^^30 run execute as @e[tag=ChargeTRG,c=1] at @s run tp @e[tag=ChargeDash,c=1] ^^^-1 facing @s
execute as @s[scores={Dash=13},tag=ChargeDash] at @s positioned ^^^30 run scoreboard players set @e[tag=ChargeTRG,c=1,scores={knockdown=1..}] knockdown 0
execute as @s[scores={Dash=13},tag=ChargeDash] at @s positioned ^^^30 run scoreboard players set @e[tag=ChargeTRG,c=1,scores={knock=1..}] knock 0

execute as @s[scores={Dash=7..11},tag=ChargeDash] at @s run playanimation @e[tag=ChargeTRG,c=1,scores={punch=1}] animation.charge_dash_parried
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run damage @s 10 
execute as @s[scores={Dash=1..9},tag=ChargeDash] at @s run execute as @e[tag=ChargeTRG,c=1] at @s run tp @s ~~~
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run execute as @e[tag=ChargeTRG,c=1] at @s run summon ds:red_reverse ~~~
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run effect @s levitation 1 10 true
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run playsound random.explode @a ~~~ 1 1.5
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run camerashake add @a[r=20] 4 0.25
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run execute as @e[tag=ChargeTRG,c=1] at @s run particle ds:ground_slam2 ^^^-1
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run execute as @e[tag=ChargeTRG,c=1] at @s run particle ds:heavy_impact1 ^^^-1
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run execute as @e[tag=ChargeTRG,c=1] at @s run particle ds:heavy_impact2 ^^^-1
execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run execute as @e[tag=ChargeTRG,c=1] at @s run particle ds:heavy_impact3 ^^^-1

execute as @s[scores={Dash=6..9},tag=ChargeDash] at @s if entity @e[tag=ChargeTRG,c=1,scores={punch=1}] run scoreboard players set @s Dash 5


execute as @s[scores={Dash=11..14},tag=ChargeDash] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 1.7 99999
execute as @s[scores={Dash=11..14},tag=ChargeDash] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 99999 1.37 99999
execute as @s[scores={Dash=11..18},tag=ChargeDash] at @s run particle ds:flashstep1
execute as @s[scores={Dash=11..18},tag=ChargeDash] at @s run particle ds:flashstep2
execute as @s[scores={Dash=11..18},tag=ChargeDash] at @s run particle ds:flashstep3

execute as @s[scores={Dash=9..12},tag=ChargeDash] at @s run particle ds:ground_dust2

execute as @s[scores={Dash=11..12},tag=ChargeDash] at @s run particle ds:evade3 ~~~

execute as @s[scores={Dash=1..2},tag=ChargeDash] at @s  run function removechargedash