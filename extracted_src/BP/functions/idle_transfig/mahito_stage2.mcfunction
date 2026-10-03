playanimation @s[scores={cutscene=80..81}] animation.mahito.stage2

tp @s ~~~~ 0
execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={cutscene=80}] at @s run playsound mob.mahito_stage2 @a[r=200] ~~1~ 99999 1 99999
execute as @s[scores={cutscene=70}] at @s run summon gg:impact_frame
execute as @s[scores={cutscene=68}] at @s run summon gg:impact_frame_black
execute as @s[scores={cutscene=66}] at @s run summon gg:impact_frame


execute as @s[scores={cutscene=70}] at @s run particle ds:burst_impact
execute as @s[scores={cutscene=10..70}] at @s run particle ds:slam
execute as @s[scores={cutscene=10..70}] at @s run playsound mob.wither.shoot @a[r=100] ~~-21~ 9999 2.5 9999
execute as @s[scores={cutscene=10..70}] at @s run playsound random.disfigure @a[r=100] ~~-21~ 9999 2 9999
execute as @s[scores={cutscene=10..70}] at @s run particle ds:curses_energy1 ~~1~
execute as @s[scores={cutscene=10..70}] at @s run particle ds:curses_energy_hit1_big ~~1~
execute as @s[scores={cutscene=10..60}] at @s run scriptevent ds:body_repel_fountain 
event entity @s[scores={cutscene=69..70}] mahito_fit_off
effect @s[scores={cutscene=0..10}] instant_health 1 2 true

event entity @s[scores={cutscene=8}] soul_isomer_spawn
execute as @s[scores={cutscene=6}] at @s run tp @e[type=ds:familiar_entity,r=10,c=2] @s
execute as @s[scores={cutscene=6}] at @s run tp @e[type=ds:familiar_entity,r=10,c=1] ^3^^ facing ^^^30
execute as @s[scores={cutscene=6}] at @s run tp @e[type=ds:familiar_entity,r=10,c=1] ^-3^^ facing ^^^30
execute as @s[scores={cutscene=6}] at @s run event entity @e[type=ds:familiar_entity,r=10,c=2] soul_isomer_spawn

tag @s[scores={cutscene=4}] add owner
execute as @s[scores={cutscene=4}] at @s run damage @e[type=ds:soul_isomer,r=10] 0 override entity @s
tag @s[scores={move=3}] remove owner

scoreboard players set @s agility 0


scoreboard players set @s[scores={cutscene=0..5}] domainCD 0
tag @s[scores={cutscene=0..5}] add mahito_stage2
tag @s[scores={cutscene=0..3}] remove mahito_stage2_cutscene