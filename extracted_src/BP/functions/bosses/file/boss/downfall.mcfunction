
execute as @s[scores={Deleter=1..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=1..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

tag @s add Frames

execute as @s unless block ~~-0.15~ air run scoreboard players set @s[scores={Deleter=5..}] Deleter 4
execute as @s unless entity @s[scores={Deleter=0..}] run tp @s ~~35~
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 101
execute as @s unless entity @s[scores={Deleter=0..}] run particle ds:dirt2

particle ds:equinoxbeam_trg1 ~ 240.1 ~ 

particle ds:shard_make1
particle ds:shard_make2
particle ds:shard_make3

execute as @s[scores={Deleter=3}] run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={Deleter=3}] run playsound mob.shock2 @a[r=100] ~~~ 99999 2.5 99999
execute as @s[scores={Deleter=3}] run playsound mob.wither.spawn @a[r=100] ~~~ 99999 1.75 99999
execute as @s[scores={Deleter=3}] run camerashake add @a[r=12] 1 0.15
execute as @s[scores={Deleter=3}] run particle ds:demons_descent1
execute as @s[scores={Deleter=3}] run particle ds:demons_descent2
execute as @s[scores={Deleter=3}] run particle ds:demons_descent3
execute as @s[scores={Deleter=3}] run particle ds:demons_descent4
execute as @s[scores={Deleter=3}] run particle ds:rubble3
execute as @s[scores={Deleter=3}] run particle ds:reality_crater1 ~ 240.1 ~
execute as @s[scores={Deleter=3}] run damage @e[tag=!Frames,family=!heroic,r=10] 80 suicide
execute as @s[scores={Deleter=3}] run scoreboard players set @e[tag=!Frames,family=!heroic,r=10] Stun 33
execute as @s[scores={Deleter=3}] run scoreboard players add @e[tag=!Frames,family=!heroic,r=10] knockdown 25
execute as @s[scores={Deleter=3}] run scoreboard players set @e[tag=!Frames,family=!heroic,r=10] Hit 5
execute as @s[scores={Deleter=1..3}] run tp @s ~~-50~




