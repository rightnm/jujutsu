

playanimation @s[scores={cutscene=90..}] animation.kaiju_curse.death
scoreboard players set @s[scores={chance=1..}] chance 0
execute as @s[scores={cutscene=90}] at @s run playsound mob.shock1 @a ~~~ 99999 0.15 99999


effect @s[scores={cutscene=90..}] slowness 4 10 true
execute as @s[scores={cutscene=5..}] at @s run tp @s @s
execute as @s[scores={cutscene=5..}] at @s run scoreboard players set @a[r=70,scores={combat=0..20}] combat 100
execute as @s[scores={cutscene=90..}] at @s run playsound mob.wither.death @a ~~~  999999 0.5 999999

execute as @s[scores={cutscene=11}] at @s run camera @a[r=100] fade time 0.2 0.25 1 color 255 255 255

execute as @s[scores={cutscene=5..11}] at @s if entity @p[tag=griefable] run  damage @e[r=80] 5 override
execute as @s[scores={cutscene=11}] at @s if entity @p[tag=griefable] run function 32x32sphere
execute as @s[scores={cutscene=1..11}] at @s if entity @p[tag=griefable] run fill ~5~5~5 ~-5~-5~-5 air
execute as @s[scores={cutscene=1..11}] at @s if entity @p[tag=griefable] run fill ~2~2~2 ~-2~-3~-2 air

execute as @s[scores={cutscene=5..11}] at @s run particle ds:massive_punch1 ~~12~ 
execute as @s[scores={cutscene=5..11}] at @s run particle ds:massive_punch2 ~~12~ 
execute as @s[scores={cutscene=5..11}] at @s run particle ds:large_shockwave2 ~~12~ 
execute as @s[scores={cutscene=5..11}] at @s run camerashake add @a[r=100] 4 0.25
execute as @s[scores={cutscene=5..14}] at @s run playsound mob.shock1 @a ~~~ 99999 0.5 99999

execute as @s[scores={cutscene=1..2}] at @s run function mobs/curses/kaiju/kaiju_curse_death
execute as @s[scores={cutscene=1..2}] at @s run  event entity @s ds:disappear