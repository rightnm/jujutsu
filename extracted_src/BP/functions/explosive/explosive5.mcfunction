playanimation @s[scores={move=55}] animation.finger_bearer.bolt

execute as @s[scores={move=51..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=51..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=51..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=51..}] at @s if block ~~-1~ air run tp @s ~~-1~

tag @s[scores={move=1..2}] remove form5

tag @s[scores={move=26..,Stun=1..}] remove form5
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..}] Move 5
scoreboard players set @s[scores={move=15..27}] Frames 5

execute as @s[scores={move=51}] at @s run playsound beacon.activate @a[r=90] ~~~ 99999 0.55 99999
execute as @s[scores={move=51}] at @s run playsound portal.trigger @a[r=90] ~~~ 99999 2.5 99999

execute as @s[scores={move=25}] at @s anchored eyes run summon ds:projectile EnergyOrb ^^^1
execute as @s[scores={move=25}] at @s anchored eyes positioned ^^^45 run summon ds:projectile EnergyOrbTRG
execute as @s[scores={move=25}] at @s run scoreboard players set @e[name=EnergyOrb,c=1] Deleter 33
execute as @s[scores={move=25}] at @s anchored eyes positioned ^^^45 run scoreboard players set @e[name=EnergyOrbTRG,c=1] Deleter 33
execute as @s[scores={move=25}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=25}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.75 99999
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.55 99999
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.75 99999
execute as @s[scores={move=25}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=25}] at @s run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={move=24}] at @s run particle ds:fingerer_ex1 ^^1^2


