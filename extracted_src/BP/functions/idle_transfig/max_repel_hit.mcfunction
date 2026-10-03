execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:transfigure_death3 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:transfigure_death4 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:blood_2 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:blood ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:large_impact1 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit1_big ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit2_big ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit3_big ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:rubble3
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:slam ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run camerashake add @a[r=50] 2 0.25
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playsound mob.burst @a[r=50] ~~~ 99999 1.5 99999
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playsound mob.blood3 @a[r=50] ~~~ 99999 1.25 99999
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playsound mob.disfigure1 @a[r=50] ~~~ 90999 1.25 99990
execute unless entity @s[scores={Deleter=0..}] run damage @e[tag=!Frames,family=!damage,family=!projectile,r=8] 3 override
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[tag=!Frames,family=!damage,family=!projectile,r=8] Stun 25
execute unless entity @s[scores={Deleter=0..}] run scoreboard players add @e[tag=!Frames,family=!damage,family=!projectile,r=8] Evade 2
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[tag=!Frames,family=!damage,family=!projectile,r=8] Hit 3
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air if entity @p[tag=griefable] run summon ds:lapse_explode


execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=8]  at @s run playsound random.burp @a[r=50] ~~1~ 99999 1.5 99999
execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=8]  at @s run playsound mob.blood4 @a[r=50] ~~1~ 99999 2 99999
execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=8]  at @s run particle ds:heavy_impact1 ~~1~

function damages/blunt_damage

execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playanimation @s animation.worm.explode
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run scoreboard players set @s Deleter 11

