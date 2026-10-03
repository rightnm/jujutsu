execute as @s run tp @s ^^^5.5 facing @e[name=FingerArrowTRG,c=1]

execute as @s[scores={Deleter=4..}] unless block ~~~ air run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[type=!ds:finger_bearer,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,tag=!Frames,r=6.75] run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] if entity @e[name=FingerArrowTRG,r=3] run scoreboard players set @s Deleter 3

execute as @s[scores={Deleter=4..}] at @s run particle ds:fingerer_ex1 ^^^
execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy1 ^^^

execute as @s[scores={Deleter=4..}] at @s run particle ds:finger_energy2 ~~~
execute as @s[scores={Deleter=4..}] at @s run particle ds:ground_slam2 ~~~

execute as @e[type=ds:projectile,name=FingerArrowTRG] at @s run tp @s ~~~

execute as @s[scores={Deleter=3..}] at @s run playsound mob.burn @a[r=30] ~~~ 99999 1.1 99999

execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave4 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave5 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:finger_shockwave6 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:smoke_impact1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:impact ~~~
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s unless block ~~~ air run particle ds:rubble3
execute as @s[scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=7,type=!ds:finger_bearer] 26 block_explosion
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=7,type=!ds:finger_bearer] knockdown 50
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=7,type=!ds:finger_bearer] Hit 4
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=7,type=!ds:finger_bearer] Evade 20
execute as @s[scores={Deleter=3}] at @s run camerashake add @a[r=40] 4 0.15
execute as @s[scores={Deleter=3}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 1.35 99999
execute as @s[scores={Deleter=3}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={Deleter=3}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=3}] at @s run effect @e[r=10] resistance 1 10 true
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:lapse_explode ~~~
execute as @s[scores={Deleter=3}] at @s run summon ds:red_reverse
execute as @s[scores={Deleter=3}] at @s run kill @s