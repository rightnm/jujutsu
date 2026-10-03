scoreboard players remove @s[scores={plummet=1..}] plummet 1
scoreboard players remove @s[scores={plummet=1..,Hit=1..}] plummet 1
playanimation @s[scores={plummet=5..}] animation.knock
tp @s ~~~~ 0
execute if block ~~-1~ air run tp @s ~~-1~
execute if block ~~-1~ air run tp @s ~~-1~
execute if block ~~-1~ air run tp @s ~~-1~
damage @s 2 override
tag @s[tag=!noStunnedAnim] add noStunnedAnim
scoreboard players set @s knockdown 25
scoreboard players set @s Hit 3
particle ds:slam_dust2
particle ds:rubble3
particle ds:ground_pound2
particle ds:ground_pound4
playsound random.explode @a[r=100] ~~-12~ 99999 0.5 99999
playsound mob.wither.break_block @a[r=100] ~~-12~ 99999 0.5 99999
execute if entity @p[tag=griefable] positioned ~~-2~ run function 4x4sphere
