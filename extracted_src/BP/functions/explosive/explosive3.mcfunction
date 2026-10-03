playanimation @s[scores={move=15}] animation.finger_bearer.spit

tag @s[scores={move=1..2},tag=form3] remove form3

tag @s[scores={move=9..,Stun=1..},tag=form3] remove form3
scoreboard players set @s[scores={move=9..,Stun=1..},tag=form3] move 0



scoreboard players set @s[scores={move=2..9}] Frames 5
execute as @s[scores={move=8}] at @s anchored eyes run summon ds:projectile EnergySpit2 ~~0.25~
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run summon armor_stand EnergySpitTRG2
execute as @s[scores={move=8}] at @s run scoreboard players set @e[name=EnergySpit2,c=1] Deleter 33
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run scoreboard players set @e[name=EnergySpitTRG2,c=1] Deleter 33
execute as @s[scores={move=8}] at @s run playsound random.explode @a[r=90] ~~~ 99999 3.25 99999
execute as @s[scores={move=8}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.75 99999
execute as @s[scores={move=8}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=8}] at @s run playsound mob.slime.jump @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=8}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=7}] at @s run particle ds:impact ^^1^2
execute as @s[scores={move=7}] at @s run particle ds:fingerer_ex1 ^^1^2


