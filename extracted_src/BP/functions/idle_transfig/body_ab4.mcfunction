playanimation @s[scores={move=70..71}] animation.mahito.body_ab4


tag @s[scores={move=1..,Stun=1..}] add noStunnedAnim
playanimation @s[scores={move=61..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=61..,Stun=1..}] move 3
tag @s[scores={move=61..,Stun=1..},tag=form6] remove form6
tag @s[scores={move=0..3}] remove noStunnedAnim

execute as @s[scores={move=68}] at @s run camerashake add @a[r=5] 1 0.15
execute as @s[scores={move=68}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
execute as @s[scores={move=66}] at @s run playsound mob.slash1 @a[r=33] ~~1~ 99999 2.25 99999
execute as @s[scores={move=66}] at @s run particle ds:instant_star ^-0.5^1^-1
execute as @s[scores={move=70..75}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 0.8 99999

event entity @s[scores={move=69..71}] mahito_murder_manifestation


scoreboard players set @s[scores={move=10..,Move=0..5}] Move 15
scoreboard players set @s[scores={move=10..59,Camera=0..5}] Camera 10

execute as @s[scores={move=59..60}] at @s run scriptevent ds:knockback 0.8
execute as @s[scores={move=50..51}] at @s run scriptevent ds:knockback 0.8

execute as @s[scores={move=56..59}] at @s run camerashake add @a[r=25] 0.25 0.15
execute as @s[scores={move=57..59}] at @s run playsound mob.whoosh3 @a[r=33] ~~1~ 99999 3.5 99999
execute as @s[scores={move=59}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 1 99999
execute as @s[scores={move=56..59}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 0.6 99999
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run damage @e[tag=!Frames,r=4.98] 3 override
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run scoreboard players set @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run scoreboard players set @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2.25 99999
execute as @s[scores={move=56..59}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 3 99999

execute as @s[scores={move=58}] at @s positioned ^^^5 run playsound mob.slash1 @a[r=100] ~~~ 9999 1.5 9999

execute as @s[scores={move=56..59}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=4.98] 3 override
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run scoreboard players set @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run scoreboard players set @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2.25 99999
execute as @s[scores={move=56..59}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 3 99999


execute as @s[scores={move=47..50}] at @s run camerashake add @a[r=25] 0.25 0.15
execute as @s[scores={move=48..50}] at @s run playsound mob.whoosh3 @a[r=33] ~~1~ 99999 3.5 99999
execute as @s[scores={move=50}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 1 99999
execute as @s[scores={move=47..50}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 0.6 99999
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run damage @e[tag=!Frames,r=4.98] 3 override
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2.25 99999
execute as @s[scores={move=47..50}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 3 99999


execute as @s[scores={move=49}] at @s positioned ^^^5 run playsound mob.slash1 @a[r=100] ~~~ 9999 1.5 9999

execute as @s[scores={move=47..50}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=4.98] 3 override
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2.25 99999
execute as @s[scores={move=47..50}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 3 99999




execute as @s[scores={move=23..40}] at @s run camerashake add @a[r=25] 0.25 0.15
execute as @s[scores={move=23..40}] at @s run playsound mob.whoosh3 @a[r=33] ^^^4 99999 3.75 99999
execute as @s[scores={move=41}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 1 99999
execute as @s[scores={move=23..40}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 0.6 99999
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run damage @e[tag=!Frames,r=4.98] 1 override
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:rapid_cuts1 ~~0.25~
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:rapid_cuts2 ~~0.25~
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 3 99999
execute as @s[scores={move=23..40}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 4 99999


execute as @s[scores={move=25}] at @s positioned ^^^5 run playsound mob.slash1 @a[r=100] ~~~ 9999 1.5 9999


execute as @s[scores={move=23..40}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=4.98] 1 override
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Stun 25
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:rapid_cuts1 ~~0.25~
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:rapid_cuts2 ~~0.25~
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 3 99999
execute as @s[scores={move=23..40}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 4 99999

execute as @s[scores={move=25}] at @s run playsound mob.slash1 @a[r=33] ~~1~ 99999 0.85 99999
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=33] ~~1~ 99999 0.5 99999

execute as @s[scores={move=13..17}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run tp @s ~~~ facing @e[scores={move=13..17},c=1]
execute as @s[scores={move=13..16}] at @s run camerashake add @a[r=25] 0.25 0.15
execute as @s[scores={move=14..16}] at @s run playsound mob.whoosh3 @a[r=33] ~~1~ 99999 1.5 99999
execute as @s[scores={move=16}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 1 99999
execute as @s[scores={move=13..16}] at @s run playsound dig.chain @a[r=33] ~~1~ 99999 0.9 99999

execute as @s[scores={move=13..16}] at @s positioned ^^^5 run damage @e[tag=!Frames,r=4.98] 5 override
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Flourish 5
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2 99999
execute as @s[scores={move=13..16}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 1 99999


execute as @s[scores={move=15}] at @s positioned ^^^5 run playsound mob.slash1 @a[r=100] ~~~ 9999 0.8 9999

execute as @s[scores={move=13..17}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run tp @s ~~~ facing @e[scores={move=13..17},c=1]
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run damage @e[tag=!Frames,r=4.98] 5 override
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Flourish 5
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run scoreboard players set  @e[tag=!Frames,r=4.98] Hit 3
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run scoreboard players add @e[tag=!Frames,r=4.98] Evade 1
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:transfigure_death3 ~~1~
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.slice2 @a[r=50] ~~-2~ 99999 2 99999
execute as @s[scores={move=13..16}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run playsound mob.sword @a[r=50] ~~-2~ 99999 1 99999


execute as @s[scores={move=13..59}] at @s positioned ^^^7.5 run execute as @e[r=20,type=!player,type=!ds:mahito] at @s run function dashback
execute as @s[scores={move=13..59}] at @s positioned ^^^7.5 run execute as @e[r=20,type=!player,type=!ds:mahito] at @s run effect @s slowness 5 1 true
execute as @s[scores={move=13..59}] at @s positioned ^^^7.5 run execute as @e[scores={strength=28..,Hit=1..},type=!player,type=!ds:mahito] at @s run function dashback

execute as @s[scores={move=13}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^5 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=13}] at @s positioned ^^^10 run execute as @e[tag=!Frames,r=4.98] at @s run particle ds:impact_vfx1 ~~1~

execute as @s[scores={move=60}] at @s run function damages/slash_damage
execute as @s[scores={move=40}] at @s run function damages/slash_damage
execute as @s[scores={move=23}] at @s run function damages/slash_damage
execute as @s[scores={move=13}] at @s run function damages/slash_damage


execute as @s[scores={move=58}] at @s positioned ^^^5 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=56}] at @s positioned ^3^^5 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=57}] at @s positioned ^-2^^8 unless block ~~-1~ air run particle ds:floor_slice_random

execute as @s[scores={move=50}] at @s positioned ^1^^8 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=47}] at @s positioned ^-1^^3 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=48}] at @s positioned ^-1^^7 unless block ~~-1~ air run particle ds:floor_slice_random

execute as @s[scores={move=40}] at @s positioned ^2^^5 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=36}] at @s positioned ^-1^^7 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=30}] at @s positioned ^-2^^8 unless block ~~-1~ air run particle ds:floor_slice_random

execute as @s[scores={move=27}] at @s positioned ^3^^3 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=24}] at @s positioned ^^^5 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=23}] at @s positioned ^-3^^7 unless block ~~-1~ air run particle ds:floor_slice_random

execute as @s[scores={move=15}] at @s positioned ^2^^7 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=14}] at @s positioned ^-1^^5 unless block ~~-1~ air run particle ds:floor_slice_random
execute as @s[scores={move=13}] at @s positioned ^-3^^3 unless block ~~-1~ air run particle ds:floor_slice_random



execute as @s[scores={move=58}] at @s positioned ^^^5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=56}] at @s positioned ^3^^5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=57}] at @s positioned ^-2^^8 unless block ~~-1~ air run particle ds:rubble3

execute as @s[scores={move=50}] at @s positioned ^1^^8 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=47}] at @s positioned ^-1^^3 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=48}] at @s positioned ^-1^^7 unless block ~~-1~ air run particle ds:rubble3

execute as @s[scores={move=40}] at @s positioned ^2^^5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=36}] at @s positioned ^-1^^7 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=30}] at @s positioned ^-2^^8 unless block ~~-1~ air run particle ds:rubble3

execute as @s[scores={move=27}] at @s positioned ^3^^3 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=24}] at @s positioned ^^^5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=23}] at @s positioned ^-3^^7 unless block ~~-1~ air run particle ds:rubble3

execute as @s[scores={move=15}] at @s positioned ^2^^7 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=14}] at @s positioned ^-1^^5 unless block ~~-1~ air run particle ds:rubble3
execute as @s[scores={move=13}] at @s positioned ^-3^^3 unless block ~~-1~ air run particle ds:rubble3


execute as @s[scores={move=8}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1.5 99999
event entity @s[scores={move=1..4}] mahito_metal_off
tag @s[scores={move=0..3}] remove form6
