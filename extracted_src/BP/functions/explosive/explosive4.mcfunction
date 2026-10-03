playanimation @s[scores={move=40}] animation.finger_bearer.arrow

tag @s[scores={move=1..2}] remove form4

tag @s[scores={move=22..,Stun=1..}] remove form4
scoreboard players set @s[scores={move=22..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..}] Move 5
scoreboard players set @s[scores={move=5..22}] Frames 5


execute as @s[scores={move=35}] at @s run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=35}] at @s run playsound portal.trigger @a[r=90] ~~~ 99999 3 99999

execute as @s[scores={move=10}] at @s anchored eyes run summon ds:projectile FingerArrow2 ^^^1
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^45 run summon ds:projectile FingerArrow2TRG
execute as @s[scores={move=10}] at @s run scoreboard players set @e[name=FingerArrow2,c=1] Deleter 33
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^45 run scoreboard players set @e[name=FingerArrow2TRG,c=1] Deleter 33
execute as @s[scores={move=10}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 1.25 99999
execute as @s[scores={move=10}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.15 99999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={move=10}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=10}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:fingerer_ex1 ^^1^2


