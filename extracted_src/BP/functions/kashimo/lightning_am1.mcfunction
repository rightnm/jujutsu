playanimation @s[scores={move=40}] animation.cyclone_blitz
tag @s[scores={move=1..2},tag=form4a] remove form4a

scoreboard players set @s[scores={move=1..}] Frames 5
scoreboard players set @s[scores={move=1..36}] Move 5

execute as @s[scores={move=13..36}] at @s run summon ds:dash2 ^^^-0.2
execute as @s[scores={move=13..36}] at @s run summon ds:dash2 ^^^-0.2
execute as @s[scores={move=13..36}] at @s run summon ds:dash2 ^^^-0.2
execute as @s[scores={move=13..36}] at @s run summon ds:dash2 ^^^-0.2

execute as @s[scores={move=8..35}] at @s run function damages/electric_damage
execute as @s[scores={move=8..35}] at @s run function damages/blunt_damage

execute as @s[scores={move=8..35}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.75 9999
execute as @s[scores={move=8..35}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 99999 1.75 9999
execute as @s[scores={move=8..9}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.35 9999
execute as @s[scores={move=8..9}] at @s run playsound mob.electricity @a[r=50] ~~~ 99999 0.95 9999
execute as @s[scores={move=8..35}] at @s run playsound mob.shocked1 @a[r=50] ~~~ 99999 1.85 9999

execute as @s[scores={move=8..35}] at @s run camerashake add @a[r=30] 1 0.15
execute as @s[scores={move=8..35}] at @s run scoreboard players set @e[tag=!Frames,r=3.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=8..35}] at @s run scoreboard players set @e[tag=!Frames,r=3.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 4
execute as @s[scores={move=8..35}] at @s run scoreboard players add @e[tag=!Frames,r=3.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 13
execute as @s[scores={move=8..35}] at @s run damage @e[tag=!Frames,r=3.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 13 override
