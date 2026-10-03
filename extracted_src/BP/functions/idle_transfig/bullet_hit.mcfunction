execute as @s unless block ~~~ air run particle ds:sparks ~~1~
execute as @s unless block ~~~ air run particle ds:transfigure_death3 ~~1~
execute as @s unless block ~~~ air run particle ds:transfigure_death4 ~~1~
execute as @s unless block ~~~ air run particle ds:large_impact1 ~~1~
execute as @s unless block ~~~ air run particle ds:curses_energy_hit1 ~~1~
execute as @s unless block ~~~ air run particle ds:curses_energy_hit2 ~~1~
execute as @s unless block ~~~ air run particle ds:curses_energy_hit3 ~~1~
execute as @s unless block ~~~ air run playsound mob.blood3 @a[r=50] ~~~ 99999 2.5 99999
execute as @s unless block ~~~ air run playsound mob.disfigure1 @a[r=50] ~~~ 90999 2.5 99990
execute as @s run damage @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] 8 override
execute as @s run scoreboard players set @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Stun 15
execute as @s run scoreboard players add @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Evade 4
execute as @s run scoreboard players add @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Hit 2
execute as @s if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=2.5]  at @s run playsound mob.blood4 @a[r=50] ~~1~ 99999 3 99999
execute as @s if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=2.5]  at @s run particle ds:heavy_impact1 ~~~

function damages/blunt_damage

execute if entity @p[tag=griefable] run fill ^^^ ^^^-1 air [] destroy
event entity @s ds:despawn_self
