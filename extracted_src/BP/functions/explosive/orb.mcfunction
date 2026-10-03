execute as @s run tp @s ^^^3 facing @e[name=EnergyOrbTRG,c=1]

execute as @s[scores={Deleter=4..}] unless block ~~~ air run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[tag=!Frames,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=2.96] run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[name=EnergyOrbTRG,r=2] run scoreboard players set @s Deleter 3

execute as @s[scores={Deleter=4..}] at @s run scoreboard players random @e[family=boss,r=10,type=!ds:finger_bearer] chance 1 3
execute as @s[scores={Deleter=4..}] at @s run scoreboard players set @e[scores={chance=3},family=boss,r=10,type=!ds:finger_bearer] punch 1


execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_awaken6 ^^^-1.5
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_awaken6 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_awaken7 ^^^-1.5
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_awaken7 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy2 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy3 ^^^

execute as @s[scores={Deleter=3..}] at @s run playsound mob.burn @a[r=30] ~~~ 99999 1.35 99999

execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run tellraw @a[scores={detect_left=1..2},r=5,tag=!spectator] {"rawtext":[{"text":"§gYou parried the Energy Orb."}]}
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_shockwave2
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_shockwave3
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_shockwave3
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_awaken3
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_awaken3
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:finger_awaken3
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run playsound random.fizz @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run playsound random.fizz @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=4..}] at @s if entity @e[scores={detect_left=1..2},r=5,tag=!spectator] run scoreboard players set @s Deleter 2

execute as @s[scores={Deleter=3}] at @s run camera @a[r=30] fade time 0 0 0.5 color 255 255 255
execute as @s[scores={Deleter=3}] at @s run particle ds:fingerer_ex1
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken4 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken5 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken4 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_awaken5 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave4 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave5
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:smoke_impact1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:impact ~~~
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 2 block_explosion
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] knockdown 95
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 4
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 12
execute as @s[scores={Deleter=3}] at @s run camerashake add @a[r=40] 4 0.5
execute as @s[scores={Deleter=3}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=3}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 1 99999
execute as @s[scores={Deleter=3}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=3}] at @s run kill @s