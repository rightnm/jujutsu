execute as @s[name=RockThrow,tag=!Stopped] at @s run tp @s ^^^2.8 facing @e[name=RockThrowTRG,c=1]

execute as @e[name=RockThrow] at @s run particle ds:ground_slam2

execute as @e[name=RockThrow] at @s run camerashake add @a[r=30] 0.1 0.15

execute as @s[name=RockThrow,scores={Deleter=3..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 2
execute as @s[name=RockThrow,scores={Deleter=3..}] at @s if entity @e[name=!RockThrow,family=!mahoraga,r=3.5] run scoreboard players set @s Deleter 2

execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run kill @e[type=item,r=35]
execute as @s[name=RockThrow,scores={Deleter=1..}] at @s run effect @e[r=100] resistance 1 2 true

execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run  particle ds:rubble3
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run  particle ds:ground_slam1
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run  particle ds:ground_slam2
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run  particle ds:ground_slam3
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run  particle ds:ground_slam4
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run camerashake add @a[r=50] 2 0.2
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run playsound random.explode @a[r=100] ~~~ 999999 0.5 999999
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run playsound random.explode @a[r=100] ~~~ 999999 1.5 999999
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run playsound random.explode @a[r=100] ~~~ 999999 0.45 999999
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 999999 0.5 999999
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 999999 0.85 999999
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run damage @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=3] 15 entity_attack entity @s
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=3] Stun 35
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run scoreboard players add @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=3] Evade 35
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s if entity @e[tag=!Frames,tag=!mahoraga_tame,family=!mahoraga,r=3] at @s run summon ds:mahoraga_knockback1
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run summon ds:lapse_explode "Rock" ^^^
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run kill @e[type=item,r=15]
execute as @s[name=RockThrow,scores={Deleter=1..2}] at @s run tp @s ~~-35~