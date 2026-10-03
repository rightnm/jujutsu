 execute as @s[scores={Deleter=4..}] at @s run tp @s ~~~ facing @e[name=PoisonSpitTRG,c=1]
 execute as @s[scores={Deleter=4..}] at @s run tp @s ^^^2.25 
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 4
execute as @s[scores={Deleter=5..}] at @s if entity @e[type=!ds:grasshopper_curse,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,tag=!Frames,r=3] run scoreboard players set @s Deleter 4
execute as @s[scores={Deleter=5..}] at @s if entity @e[name=PoisonSpitTRG,r=2] run scoreboard players set @s Deleter 4

execute as @s[scores={Deleter=4..}] at @s run particle ds:poison_spit ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:poison_spit ^^^-0.3
execute as @s[scores={Deleter=4..}] at @s run particle ds:poison_spit ^^^-0.6
execute as @e[type=ds:projectile,name=PoisonSpitTRG,scores={Deleter=12..}] at @s run tp @s @e[tag=!Frames,c=1,type=!ds:grasshopper_curse,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=41]


execute as @s[scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=3,type=!ds:grasshopper_curse] 10 
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!ds:grasshopper_curse] Stun 20
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!ds:grasshopper_curse] Hit 4
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=3,type=!ds:grasshopper_curse] Evade 12
execute as @s[scores={Deleter=3}] at @s run effect @e[tag=!Frames,r=3,type=!ds:grasshopper_curse] wither 10 2
execute as @s[scores={Deleter=3}] at @s run camerashake add @a[r=40] 4 0.15
execute as @s[scores={Deleter=3}] at @s run playsound mob.slime.jump @a[r=90] ~~~ 99999 1.25 99999
execute as @s[scores={Deleter=1..3}] at @s run kill @e[name=PoisonSpitTRG,c=1]
kill @s[scores={Deleter=1..3}] 