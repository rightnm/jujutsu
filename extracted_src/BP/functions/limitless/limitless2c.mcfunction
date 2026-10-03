playanimation @s[scores={move=20}] animation.lapse_pull

tag @s[scores={move=14..,Stun=1..}] remove form2c
scoreboard players set @s[scores={move=14..,Stun=1..}] move 0

tag @e[scores={move=1..2}] remove form2c

execute as @s[scores={move=1..14}] at @s run tp @s ~~~

execute as @s[scores={move=15}] at @s run camerashake add @a[r=15] 2 0.1

execute as @s[scores={move=11}] at @s positioned ^^^15 run function damages/pull_damage
execute as @s[scores={move=11}] at @s positioned ^^^15 run tag @e[r=14.99,tag=!Frames,tag=!pull_adapted,family=!projectile,family=!despawncito,family=!damage] add lapsepull
execute as @s[scores={move=11}] at @s positioned ^^^15 run scoreboard players set @e[r=14.99,tag=!Frames,tag=!pull_adapted] Stun 35
execute as @s[scores={move=11}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=15] at @s run tp @s ~~~
execute as @s[scores={move=11}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run particle ds:lapse_pull2 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run particle ds:lapse_pull3 ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run particle ds:lapse_pull4 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run particle ds:impact
execute as @s[scores={move=15}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run particle mcdp_v:knockback_roar_particle_2
execute as @s[scores={move=15}] at @s positioned ^^^15 run execute as @e[tag=lapsepull,r=14.99] at @s run playsound mob.wither.shoot @a[r=35] ~~~ 99999 0.8 99999
execute as @s[scores={move=1..7}] at @s positioned ^^0.5^1.5 run tp @e[tag=lapsepull,r=30] ~~~ facing @s
tag @e[tag=Frames] remove lapsepull
execute as @s[scores={move=11}] at @s positioned ^^0.5^1.5 run particle ds:lapse_pull2
execute as @s[scores={move=11}] at @s positioned ^^0.5^1.5 run particle ds:lapse_pull4

execute as @s[scores={move=1..6}] at @s run tag @e[tag=lapsepull] remove lapsepull

execute as @s[scores={move=12..}] at @s run playsound beacon.ambient @a ^^1^1 0.2 3
execute as @s[scores={move=15}] at @s run playsound beacon.deactivate @a ^^1^1 1 1.75
execute as @s[scores={move=15}] at @s run playsound mob.beam3 @a ^^1^1 1 0.6


