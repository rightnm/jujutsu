playanimation @s[scores={move=30..31}] animation.mahito.human_ab1

tag @s[scores={move=1..2},tag=form8] remove form8

tag @s[scores={move=26..,Stun=1..},tag=form8] remove form8
playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0


execute as @s[scores={move=30}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 0.5 99999

execute as @s[scores={move=24..26}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 1 99999
execute as @s[scores={move=24..26}] at @s run event entity @s mahito_clankers
execute as @s[scores={move=4..5}] at @s run event entity @s mahito_metal_off
execute as @s[scores={move=5}] at @s run summon ds:clankers ~~~ facing ^^^10





scoreboard players set @s[scores={move=11..,Move=0..4}] Move 10

tag @s[scores={move=23..25}] add Frames
tag @s[scores={move=1..5}] remove Frames
scoreboard players set @s[scores={move=23..25}] Frames 25

scoreboard players random @s[scores={move=26}] blackflashchance 1 269
scoreboard players set @s[scores={move=26},tag=blackflashrig] blackflashchance 7

#Swing 1

execute as @s[scores={move=23},tag=!creative] at @s run scriptevent ds:remove_humans 2

execute as @s[scores={move=23}] at @s run scriptevent ds:knockback 7
execute as @s[scores={move=23}] at @s run playsound mob.whoop2 @a[r=25] ^^1^1  99999 1.25 99999
execute as @s[scores={move=23}] at @s run camerashake add @a[r=5] 0.5 0.15

execute as @s[scores={move=23}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=18}] at @s run effect @s clear speed

scoreboard players set @s[scores={move=23}] atk 3
execute as @s[scores={move=23}] at @s run particle ds:swift_air
execute as @s[scores={move=23}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={move=23},c=1]
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 12
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=23},c=1] damageadd 
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.metal1 @a[r=50] ~~1~ 99999 1.6 99999
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound random.anvil_land @a[r=50] ~~1~ 99999 1 99999
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 10
execute as @s[scores={move=23}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Flourish 2

#Swing 2
execute as @s[scores={move=15}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=15}] at @s run playsound mob.whoop1 @a[r=25] ^^1^1  99999 1 99999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=5] 0.5 0.15

execute as @s[scores={move=15}] at @s run effect @s speed 1 10 true
execute as @s[scores={move=13}] at @s run effect @s clear speed


execute as @s[scores={move=23}] at @s run function damages/blunt_damage

execute as @s[scores={move=15}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={move=15}] atk 3
execute as @s[scores={move=15}] at @s run particle ds:swift_air
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={move=15},c=1]
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players add @s Evade 12
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s knockdown 25
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players operation @s damage += @e[scores={move=15},c=1] damageadd 
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:heavy_impact ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound mob.metal1 @a[r=50] ~~1~ 99999 1.15 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run playsound random.anvil_land @a[r=50] ~~1~ 99999 0.6 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run camerashake add @a[r=20] 4 0.25
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run damage @s 14 override
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run execute as @e[tag=!Frames,r=3] at @s unless entity @s[scores={Hit=1..}] at @s run scoreboard players set @s Hit 7
execute as @s[scores={move=14..15}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run particle ds:ground_pound1
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run particle ds:ground_pound2
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run particle ds:ground_pound3
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run particle ds:ground_pound4
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run playsound random.explode @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run playsound mob.wither.break_block @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=14}] at @s positioned ^^^2 unless block ~~-0.25~ air run playsound random.anvil_land @a[r=25] ~~~ 9999 0.5 9999



