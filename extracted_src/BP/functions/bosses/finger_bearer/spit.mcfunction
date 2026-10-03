 execute as @s[scores={Deleter=1..}] at @s run tp @s ^^^2.25 facing @e[name=EnergySpitTRG,c=1]

execute as @s[scores={Deleter=4..}] unless block ~~~ air run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,tag=!Frames,r=2.96] run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[name=EnergySpitTRG,r=2] run scoreboard players set @s Deleter 3

execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy2 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy3 ^^^

execute as @e[type=ds:projectile,name=EnergySpitTRG,scores={Deleter=30..}] at @s run tp @s @e[c=1,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=41]

execute as @s[scores={Deleter=3..}] at @s run playsound mob.burn @a[r=30] ~~~ 99999 1.35 99999

execute as @s[scores={Deleter=3}] at @s run particle ds:fingerer_ex1
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:smoke_impact1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:impact ~~~
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=3,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 10 block_explosion
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 12
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 4
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=3,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 12
execute as @s[scores={Deleter=3}] at @s run camerashake add @a[r=40] 4 0.15
execute as @s[scores={Deleter=3}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 2.25 99999
execute as @s[scores={Deleter=3}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.7 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 1 99999
execute as @s[scores={Deleter=3}] at @s run effect @e[r=10,tag=!unselect] resistance 1 10 true
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run kill @s