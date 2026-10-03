execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:transfigure_death3 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:transfigure_death4 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:blood_2 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:blood ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:large_impact1 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit1 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit2 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run particle ds:curses_energy_hit3 ~~1~
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playsound mob.blood3 @a[r=50] ~~~ 99999 1.5 99999
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playsound mob.disfigure1 @a[r=50] ~~~ 90999 1.5 99990
execute unless entity @s[scores={Deleter=0..}] run damage @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] 7 override
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Stun 15
execute unless entity @s[scores={Deleter=0..}] run scoreboard players add @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Evade 5
execute unless entity @s[scores={Deleter=0..}] run scoreboard players add @e[tag=!Frames,family=!damage,family=!projectile,r=2.5] Hit 3
execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=2.5]  at @s run playsound random.burp @a[r=50] ~~1~ 99999 1.5 99999
execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=2.5]  at @s run playsound mob.blood4 @a[r=50] ~~1~ 99999 2 99999
execute unless entity @s[scores={Deleter=0..}] if block ~~~ air run execute as @e[tag=!Frames,family=!damage,family=!projectile,r=2.5]  at @s run particle ds:heavy_impact1 ~~1~



execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run playanimation @s animation.worm.explode
execute unless entity @s[scores={Deleter=0..}] unless block ~~~ air run scoreboard players set @s Deleter 11



function damages/blunt_damage