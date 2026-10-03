playanimation @s[scores={move=50..}] animation.beru.clash_starter

scoreboard players set @s[scores={move=5..}] Move 6
scoreboard players set @s[scores={move=5..}] Camera 6
scoreboard players set @s[scores={move=5..}] Frames 6

#force
execute as @s[scores={move=36..}] at @s  run execute as @p[tag=!creative,tag=!spectator,r=100] at @s run tp @s ~~~~ 0
execute as @s[scores={move=36..}] at @s  run execute as @p[tag=!creative,tag=!spectator,r=100] at @s run tp @e[type=ds:beru_curse,scores={move=46..},c=1] ^^^1.5 facing @s

execute as @s[scores={move=35..}] at @s  run  tag @e remove beru_clash
execute as @s[scores={move=35..}] at @s  run  tag @e remove beru_clashhit

execute as @s[scores={move=31..}] at @s  run particle ds:turbo_intensity4 ~~1~
execute as @s[scores={move=31..}] at @s  run camerashake add @a[r=10] 0.15 0.15
execute as @s[scores={move=47}] at @s  run playsound mob.turbulence @a[r=100] ~~~ 99999 0.8 99999

execute as @s[scores={move=45}] at @s  run particle ds:unparrymarker ~~1.75~
execute as @s[scores={move=45}] at @s  run execute as @a[r=100] at @s run playsound music.sekiro @s ~~~ 9999 0.75 9999

execute as @s[scores={move=31}] at @s  run playsound mob.blitz1 @a[r=100] ~~~ 99999 1.75 99999

execute as @s at @s run tp @s ~~~~ 0

execute as @s[scores={move=30}] at @s positioned ^^^3 run tag @e[type=!ds:beru_curse,r=2.9,c=1,type=!Player,scores={strength=40..}] add beru_clashhit
execute as @s[scores={move=30}] at @s positioned ^^^3 run tag @e[type=!ds:beru_curse,r=2.9,c=1,type=Player,scores={strength=50..,agility=50..}] add beru_clashhit

execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run particle ds:large_impact1 ^^^-1.5
execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run particle ds:large_impact2 ^^^-1.5
execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run camerashake add @a[r=100] 2 0.15
execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run playsound mob.shock1 @a[r=100] ~~~ 99999 1 99999
execute as @s[scores={move=30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run tp @e[tag=beru_clashhit,c=1] ^^25^10
execute as @s[scores={move=25..30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run tag @s add beru_clash
execute as @s[scores={move=25..30}] at @s positioned ^^^3 if entity @e[tag=beru_clashhit] run scoreboard players set @s[tag=beru_clash] cutscene 10001

scoreboard players set @s[scores={move=1..30}] Stun 20