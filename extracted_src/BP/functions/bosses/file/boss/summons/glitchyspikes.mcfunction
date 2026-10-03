tp @s ^^^2
execute if block ~~-0.1~ air run tp @s ~~-0.1~
execute if block ~~-1~ air run tp @s ~~-1~
execute unless entity @e[type=ds:astaroth,r=100] unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 11
execute if entity @e[type=ds:astaroth,r=100] unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 21

particle ds:ground_slam1
particle ds:ground_slam2 ~~-1.5~
particle ds:glitchy_spikes1
particle ds:glitchy_spikes2
playsound mob.wither.break_block @a ~~~ 0.2 2.25
camerashake add @a[r=20] 2 0.15
damage @e[tag=!Frames,family=!heroic,r=4] 4 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=4] Stun 15