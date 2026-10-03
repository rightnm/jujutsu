playanimation @s[scores={move=27}] animation.mahoraga.rock_throw

execute as @s[scores={move=1..}] at @s run tp @s ~~~ facing @e[tag=!Frames,c=1,tag=!mahoraga_tame,family=!mahoraga,family=!projectile,family=!damage,type=!ds:rocktoss,family=!damage,type=!item,type=!xp_orb,type=!ds:knockback,family=!damage,family=!projectile,family=!damage,type=!ds:rocktoss,r=90]

execute as @s[scores={move=17}] at @s run summon ds:rocktoss RockThrow ^^1^1.5
execute as @s[scores={move=17}] at @s run summon armor_stand RockThrowTRG ^^1 ^70

execute as @s[scores={move=17}] at @s positioned ^^^1.5 run scoreboard players set @e[name=RockThrow,c=1] Deleter 25
execute as @s[scores={move=17}] at @s positioned ^^^55 run scoreboard players set @e[name=RockThrowTRG,c=1] Deleter 25

execute as @s[scores={move=15..17}] at @s positioned ^^^2 run playanimation @e[name=RockThrow,c=1] animation.rock.idle
execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.45 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 0.25 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run playsound mob.wither.shoot @a[r=90] ~~~ 90 2 90
execute as @s[scores={move=17}] at @s positioned ^^^2 run camerashake add @a[r=30] 4 0.25
execute as @s[scores={move=19}] at @s run particle ds:ground_slam1 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:ground_slam2 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:ground_slam3 ^^1^2
execute as @s[scores={move=19}] at @s run particle ds:rubble3 ^^1^2

