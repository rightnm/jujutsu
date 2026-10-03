playanimation @s[scores={move=15}] animation.toji.shockwave_blow

execute as @s[scores={move=6..}] at @s run tp @s ~~~ facing @e[tag=!Frames,type=!ds:toji_reawakened,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1]

execute as @s[scores={move=8}] at @s anchored eyes run summon ds:projectile shockwaveblow ~~0.25~
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run summon ds:projectile shockwaveblowTRG
execute as @s[scores={move=8}] at @s run scoreboard players set @e[name=shockwaveblow,c=1] Deleter 16
execute as @s[scores={move=8}] at @s anchored eyes positioned ^^^41 run scoreboard players set @e[name=shockwaveblowTRG,c=1] Deleter 16
execute as @s[scores={move=8}] at @s run playsound random.explode @a[r=90] ~~~ 99999 3.25 99999
execute as @s[scores={move=8}] at @s run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.85 99999

execute as @s[scores={move=8}] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=7}] at @s run particle ds:impact ^^1^2


