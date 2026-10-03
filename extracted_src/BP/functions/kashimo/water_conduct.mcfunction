execute as @s[scores={Energy=20..}] at @s run damage @e[tag=!lightning,r=10,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 1 override
execute as @s[scores={Energy=20..}] at @s run particle ds:lightning_area1a
execute as @s[scores={Energy=20..}] at @s run playsound mob.electricity @a[r=50] ~~~ 99999 1.15 99999
execute as @s[scores={Energy=20..}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={Energy=20..}] at @s run tp @s ~~~
scoreboard players set @s[scores={Energy=1..19}] Energy 0
scoreboard players remove @s[scores={Energy=20..}] Energy 20
scoreboard players remove @s[scores={Energy=20..}] Energy 20
scoreboard players remove @s[scores={Energy=20..}] Energy 20