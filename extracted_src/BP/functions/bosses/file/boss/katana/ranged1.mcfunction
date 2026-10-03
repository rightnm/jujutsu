playanimation @s[scores={move=45..46}] animation.primesoul.katana_ranged1

execute as @s[scores={move=1..6}] at @s run event entity @s primekatana_sheathed
execute as @s[scores={move=26}] at @s run event entity @s primekatana
execute as @s[scores={move=32}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=32}] at @s run playsound music.sekiro @a[r=200]

execute as @s[scores={move=45}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=43}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=45}] at @s run particle ds:dirt0

execute as @s[scores={move=26..30}] at @s run particle ds:rift_stars
execute as @s[scores={move=26..}] at @s run particle ds:rift7 ~~1~
execute as @s[scores={move=26..}] at @s run particle ds:turbo_intensity2
execute as @s[scores={move=26..}] at @s run particle ds:turbo_intensity3
execute as @s[scores={move=26..}] at @s run particle ds:rift6 ~~1~
execute as @s[scores={move=26..}] at @s run particle ds:rift4 ~~1~
execute as @s[scores={move=26..}] at @s run tp @s ~~~ facing @p[m=!c]


execute as @s[scores={move=25}] at @s run playsound mob.slash @a ~~~ 9999 2 9999
execute as @s[scores={move=15..27}] at @s run execute as @p[tag=!Frames,r=200] at @s run tp @s @s
execute as @s[scores={move=23..27}] at @s run execute as @p[tag=!Frames,r=200] at @s run tp @s ~~2~
execute as @s[scores={move=15..27}] at @s run execute as @p[tag=!Frames,r=200] at @s run tp @e[type=ds:primesoul,c=1] ^^0.5^1 facing ~~1~

execute as @s[scores={move=20..24}] at @s unless entity @p[r=5] run playanimation @s animation.stunned
execute as @s[scores={move=20..24}] at @s unless entity @p[r=5] run scoreboard players set @s move 5

execute as @s[scores={move=10..27}] at @s run camera @p[r=6] set minecraft:free pos ^12^-1^1 facing ^^^1
execute as @s[scores={move=4..7}] at @s run camera @a clear

execute as @s[scores={move=24}] at @s run playsound mob.wither.shoot @a ~~~ 99999 1.5 99999
execute as @s[scores={move=24}] at @s run playsound mob.slash1 @a ~~~ 99999 1 99999
execute as @s[scores={move=24}] at @s run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=24}] at @s run damage @p[tag=!Frames,r=5,c=1] 12 suicide
execute as @s[scores={move=24}] at @s run scoreboard players set @p[tag=!Frames,r=5,c=1] Stun 25
execute as @s[scores={move=24}] at @s run scoreboard players set @p[tag=!Frames,r=5,c=1] Hit 4
execute as @s[scores={move=24}] at @s run execute as @p[tag=!Frames,r=5,c=1] at @s run playsound mob.sword @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=24}] at @s run execute as @p[tag=!Frames,r=5,c=1] at @s run particle ds:slice1

execute as @s[scores={move=14}] at @s run particle ds:invert ^^1^1 
execute as @s[scores={move=14}] at @s run playsound mob.wither.shoot @a ~~~ 99999 1.5 99999
execute as @s[scores={move=14}] at @s run playsound mob.wither.shoot @a ~~~ 99999 0.45 99999
execute as @s[scores={move=14}] at @s run playsound mob.slash1 @a ~~~ 99999 0.85 99999
execute as @s[scores={move=14}] at @s run camerashake add @a[r=200] 2 0.15 rotational
execute as @s[scores={move=14}] at @s run damage @p[tag=!Frames,r=5,c=1] 12 suicide
execute as @s[scores={move=14}] at @s run scoreboard players set @p[tag=!Frames,r=5,c=1] Stun 25
execute as @s[scores={move=14}] at @s run scoreboard players set @p[tag=!Frames,r=5,c=1] Hit 4
execute as @s[scores={move=14}] at @s run execute as @p[tag=!Frames,r=5,c=1] at @s run playsound mob.blood @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=14}] at @s run execute as @p[tag=!Frames,r=5,c=1] at @s run particle ds:slice1
execute as @s[scores={move=14}] at @s run scoreboard players set @p[tag=!Frames,r=5,c=1] knockdown 90
execute as @s[scores={move=14}] at @s run summon ds:red_reverse ^^^
execute as @s[scores={move=14}] at @s run summon ds:red_reverse ^^^
execute as @s[scores={move=14}] at @s run camera @a clear

execute as @s[scores={move=1..6}] at @s run tp @s ~ 240 ~

scoreboard players set @s[scores={move=1..4}] chance 2
tag @s[scores={move=1..3}] remove katanaranged1
