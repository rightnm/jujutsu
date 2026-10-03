playanimation @s[scores={move=100..}] animation.shadow_katana.ab5

tag @s[scores={move=1..2}] remove wep5

scoreboard players set @s[scores={move=1..}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 6
scoreboard players set @s[scores={move=70..}] Camera 4

execute as @s[type=!player] at @s run tp @s ~~~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=90..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=90..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=90..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~



execute as @s[scores={move=100}] at @s run tp @s @s
execute as @s[scores={move=100}] at @s run camera @s set minecraft:free pos ^^^7 facing ~~1~
execute as @s[scores={move=98..99}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^^1^3.5 facing ~~~


execute as @s[scores={move=55..60}] at @s run camera @s clear

event entity @s[scores={move=90}] katana2_sheathdown
event entity @s[scores={move=70}] hazy_moon_on
event entity @s[scores={move=99}] hazy_moon_off
event entity @s[scores={move=1..15}] hazy_moon_off
event entity @s[scores={move=5}] katana2_sheathed

execute as @s[scores={move=70}] at @s run playsound mob.blasted4 @a[r=100] ~~~ 9999 3.75 9999
execute as @s[scores={move=70}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 1.75 9999
execute as @s[scores={move=70}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=70}] at @s run playsound beacon.power @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=70}] at @s run playsound mob.distort3 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=70}] at @s run camerashake add @a[r=40] 4 0.5
execute as @s[scores={move=64..70}] at @s run particle ds:divergent_ac3 ^^1^0.5
execute as @s[scores={move=64..70}] at @s run particle ds:divergent_ac4  ^^1^0.5
execute as @s[scores={move=64..70}] at @s run particle ds:divergent_ac6 ^^1^0.5
execute as @s[scores={move=21..70}] at @s run particle ds:divergent_ac5 ~~1~

execute as @s[scores={move=33}] at @s run particle ds:dirt0
execute as @s[scores={move=30..33}] at @s run particle ds:flashstep1 


execute as @s[scores={move=30..33}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @s ~~~ facing @e[scores={move=30..33},c=1]

effect @s[scores={move=33}] speed 1 30 true
effect @s[scores={move=20..25}] speed 0 50 true

execute as @s[scores={move=33..34}] at @s positioned ^^^7 run function fighting/shadow_style_katana/flashstrike_tp2

execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.sword @a ~~~ 1 0.5
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.slash1 @a ~~~ 1 0.5
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.heavy_swing @a ~~~ 1 1.5
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound mob.wither.hurt @a ~~~ 1 0.25
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run playsound bracon.power @a ~~~ 1 1.25
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run camerashake add @a[r=30] 4 0.15 rotational
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run  particle ds:divergent_ac3 ^^1^1 
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run  particle ds:divergent_ac4 ^^1^1 
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run  particle ds:divergent_ac7 ^^1^1
execute as @s[scores={move=30}] at @s if entity @e[tag=!Frames,r=3.99,tag=flashstrike] run  particle ds:divergent_ac6 ^^1^1 

execute as @s[scores={move=30}] at @s run scoreboard players set @e[tag=!Frames,r=3.99,tag=flashstrike] Flourish 10
execute as @s[scores={move=30}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=flashstrike] Hit 15
execute as @s[scores={move=30}] at @s run scoreboard players add @e[tag=!Frames,r=3.99,tag=flashstrike] Evade 50
execute as @s[scores={move=30}] at @s run scoreboard players operation @e[tag=!Frames,r=3.99,tag=flashstrike] damage += @s damageadd
execute as @s[scores={move=30}] at @s run damage @e[tag=!Frames,r=3.99,tag=flashstrike] 45 override 


execute as @s[scores={move=30..33}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @s @s 
execute as @s[scores={move=30..33}] at @s run execute as @e[tag=flashstrike,c=1] at @s run tp @e[scores={move=30..33},c=1] ^^^2 facing @s 

execute as @s[scores={move=7..30}] at @s run tag @e[tag=flashstrike] remove flashstrike

execute as @s[scores={move=30}] at @s positioned ^^1^1 run particle ds:ground_slam2 
execute as @s[scores={move=30}] at @s positioned ^^1^1 run particle ds:ground_slam3