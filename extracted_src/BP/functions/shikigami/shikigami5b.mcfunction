playanimation @s[scores={move=20}] animation.serpent_spawn2

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5


tag @s[scores={move=1..2}] remove form5b

tag @s[scores={move=14..,Stun=1..}] remove form5b
scoreboard players set @s[scores={move=14..,Stun=1..}] move 0

execute as @s[scores={move=5}] at @s run tp @s ~~~

execute as @s[scores={move=5}] at @s positioned ^^^15 run execute as @e[r=14.99,tag=!Frames,family=!shikigami,family=!damage,family=!projectile,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,c=1] at @s run summon ds:serpenttrap SerpentTrap
execute as @s[scores={move=4..5}] at @s positioned ^^^15 run execute as @e[r=14.99,tag=!Frames,family=!shikigami,family=!damage,family=!projectile,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,c=1] at @s run scoreboard players set @e[type=ds:serpenttrap,c=1] Deleter 100
execute as @s[scores={move=4..5}] at @s positioned ^^^15 run execute as @e[r=14.99,tag=!Frames,family=!shikigami,family=!damage,family=!projectile,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,c=1] at @s run playanimation @e[type=ds:serpenttrap,c=1] animation.serpent.trap