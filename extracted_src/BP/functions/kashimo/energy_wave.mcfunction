execute as @s[name="EnergyWave"] at @s run tp @s ^^^1.33 facing @e[name=EnergyWaveTRG,c=1]
execute as @s[name="EnergyWave"] at @s run tp @s ^^^1.33 facing @e[name=EnergyWaveTRG,c=1]

execute as @s[name="EnergyWave"] at @s if entity @e[name=EnergyWaveTRG,r=3] run kill @s 

execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Stun 20
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] shocked 75
execute as @s[scores={Deleter=1..}] at @s run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 3
execute as @s[scores={Deleter=1..}] at @s run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3
execute as @s[scores={Deleter=1..}] at @s run damage @e[tag=!Frames,r=6,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 15 override 

execute as @s[scores={Deleter=6..}] at @s run particle ds:energy_wave1
execute as @s[scores={Deleter=6..}] at @s run particle ds:energy_wave2
execute as @s[scores={Deleter=6..}] at @s run particle ds:energy_wave3

function damages/electric_damage

execute as @s[scores={Deleter=5..}] at @s  run particle ds:impact1 ~~~
execute as @s[scores={Deleter=5..}] at @s  run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=5..}] at @s unless block ~~~ air run particle ds:rubble3 ~~~

execute as @s[scores={Deleter=1..}] at @s unless block ~~~ air run effect @e[r=22,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] resistance 1 2 true
execute as @s[scores={Deleter=1..}] at @s unless block ~~~ air run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=1..}] at @s unless block ~~~ air run kill @e[type=item,r=22]
execute as @s[scores={Deleter=1..}] at @s unless block ~~~ air run kill @e[type=arrow,r=22]
execute as @s[scores={Deleter=1..}] at @s unless block ~~~ air run kill @e[type=falling_block,r=22]

execute as @s[scores={Deleter=6}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=6}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=6}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={Deleter=6}] at @s run playsound mob.electricity @a[r=100] ~~~ 99999 0.85 99999

execute as @s[scores={Deleter=1..4}] at @s run particle ds:electro_carve1a ~~~