tp @s ^^^3
playanimation @s animation.fuga_scythe_slash
execute as @p[tag=griefable] run function flames/heat3x3
execute as @e[tag=!Frames,r=5,tag=!sukuna,c=1,family=!projectile,family=!despawncito,family=!damage,type=!item,type=!xp_orb] at @s run tag @s add fugascythe
execute as @e[tag=!Frames,r=5,tag=!sukuna,c=1,family=!projectile,family=!despawncito,family=!damage,type=!item,type=!xp_orb] at @s run scoreboard players set @p[tag=fuga_use,scores={move=1..},c=1] move 6801