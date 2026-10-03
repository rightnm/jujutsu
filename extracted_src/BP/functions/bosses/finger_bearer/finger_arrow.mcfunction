playanimation @s[scores={move=40}] animation.finger_bearer.arrow

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[tag=!Frames,type=!ds:finger_bearer,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]

execute as @s[scores={move=35}] at @s run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=35}] at @s run playsound portal.trigger @a[r=90] ~~~ 99999 3 99999

execute as @s[scores={move=10}] at @s anchored eyes run summon ds:projectile FingerArrow ^^^1
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^45 run summon ds:projectile FingerArrowTRG
execute as @s[scores={move=10}] at @s run scoreboard players set @e[name=FingerArrow,c=1] Deleter 33
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^45 run scoreboard players set @e[name=FingerArrowTRG,c=1] Deleter 33
execute as @s[scores={move=10}] at @s run playsound mob.shock1 @a[r=90] ~~~ 99999 1.25 99999
execute as @s[scores={move=10}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.15 99999
execute as @s[scores={move=10}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={move=10}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=10}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:impact1 ^^1^2
execute as @s[scores={move=9}] at @s run particle ds:fingerer_ex1 ^^1^2


