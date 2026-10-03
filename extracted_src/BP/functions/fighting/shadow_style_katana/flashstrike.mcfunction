playanimation @s[scores={move=39..}] animation.shadow_katana.ab2

tag @s[scores={move=1..2}] remove wep2

tag @s[scores={move=31..,Stun=1..}] remove wep2
scoreboard players set @s[scores={move=31..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..30}] Frames 6
scoreboard players set @s[scores={move=11..}] Move 6
scoreboard players set @s[scores={move=11..20}] Camera 6

scoreboard players random @s[scores={move=22}] blackflashchance 1 269
scoreboard players set @s[scores={move=22},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=14}] at @s run function damages/slash_damage
scoreboard players set @e[scores={move=14..16}] atk 2

event entity @s[scores={move=20}] katana2_sheathdown
event entity @s[scores={move=1..5}] katana2_sheathed

execute as @s[scores={move=38}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 0.4 9999

execute as @s[scores={move=35}] at @s run particle ds:dirt0
execute as @s[scores={move=29}] at @s run particle ds:dirt0
execute as @s[scores={move=23}] at @s run particle ds:dirt0
execute as @s[scores={move=22..35}] at @s run particle ds:divergent_ac5 ~~~
execute as @s[scores={move=22..35}] at @s run camerashake add @a[r=5] 0.15 0.08
execute as @s[scores={move=18..21}] at @s run playsound mob.bat.takeoff @a[r=30] ~~~ 9999 1.1 9999
execute as @s[scores={move=18..21}] at @s run playsound mob.enderdragin.flap @a[r=30] ~~~ 9999 1.5 9999
execute as @s[scores={move=18..21}] at @s run camerashake add @a[r=5] 0.15 0.08


execute as @s[scores={move=1..}] at @s run tp @e[type=ds:simple_domain,c=1] ~~~

execute as @s[scores={move=18}] at @s run particle ds:dirt0
execute as @s[scores={move=17..21}] at @s run particle ds:flashstep1 


execute as @s[scores={move=10..20}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @s ~~~ facing @e[scores={move=10..20},c=1]

effect @s[scores={move=21}] speed 1 30 true
effect @s[scores={move=10..15}] speed 0 50 true

execute as @s[scores={move=21}] at @s positioned ^^^7 run function fighting/shadow_style_katana/flashstrike_tp

execute as @s[scores={move=17}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.sword @a ~~~ 1 0.75
execute as @s[scores={move=17}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.slash1 @a ~~~ 1 1

execute as @s[scores={move=17}] at @s run scoreboard players set @e[tag=!Frames,r=3.99,tag=flashstrike] Stun 15
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=flashstrike] Hit 7
execute as @s[scores={move=17}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=flashstrike] Evade 10
execute as @s[scores={move=17}] at @s run scoreboard players operation @e[tag=!Frames,r=3.99,tag=flashstrike] damagehalf += @s damageadd

execute as @s[scores={move=17}] at @s run damage @e[tag=!Frames,r=3.99,tag=flashstrike] 14 override 


execute as @s[scores={move=17..21}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @s @s 
execute as @s[scores={move=17..21}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @e[scores={move=14..18},c=1] ^^^2 facing @s 
execute as @s[scores={move=11..20}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @s ~~0.44~

execute as @s[scores={move=7..10}] at @s run tag @e[tag=flashstrike] remove flashstrike


execute as @s[scores={move=17}] at @s positioned ^^^ run camerashake add @a[r=20] 0.15 0.1
execute as @s[scores={move=17}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=17}] at @s positioned ^^1^1 run particle ds:ground_slam3
