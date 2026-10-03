execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 31

tp @s @s
execute as @s[scores={Deleter=1..25}] at @s unless entity @a[tag=!Frames,r=0.9] run tp @s ~~~ facing @p[tag=!Frames]
execute as @s[scores={Deleter=1..}] at @s unless entity @a[tag=!Frames,r=0.9] run tp @s ^^^1.5
execute as @s[scores={Deleter=25..}] at @s unless entity @a[tag=!Frames,r=0.9] run tp @s ^^^0.5

execute as @s[scores={Deleter=15}] at @s unless entity @a[tag=!Frames,r=0.9] run tp @s ~~~  ~180
tag @s add Frames
scoreboard players set @s atk 2
execute as @s if entity @p[tag=Frames,r=2] run scoreboard players set @s[scores={Deleter=1..}] Deleter 0
execute as @s if entity @p[tag=!Frames,r=1] run scoreboard players set @s[scores={Deleter=1..}] Deleter 20


playsound mob.wind @a ~~~ 0.2 2.25
particle ds:wind_shield1
particle ds:wind_shield2


damage @p[tag=!Frames,r=1] 1 override
scoreboard players set @p[tag=!Frames,r=1] Stun 33
scoreboard players set @p[tag=!Frames,r=1] Hit 5
execute as @s if entity @p[tag=!Frames,r=1] run scoreboard players set @e[type=ds:duke,tag=!tp_punch] move 21
execute as @s if entity @p[tag=!Frames,r=1] run tag @e[type=ds:duke,tag=!tp_punch] add tp_punch

execute as @s run execute as @p[tag=!Frames,r=1] run tp @e[name=blindingtempest,c=1] ~~0.8~ facing ^^^10

execute as @e[type=ds:duke,c=1,scores={move=20},tag=tp_punch] at @s run tp @s @e[name=blindingtempest,c=1]
playanimation @e[type=ds:duke,c=1,scores={move=20..},tag=tp_punch] animation.duke.strongleft2


scoreboard players set @e[type=ds:duke,c=1,scores={move=19..20},tag=tp_punch] Frames 6
execute as @e[type=ds:duke,c=1,scores={move=19..20},tag=tp_punch] at @s run tp @s ^^^-0.5
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run playsound mob.punch1 @a[r=25] ~~~ 99999 1.5 99999
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run particle ds:heavy_impact1 ^^1^0.5
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run particle ds:heavy_impact2 ^^1^0.5
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run particle ds:heavy_impact3 ^^1^0.5
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run damage @p[r=5] 3 override
execute as @e[type=ds:duke,c=1,scores={move=19},tag=tp_punch] at @s run effect @p[r=5] levitation 1 35 true
execute as @e[type=ds:duke,c=1,scores={move=13},tag=tp_punch] at @s run effect @a levitation 0 30 true

execute as @e[type=ds:duke,c=1,scores={move=1..10},tag=tp_punch] at @s run tp @s @s
execute as @e[type=ds:duke,c=1,scores={move=7..10},tag=tp_punch] at @s run tp @p[r=10] ^^^2


execute as @e[type=ds:duke,c=1,scores={move=5},tag=tp_punch] at @s run scoreboard players set @p[r=25] knockdown 95
execute as @e[type=ds:duke,c=1,scores={move=5},tag=tp_punch] at @s run scoreboard players set @p[r=25] Stun 25
execute as @e[type=ds:duke,c=1,scores={move=5},tag=tp_punch] at @s run scoreboard players set @p[r=25] Hit 5
execute as @e[type=ds:duke,c=1,scores={move=5},tag=tp_punch] at @s run damage @p[r=25] 15 override
execute as @e[type=ds:duke,c=1,scores={move=4..5},tag=tp_punch] at @s run summon ds:red_reverse
execute as @e[type=ds:duke,c=1,scores={move=6},tag=tp_punch] at @s run playsound mob.strongleft @a[r=100] ~~1~ 99999 1 99999 

execute as @e[type=ds:duke,c=1,scores={move=1..4},tag=tp_punch] at @s run function blindingtempest_end
