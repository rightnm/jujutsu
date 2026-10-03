execute unless entity @s[scores={Deleter=0..}] unless entity @s[tag=cube_landed] run scoreboard players set @s Deleter 101
playanimation @s[scores={Deleter=100..},tag=!cube_landed] animation.human_thrown3

execute as @s[scores={Deleter=81..},tag=!cube_landed] at @s if block ^^^0.9 air run tp @s ^^^1.5 facing @e[name="cube_trg1",c=1]
execute as @s[scores={Deleter=81..},tag=!cube_landed] at @s if block ^^^0.9 air run tp @s ^^^1.5 facing @e[name="cube_trg1",c=1]

execute as @s[scores={Deleter=79..81},tag=!cube_landed] at @s run tp @e[name="cube_trg1",c=1] @s
execute as @s[scores={Deleter=79..81},tag=!cube_landed] at @s run playsound random.disfigure @a[r=50] ~~1~ 99999 0.7 99999
execute as @s[scores={Deleter=79..81},tag=!cube_landed] at @s run event entity @e[type=ds:rift,r=2,name="cube_trg1"] ds:disappear

execute as @s[scores={Deleter=83..},tag=!cube_landed] if entity @e[type=ds:rift,name=cube_trg1,r=1] run scoreboard players set @s Deleter 82

playanimation @s[scores={Deleter=78..79},tag=!cube_landed] animation.human_cube

execute as @s[scores={Deleter=78..79},tag=!cube_landed] at @s  run tp @s ~~1.5~ facing ~~~-5


execute as @s[scores={Deleter=73..75},tag=!cube_landed] at @s if block ~~-1~ air run particle ds:fall_fast2 ~~2~

execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s if block ~~-1~ air run particle ds:fall_fast3 ~~2~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:ground_pound_1b
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:ground_pound_1b
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run playsound mob.burst @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run playsound mob.metal1 @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run playsound random.anvil_land @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run camerashake add @a[r=50] 4 0.25
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:burst_impact ~~~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:rubble3
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:dirt02
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:dirt04
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run particle ds:ground_pound4
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run execute as @e[tag=!Frames,r=8,scores={detect_health=0..20}] at @s run playsound mob.blood2 @a[r=50] ~~1~ 9999 0.8 9999
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run execute as @e[tag=!Frames,r=8,scores={detect_health=0..20}] at @s run particle ds:transfigure_death ~~1~
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run damage @e[tag=!Frames,r=8] 20 override
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run scoreboard players set @e[tag=!Frames,r=8] knockdown 25
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run scoreboard players set @e[tag=!Frames,r=8] Hit 3
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run fill ~3 ~6 ~3 ~-3 ~ ~-3  barrier [] replace air
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run scoreboard players set @s move 201
execute as @s[scores={Deleter=5..75},tag=!cube_landed] at @s unless block ~~-0.1~ air run tag @s add cube_landed
execute as @s[scores={Deleter=5..75},tag=cube_landed] at @s unless block ~~-0.1~ air run scoreboard players set @s Deleter -1

execute as @s[tag=cube_landed] at @s run tp @s ~~~ facing ~~~-5

execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run playsound mob.shock1 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run playsound mob.blood @a[r=50] ~~1~ 99999 0.65 99999
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run playsound mob.blood2 @a[r=50] ~~1~ 99999 0.65 99999
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run  camerashake add @a[r=10] 2 0.25
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run particle ds:transfigure_death ~~1~
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run particle ds:transfigure_death ~~1~
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run particle ds:blood_explode_rain ~~1~
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run particle ds:burst_impact ~~1~ 
execute as @s[scores={move=3..130}] at @s run execute as @e[type=!player,scores={strength=25..},r=6] at @s if block ~~1~ barrier run scoreboard players set @e[name="transfigure_cube",c=1] move 2

execute as @s[tag=cube_landed] at @s if block ~~-1~ air run fill ~4 ~7 ~4 ~-4 ~-2 ~-4 air [] replace barrier
execute as @s[tag=cube_landed] at @s if block ~~-1~ air run scoreboard players set @s move -1
execute as @s[tag=cube_landed] at @s if block ~~-1~ air run scoreboard players set @s Deleter 77
execute as @s[tag=cube_landed] at @s if block ~~-1~ air run tag @s remove cube_landed

playanimation @s[tag=cube_landed,scores={move=12..}] animation.human_cube_idle

execute as @s[scores={Deleter=0..1}] at @s run fill ~3 ~6 ~3 ~-3 ~-1 ~-3 air [] replace barrier
event entity @s[scores={Deleter=0..1}] ds:disappear

execute as @s[scores={move=10..11}] at @s run playanimation @s animation.human_cube_deform
execute as @s[scores={move=10..11}] at @s run playsound random.disfigure @a[r=50] ~~3~ 99999 0.4 99999
execute as @s[scores={move=10..11}] at @s run fill ~3 ~6 ~3 ~-3 ~-1 ~-3 air [] replace barrier


execute as @s[scores={move=0..1}] at @s run particle ds:curses_energy_hit1 ~~~
execute as @s[scores={move=0..1}] at @s run particle ds:curses_energy_hit2 ~~~
execute as @s[scores={move=0..1}] at @s run fill ~3 ~6 ~3 ~-3 ~-1 ~-3 air [] replace barrier
event entity @s[scores={move=0..1}] ds:disappear




