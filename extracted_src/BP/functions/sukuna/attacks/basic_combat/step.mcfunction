playanimation @s[scores={move=50}] animation.step
tag @s[scores={move=1..2}] remove wep4s

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..}] Camera 6
scoreboard players set @s[scores={move=5..33}] Frames 7
scoreboard players set @a[scores={move=31}] atk 2

execute as @s[scores={move=35..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=35..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=35..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=35..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=35..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=5..}] at @s run scoreboard players set @e[scores={knock=5..}] knock 20

execute as @s[scores={move=1..}] at @s run tp @s @s
execute as @s[scores={move=20}] at @s run function damages/blunt_damage


execute as @s[scores={move=49}] at @s  run playsound mob.gambaregambare2 @a[r=100] ~~~ 9999 1.05 9999
execute as @s[scores={move=20..49}] at @s  run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cCome on, Try harder.\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={move=22}] at @s  run playsound mob.burst @a[r=100] ~~~ 999999 1 999999
execute as @s[scores={move=20}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 999999 0.8 999999
execute as @s[scores={move=20}] at @s  run camerashake add @a[r=10] 4 0.20 rotational
execute as @s[scores={move=20}] at @s  run particle ds:large_impact1  ~~~
execute as @s[scores={move=20}] at @s  run particle ds:large_impact2 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:large_slam1 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:slam_dust2 
execute as @s[scores={move=20}] at @s  run particle ds:dirt0
execute as @s[scores={move=20}] at @s  run particle ds:dirt2 ~~~
execute as @s[scores={move=20}] at @s  run particle ds:dirt4 ~~0.20~
execute as @s[scores={move=20}] at @s  unless block ~~-1~ air run particle ds:fissure2
execute as @s[scores={move=20}] at @s  run scoreboard players set @e[tag=!Frames,r=9] knock 50
execute as @s[scores={move=20}] at @s  run scoreboard players set @e[tag=!Frames,r=9] Hit 4
execute as @s[scores={move=20}] at @s  run scoreboard players add @e[tag=!Frames,r=9] Evade 10
execute as @s[scores={move=20}] at @s  run damage @e[tag=!Frames,r=9] 20 override
execute as @s[scores={move=24}] at @s  run scoreboard players operation @e[tag=!Frames,r=9] damage += @s damageadd

execute as @s[scores={move=1..}] at @s  run execute as @e[scores={knock=1..},r=8] at @s run tp @s ~~~

execute as @s[scores={move=10}] at @s  if entity @e[tag=griefable] run effect @e[r=10] resistance 1 10 true
execute as @s[scores={move=9}] at @s  run camerashake add @a[r=10] 4 0.20
execute as @s[scores={move=9}] at @s  run playsound random.explode @a[r=100] ~~~ 999999 0.5 999999
execute as @s[scores={move=9}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 999999 0.5 999999
execute as @s[scores={move=9}] at @s  unless block ~~-1~ air run particle ds:fissure2
execute as @s[scores={move=8}] at @s  if entity @e[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={move=8}] at @s  if entity @e[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={move=5}] at @s  if entity @e[tag=griefable] run effect @e[r=20] resistance 0 20 true
execute as @s[scores={move=3..5}] at @s  if entity @e[tag=griefable] run kill @e[name=Sand,r=10]
execute as @s[scores={move=3..5}] at @s  if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=10]
execute as @s[scores={move=3..5}] at @s  if entity @e[tag=griefable] run kill @e[name=Dirt,r=10]
execute as @s[scores={move=3..5}] at @s  if entity @e[tag=griefable] run kill @e[name=Sandstone,r=10]
execute as @s[scores={move=3..5}] at @s  if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=10]

