playanimation @s[scores={move=60},tag=wep4,tag=exterminationsword] animation.extermination_ab4
execute as @s[scores={move=60},tag=wep4,tag=exterminationsword] at @s run tp @s ~~-0.44~

tag @s[scores={move=1..2},tag=wep4,tag=exterminationsword] remove wep4

scoreboard players set @s[scores={move=4..},tag=wep4,tag=exterminationsword] Hyper 4
scoreboard players set @s[scores={move=4..},tag=wep4,tag=exterminationsword] Move 4
scoreboard players set @s[scores={move=4..},tag=wep4,tag=exterminationsword] Camera 4
scoreboard players set @s[scores={move=4..},tag=wep4,tag=exterminationsword] Frames 4

execute as @s[scores={move=56..},tag=wep4,tag=exterminationsword] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=56..},tag=wep4,tag=exterminationsword] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=56..},tag=wep4,tag=exterminationsword] at @s if block ~~-1~ air run tp @s ~~-1~


execute as @s[scores={move=35..50},tag=wep4,tag=exterminationsword] at @s unless entity @e[tag=ExtCombo,r=60] run playanimation @s animation.extermination_idle
execute as @s[scores={move=35..50},tag=wep4,tag=exterminationsword] at @s unless entity @e[tag=ExtCombo,r=60] run scoreboard players set @s move 3

execute as @s[scores={move=33..55},tag=wep4,tag=exterminationsword] at @s run tp @s @s

execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s run function damages/blunt_damage
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run tag @e[tag=!Frames,r=3.249] add ExtCombo
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run damage @e[tag=!Frames,r=3.249] 2 override
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players set @e[tag=!Frames,r=3.249] Stun 55
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players add @e[tag=!Frames,r=3.249] Evade 2
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players add @e[tag=!Frames,r=3.249] Hit 5
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run playsound random.explode @a[r=100] ~~~ 999999 2 999999
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run playsound mob.wither.shoot @a[r=100] ~~~ 999999 1.5 999999
execute as @s[scores={move=53..54},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run tp @e[tag=ExtCombo] ^^20^2 facing @s
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run particle ds:dirt2
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run particle ds:ground_slam1 ~~~
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run particle ds:ground_slam3 ~~~
execute as @s[scores={move=55},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run particle ds:leap ~~~

execute as @e[tag=ExtCombo,c=5] at @s run tp @s @s

execute as @s[scores={move=29..32},tag=wep4,tag=exterminationsword] at @s run tag @e[rm=60] remove ExtCombo
execute as @s[scores={move=29..32},tag=wep4,tag=exterminationsword] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=29..32},tag=wep4,tag=exterminationsword] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=22..32},tag=wep4,tag=exterminationsword] at @s run execute as @e[tag=ExtCombo,r=60] at @s run tp @e[scores={move=21..32},tag=wep4,tag=exterminationsword,c=1] ^^2^5 facing @s

execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s run function damages/slash_damage
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run  camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run playsound mob.slash1 @a[r=100] ~~~ 999999 0.75 999999
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run playsound mob.wither.shoot @a[r=100] ~~~ 999999 1.65 999999
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^11 run summon ds:lapse_explode
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^14 run summon ds:lapse_explode
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^18 run summon ds:lapse_explode
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^15 run execute as @e[type=ds:lapse_explode,r=60] at @s run particle ds:ground_slam3
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run damage @e[tag=!Frames,tag=ExtCombo,r=20] 25 override
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players operation @e[tag=!Frames,tag=ExtCombo,r=20] damagehalf += @s damageadd
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players set @e[tag=!Frames,tag=ExtCombo,r=20] Stun 35
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players set @e[tag=!Frames,tag=ExtCombo,r=20] knockdown 95
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players add @e[tag=!Frames,tag=ExtCombo,r=20] Evade 25
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run scoreboard players add @e[tag=!Frames,tag=ExtCombo,r=20] Hit 15
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run effect @e[tag=!Frames,tag=ExtCombo,r=20] resistance 1 10 true
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^15 run tp @e[tag=ExtCombo,tag=!Frames,r=20] ~~~
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run tp @e[tag=ExtCombo] ^^-3^20 facing @s
execute as @s[scores={move=23},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run execute as @e[tag=ExtCombo] at @s unless block ~~1~ air run spreadplayers ~ ~ 1 2 @s

execute as @s[scores={move=1..10},tag=wep4,tag=exterminationsword] at @s positioned ^^^3.25 run tag @e[tag=ExtCombo] remove ExtCombo

