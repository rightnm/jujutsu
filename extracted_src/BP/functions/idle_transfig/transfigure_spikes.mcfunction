execute unless entity @s[scores={Deleter=0..}] unless entity @s[tag=spikes_landed] run scoreboard players set @s Deleter 101
playanimation @s[scores={Deleter=100..},tag=!spikes_landed] animation.human_thrown3

execute as @s[scores={Deleter=81..},tag=!spikes_landed] at @s if block ^^^0.9 air run tp @s ^^^1.75 facing @e[name="spikes_trg1",c=1]
execute as @s[scores={Deleter=81..},tag=!spikes_landed] at @s if block ^^^0.9 air run tp @s ^^^1.75 facing @e[name="spikes_trg1",c=1]

execute as @s[scores={Deleter=79..81},tag=!spikes_landed] at @s run tp @e[name="spikes_trg1",c=1] @s
execute as @s[scores={Deleter=78..81},tag=!spikes_landed] at @s run playsound random.disfigure @a[r=50] ~~1~ 99999 1.15 99999
execute as @s[scores={Deleter=79..81},tag=!spikes_landed] at @s run event entity @e[type=ds:rift,r=2,name="spikes_trg1"] ds:disappear

execute as @s[scores={Deleter=83..},tag=!spikes_landed] unless block ~~-0.25~ air run scoreboard players set @s Deleter 82
execute as @s[scores={Deleter=83..},tag=!spikes_landed] if entity @e[type=ds:rift,name=spikes_trg1,r=2] run scoreboard players set @s Deleter 82


execute as @s[scores={Deleter=78..95},tag=!spikes_landed] at @s  run tp @s ~~~ facing ~~~-5


execute as @e[name=spikes_trg1,c=1,rm=5] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run playanimation @s animation.human_spikes
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run particle ds:curses_energy_hit1 ~~0.25~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run particle ds:curses_energy_hit2 ~~0.25~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run particle ds:large_impact1 ~~1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run particle ds:heavy_impact1 ~~1~
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={Deleter=5..75},tag=!spikes_landed] at @s unless block ~~-0.1~ air run tag @s add spikes_landed


execute as @s[scores={Deleter=73},tag=spikes_landed] at @s unless block ~~-0.1~ air run scoreboard players add @e[tag=!Frames,r=3] Hit 0
execute as @s[scores={Deleter=73},tag=spikes_landed] at @s unless block ~~-0.1~ air run execute as @e[tag=!Frames,r=3,scores={detect_health=0..20}] at @s run playsound mob.sword @a[r=50] ~~-4~ 9999 0.8 9999
execute as @s[scores={Deleter=73},tag=spikes_landed] at @s unless block ~~-0.1~ air run damage @e[tag=!Frames,r=3] 4 override
execute as @s[scores={Deleter=73},tag=spikes_landed] at @s unless block ~~-0.1~ air run effect @e[tag=!Frames,r=3] slowness 5 3 true
execute as @s[scores={Deleter=73},tag=spikes_landed] at @s unless block ~~-0.1~ air run scoreboard players set @e[tag=!Frames,r=3] Hit 3

execute as @s[scores={Deleter=50..75},tag=spikes_landed] at @s unless block ~~-0.1~ air run scoreboard players add @e[tag=!Frames,r=3] Hit 0
execute as @s[scores={Deleter=50..75},tag=spikes_landed] at @s unless block ~~-0.1~ air run execute as @e[tag=!Frames,r=3,scores={detect_health=0..20}] at @s unless entity @s[scores={Hit=1..}] run playsound mob.sword @a[r=50] ~~-4~ 9999 0.8 9999
execute as @s[scores={Deleter=50..75},tag=spikes_landed] at @s unless block ~~-0.1~ air run damage @e[tag=!Frames,r=3,scores={Hit=0}] 4 override
execute as @s[scores={Deleter=50..75},tag=spikes_landed] at @s unless block ~~-0.1~ air run effect @e[tag=!Frames,r=3,scores={Hit=0}] slowness 5 3 true
execute as @s[scores={Deleter=50..75},tag=spikes_landed] at @s unless block ~~-0.1~ air run scoreboard players set @e[tag=!Frames,r=3] Hit 3

execute as @s[tag=spikes_landed] at @s run tp @s ~~~ 


execute as @s[scores={Deleter=0..2}] at @s run particle ds:curses_energy_hit1 ~~0.25~
execute as @s[scores={Deleter=0..2}] at @s run particle ds:curses_energy_hit1 ~~0.25~
event entity @s[scores={Deleter=0..1}] ds:disappear




