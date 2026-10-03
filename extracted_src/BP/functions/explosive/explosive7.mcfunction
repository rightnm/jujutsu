playanimation @s[scores={move=30}] animation.finger_bearer.mugetsu

tag @s[scores={move=1..2}] remove form7

tag @s[scores={move=16..,Stun=1..}] remove form7
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=12..}] Move 5
scoreboard players set @s[scores={move=11..15}] Frames 5

execute as @s[scores={move=15}] at @s anchored eyes run summon ds:projectile ^^^1 facing ^^^20 none FMugetsu2 
execute as @s[scores={move=15}] at @s run scoreboard players set @e[name=FMugetsu2,c=1] Deleter 45
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=90] ~~~ 99999 3.25 99999
execute as @s[scores={move=15}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.75 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=15}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=15}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=14}] at @s run particle ds:impact ^^1^2
execute as @s[scores={move=14}] at @s run particle ds:fingerer_ex1 ^^1^2


