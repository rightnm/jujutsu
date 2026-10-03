playanimation @s[scores={move=30..31}] animation.mahito.body_ab1

playanimation @s[scores={move=21..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=21..,Stun=1..}] move 3
tag @s[scores={move=21..,Stun=1..},tag=form3] remove form3


scoreboard players set @s[scores={move=10..,Move=0..5}] Move 10
scoreboard players set @s[scores={move=10..21,Camera=0..5}] Camera 10

execute as @s[scores={move=20}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=26}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.25 99999
execute as @s[scores={move=21}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 2 99999

execute as @s[scores={move=8}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.5 99999

execute as @s[scores={move=25}] at @s run playsound mob.whoosh3 @a[r=33] ~~1~ 99999 0.75 99999



execute as @s[scores={move=11..19}] at @s run scriptevent ds:knockback 2
scoreboard players set @s[scores={move=15..19}] atk 2
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run scoreboard players set @s Disabled 30
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run scoreboard players operation @s damage += @e[scores={move=10..19},c=1,r=6] damagehalf
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  camerashake add @a[r=10] 2 0.25
execute as @s[scores={move=19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  playsound mob.slice3 @a[r=33] ~~1~ 99999 0.8 99999
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.985] 1 override
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.985] Stun 20
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.985] Hit 4
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run playanimation @e[tag=!Frames,r=2.985] animation.stunned
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.985] Evade 1
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s run particle ds:transfigure_death4 ~~1~
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s run playsound mob.slice @a[r=25] ~~1~ 0.33 3.5
execute as @s[scores={move=10..19}] at @s positioned ^^^3 run tp @e[tag=!Frames,r=2.985] ~~~ facing @e[scores={move=10..19},c=1]
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run scoreboard players set @s Disabled 30
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run scoreboard players operation @s damage += @e[scores={move=10..19},c=1,r=6] damagehalf
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  camerashake add @a[r=10] 2 0.25
execute as @s[scores={move=11}] at @s positioned ^^^3 run execute as @e[tag=!Frames,r=2.985] at @s unless entity @s[scores={Hit=1..}] run  playsound mob.slice3 @a[r=33] ~~1~ 99999 0.8 99999

tag @s[scores={move=0..3}] remove form3

execute as @s[scores={move=12}] at @s run function damages/slash_damage
