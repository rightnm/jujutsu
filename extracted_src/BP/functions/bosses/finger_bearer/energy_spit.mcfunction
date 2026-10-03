playanimation @s[scores={move=15}] animation.finger_bearer.spit

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[tag=!Frames,type=!ds:finger_bearer,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]

execute as @s[scores={move=8}] at @s anchored eyes run summon ds:projectile EnergySpit ~~0.25~
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run summon ds:projectile EnergySpitTRG
execute as @s[scores={move=8}] at @s run scoreboard players set @e[name=EnergySpit,c=1] Deleter 33
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run scoreboard players set @e[name=EnergySpitTRG,c=1] Deleter 33
execute as @s[scores={move=8}] at @s run playsound random.explode @a[r=90] ~~~ 99999 3.25 99999
execute as @s[scores={move=8}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.75 99999
execute as @s[scores={move=8}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=8}] at @s run playsound mob.slime.jump @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=8}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=7}] at @s run particle ds:impact ^^1^2
execute as @s[scores={move=7}] at @s run particle ds:fingerer_ex1 ^^1^2


