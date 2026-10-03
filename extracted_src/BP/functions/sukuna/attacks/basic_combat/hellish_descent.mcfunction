playanimation @s[scores={move=30}] animation.hellish_descent

tag @s[scores={move=1..2}] remove wep2s

tag @s[scores={move=27..,Stun=1..}] remove wep2s
scoreboard players set @s[scores={move=27..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..20}] Camera 5

scoreboard players set @a[scores={move=15..20}] atk 2
scoreboard players set @a[scores={move=10..23}] Frames 6

execute as @s[scores={move=29..}] at @s run tp @s ~~~

execute as @s[scores={move=5..17}] at @s run tp @s @s
execute as @s[scores={move=15}] at @s run function damages/blunt_damage

execute as @s[scores={move=22..}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=25..29}] at @s run camera @s set minecraft:free ease 0.2 in_sine pos ^-4^10^-4 facing ^3^2^-5
execute as @s[scores={move=15..24}] at @s run camera @s set minecraft:free ease 0.1  in_sine pos ^-3^7^-3 facing ^^^4

execute as @s[scores={move=29}] at @s run playsound mob.wither.break_block @a[r=20] ~~~ 9999 1.2 9999
execute as @s[scores={move=29}] at @s run playsound random.explode @a[r=20] ~~~ 9999 1.2 9999
execute as @s[scores={move=29}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 9999 1.7 9999
execute as @s[scores={move=29}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=29}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=29}] at @s  run particle ds:leap
execute as @s[scores={move=29}] at @s  run particle ds:rubble3
execute as @s[scores={move=29}] at @s  run particle ds:dirt2
execute as @s[scores={move=29}] at @s  run camerashake add @a[r=6] 2 0.1

execute as @s[scores={move=29}] at @s positioned ^^4^5 run playsound mob.youjujutsusorcerers @a[r=100] ~~~ 99999 1 9999

execute as @s[scores={move=15..23}] at @s positioned ^^^4 run execute as @e[tag=!Frames,r=6] at @s run tp @s ~~~ facing @e[tag=sukuna,c=1,rm=0.1]

execute as @s[scores={move=15..}] at @s positioned ^^^4 run titleraw @a[r=20] title {"rawtext":[{"text":"§o§cYou Jujutsu Sorcerers are always trouble,\nNo matter what the era!\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}]}

execute as @s[scores={move=15}] at @s run camera @a[r=25] fade time 0 0 0.25 color 255 255 255
execute as @s[scores={move=18}] at @s positioned ^^^4 run playsound mob.burst @a[r=25] ~~~ 999999 1.35 999999
execute as @s[scores={move=15}] at @s positioned ^^^4 run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:large_impact1  ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:large_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:large_slam1 ~~1~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:slam_dust1
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:slam_dust2 
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:dirt0
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:dirt2 ~~~
execute as @s[scores={move=15}] at @s positioned ^^^2 run particle ds:dirt4 ~~2~
execute as @s[scores={move=15}] at @s positioned ^^^2 unless block ~~-1~ air run particle ds:fissure2
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players add @e[tag=!Frames,r=6] Evade 25
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] knockdown 25
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Stun 25
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players set @e[tag=!Frames,r=6] Hit 2
execute as @s[scores={move=15}] at @s positioned ^^^4 run damage @e[tag=!Frames,r=6] 25 override entity @s
execute as @s[scores={move=15}] at @s positioned ^^^4 run scoreboard players operation @e[tag=!Frames,r=6] damage += @s damageadd
execute as @s[scores={move=15}] at @s positioned ^^^2 if entity @e[tag=griefable] run effect @e[r=10] resistance 1 10 true
execute as @s[scores={move=14}] at @s positioned ^^^2 if entity @e[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={move=14}] at @s positioned ^^^2 if entity @e[tag=griefable] run summon ds:lapse_explode
execute as @s[scores={move=10}] at @s positioned ^^^2 if entity @e[tag=griefable] run effect @e[r=20] resistance 0 20 true
execute as @s[scores={move=3..5}] at @s positioned ^^^2 if entity @e[tag=griefable] run kill @e[name=Sand,r=10]
execute as @s[scores={move=3..5}] at @s positioned ^^^2 if entity @e[tag=griefable] run kill @e[name=Cobblestone,r=10]
execute as @s[scores={move=3..5}] at @s positioned ^^^2 if entity @e[tag=griefable] run kill @e[name=Dirt,r=10]
execute as @s[scores={move=3..5}] at @s positioned ^^^2 if entity @e[tag=griefable] run kill @e[name=Sandstone,r=10]
execute as @s[scores={move=3..5}] at @s positioned ^^^2 if entity @e[tag=griefable] run kill @e[name="Wheat Seeds",r=10]

