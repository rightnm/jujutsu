playanimation @s[scores={move=55..}] animation.beru.speedblitz

execute as @s run tp @s ~~~~ 0 

scoreboard players set @s infinity 10

execute as @s[scores={move=44..45}] at @s run tp @s ^^^10

execute as @s[scores={move=46..}] at @s run tp @s ~~~ facing @e[c=1,tag=!Frames,r=40,family=!npc,family=!projectile,family=!purecurse,family=!damage,type=!item,type=!xp_orb,type=!falling_block]

execute as @s[scores={move=45}] at @s run particle ds:ground_slam1
execute as @s[scores={move=45}] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=45}] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=45}] at @s run particle ds:rubble3
execute as @s[scores={move=44..45}] at @s run function damages/slash_damage
execute as @s[scores={move=44..45}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=44..45}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=44..45}] at @s run playsound mob.bat.takeoff @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=44..45}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=45}] at @s run execute as @e[tag=!Frames,r=40,family=!npc,family=!projectile,family=!purecurse,family=!damage,type=!item,type=!xp_orb,type=!falling_block] at @s run function mobs/curses/beru/speedblitzed

execute as @s[scores={move=44}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=25..38}] unless block ~~~ air run tp @s ~~1~
execute as @s[scores={move=25..38}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..38}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..38}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..38}] run tp @s ^^^0.15

scoreboard players set @s[scores={move=4..25},has_property={property:awaken=1..}] move 3