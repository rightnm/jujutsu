playanimation @s[scores={move=50..}] animation.astaroth_aoe

scoreboard players set @s[scores={move=4..}] Frames 4
scoreboard players set @s[scores={move=4..}] Move 4

execute as @s[scores={move=43}] at @s run particle ds:leap
execute as @s[scores={move=43}] at @s run particle ds:rubble3

execute as @s[scores={move=43}] at @s run tp @s ~~15~

execute as @s[scores={move=43}] at @s run execute as @a[r=200] at @s run playsound music.soul @s ~~5~ 99999 1.5 99999

execute as @s[scores={move=31..39}] at @s run particle ds:rift_charging2
execute as @s[scores={move=31..39}] at @s run particle ds:rift_charging1

execute as @s[scores={move=5..42}] at @s run tp @s ~~~
execute as @s[scores={move=5..30}] at @s run camerashake add @a[r=100] 1 0.15
execute as @s[scores={move=5..30}] at @s run particle ds:equinox_lightning1 ~~1~
execute as @s[scores={move=5..30}] at @s run particle ds:equinox_lightning2 ~~1~
execute as @s[scores={move=5..30}] at @s run particle ds:equinox_lightning3 ~~1~
execute as @s[scores={move=5..30}] at @s run particle ds:equinox_lightning4 ~~1~
execute as @s[scores={move=30}] at @s run playsound mob.distort3 @a[r=100] ~~~ 99999 0.3 99999
execute as @s[scores={move=30}] at @s run particle ds:invert
execute as @s[scores={move=24}] at @s run playsound mob.distort3 @a[r=100] ~~~ 99999 0.4 99999
execute as @s[scores={move=24}] at @s run summon gg:impact_frame
execute as @s[scores={move=23}] at @s run particle ds:invert
execute as @s[scores={move=18}] at @s run playsound mob.distort3 @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=17}] at @s run summon gg:impact_frame
execute as @s[scores={move=15}] at @s run particle ds:invert
execute as @s[scores={move=12}] at @s run playsound mob.distort3 @a[r=100] ~~~ 99999 0.3 99999
execute as @s[scores={move=11}] at @s run summon gg:impact_frame
execute as @s[scores={move=10}] at @s run particle ds:invert

execute as @s[scores={move=5..30}] at @s run playsound mob.electricity @a[r=50]  ~~15~ 9999 2 99999
execute as @s[scores={move=5..30}] at @s run playsound mob.wither.hurt @a[r=50]  ~~15~ 9999 2 99999
execute as @s[scores={move=5..30}] at @s run damage @e[tag=!Frames,r=30] 2 suicide
execute as @s[scores={move=5..30}] at @s run scoreboard players set @e[tag=!Frames,r=30] Stun 25