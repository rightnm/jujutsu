playanimation @s[scores={move=64..}] animation.beru.speedblitz2

execute as @s run tp @s ~~~~ 0 

scoreboard players set @s infinity 10

execute as @s[scores={move=30..45}] at @s run tp @s ^^^2.5


execute as @s[scores={move=46..}] at @s run tp @s ~~~ facing @e[c=1,tag=!Frames,r=40,family=!npc,family=!projectile,family=!purecurse,family=!damage,type=!item,type=!xp_orb,type=!falling_block]

scoreboard players set @s[scores={move=35..45}] atk 2

execute as @s[scores={move=45}] at @s run particle ds:ground_slam1
execute as @s[scores={move=45}] at @s run particle ds:large_impact1 ~~~
execute as @s[scores={move=45}] at @s run particle ds:large_impact2 ~~~
execute as @s[scores={move=45}] at @s run particle ds:rubble3
execute as @s[scores={move=37..45}] at @s run function damages/slash_damage
execute as @s[scores={move=30..45}] at @s run playsound mob.slash1 @a[r=100] ~~-15~ 99999 1.85 99999
execute as @s[scores={move=30..45}] at @s run playsound mob.wither.break_block @a[r=100] ~~-15~ 99999 1.75 99999
execute as @s[scores={move=30..45}] at @s run playsound mob.wither.shoot @a[r=100] ~~-15~ 99999 1.75 99999
execute as @s[scores={move=30..45}] at @s run playsound mob.bat.takeoff @a[r=100] ~~-15~ 99999 1.75 99999
execute as @s[scores={move=30..45}] at @s run playsound mob.blaze.shoot @a[r=100] ~~-15~ 99999 1.75 99999
execute as @s[scores={move=30..45}] at @s run execute as @e[c=2,tag=!Frames,r=20,family=!npc,family=!projectile,family=!purecurse,family=!damage,type=!item,type=!xp_orb,type=!falling_block] at @s run function mobs/curses/beru/speedblitzed2

execute as @s[scores={move=30..45}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={move=25..45}] unless block ~~~ air run tp @s ~~1~
execute as @s[scores={move=25..45}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..45}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..45}] if block ~~-0.15~ air run tp @s ~~-0.15~
execute as @s[scores={move=25..38}] run tp @s ^^^0.15

scoreboard players set @s[scores={move=4..25},has_property={property:awaken=1..}] move 3