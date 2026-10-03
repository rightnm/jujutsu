playanimation @s[scores={move=30}] animation.finger_bearer.mugetsu

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[type=!ds:finger_bearer,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]

execute as @s[scores={move=15}] at @s anchored eyes run summon ds:projectile ^^^1 facing ^^^20 none FMugetsu 
execute as @s[scores={move=15}] at @s run scoreboard players set @e[name=FMugetsu,c=1] Deleter 45
execute as @s[scores={move=15}] at @s run playsound random.explode @a[r=90] ~~~ 99999 3.25 99999
execute as @s[scores={move=15}] at @s run playsound beacon.deactivate @a[r=90] ~~~ 99999 1.75 99999
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=15}] at @s run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=15}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=14}] at @s run particle ds:impact ^^1^2
execute as @s[scores={move=14}] at @s run particle ds:fingerer_ex1 ^^1^2


