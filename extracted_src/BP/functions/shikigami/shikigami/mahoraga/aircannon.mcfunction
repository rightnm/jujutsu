playanimation @s[scores={move=27}] animation.mahoraga.air_cannon

execute as @s[scores={move=1..}] at @s run tp @s ~~~ facing @e[tag=!Frames,c=1,tag=!mahoraga_tame,family=!mahoraga,family=!projectile,family=!damage,type=!ds:projectile,family=!damage,type=!item,type=!xp_orb,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:projectile,r=60]

execute as @s[scores={move=17}] at @s run summon ds:projectile AirCannon ^^4 ^1.5
execute as @s[scores={move=17}] at @s run summon ds:projectile AirCannonTRG ^^4 ^55 

execute as @s[scores={move=17}] at @s positioned ^^^1.5 run scoreboard players set @e[name=AirCannon,c=1] Deleter 25
execute as @s[scores={move=17}] at @s positioned ^^^55 run scoreboard players set @e[name=AirCannonTRG,c=1] Deleter 25

execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.25 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 2 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2

