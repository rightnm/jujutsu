execute unless entity @s[scores={Deleter=0..}] unless entity @s[tag=wall_landed] run scoreboard players set @s Deleter 91
playanimation @s[scores={Deleter=90..},tag=!wall_landed] animation.human_thrown2


execute as @s[scores={Deleter=90..}] run scoreboard objectives add skincolour dummy
execute as @s[scores={Deleter=90..}] run scoreboard players random @s skincolour 1 8
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=1}] transfigured_colour1
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=2}] transfigured_colour2
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=3}] transfigured_colour3
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=4}] transfigured_colour4
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=5}] transfigured_colour5
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=6}] transfigured_colour6
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=7}] transfigured_colour7
execute as @s[scores={Deleter=90..}] run event entity @s[scores={skincolour=8}] transfigured_colour8

execute as @s[scores={Deleter=81..},tag=!wall_landed] at @s if block ^^^0.9 air run tp @s ^^^1

tp @s ~~~~ 0



execute as @s[scores={Deleter=83..},tag=!wall_landed] unless block ^^^0.25 air run scoreboard players set @s Deleter 82

playanimation @s[scores={Deleter=78..79},tag=!wall_landed] animation.human_wall
execute as @s[scores={Deleter=78..79},tag=!wall_landed] at @s run playsound random.disfigure @a[r=50] ~~3~ 99999 1 99999


execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run playsound mob.shock1 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run playsound mob.blood @a[r=50] ~~1~ 99999 0.65 99999
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run playsound mob.blood2 @a[r=50] ~~1~ 99999 0.65 99999
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run camerashake add @a[r=10] 2 0.25
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^-1^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^1^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^-3^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^3^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^-5^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:transfigure_death ^5^^
execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:blood_explode_rain ^^^


execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run particle ds:burst_impact ~~1~ 

execute as @s[scores={move=2..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run scoreboard players set @e[name="transfigure_cube",c=1] move 2
execute as @s[scores={move=5..},tag=wall_landed] at @s if entity @e[type=ds:body_repel,r=5] run scoreboard players set @s move 4

execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run particle ds:ground_pound_1b
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run particle ds:ground_pound_1b
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run playsound mob.metal1 @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.8 9999
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-7^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-6^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-5^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-4^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-3^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-2^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^-1^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^1^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^2^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^3^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^4^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^5^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^6^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air positioned ^7^^ run fill ~~-1~ ~~5~ barrier [] replace air  
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run scoreboard players set @s move 201
execute as @s[scores={Deleter=5..75},tag=!wall_landed] at @s unless block ~~-0.1~ air run tag @s add wall_landed
execute as @s[scores={Deleter=5..75},tag=wall_landed] at @s unless block ~~-0.1~ air run scoreboard players set @s Deleter -1

playanimation @s[tag=wall_landed,scores={move=12..}] animation.human_wall_idle

execute as @s[scores={Deleter=0..1}] at @s  positioned ^-7^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-6^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-5^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-4^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-3^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-2^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^-1^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^1^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^2^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^3^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^4^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={Deleter=0..1}] at @s  positioned ^5^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
execute as @s[scores={Deleter=0..1}] at @s  positioned ^6^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
execute as @s[scores={Deleter=0..1}] at @s  positioned ^7^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
event entity @s[scores={Deleter=0..1}] ds:disappear

execute as @s[scores={move=10..11}] at @s run playanimation @s animation.human_wall_deform
execute as @s[scores={move=10..11}] at @s run playsound random.disfigure @a[r=50] ~~3~ 99999 0.4 99999

execute as @s[scores={move=0..1}] at @s run particle ds:curses_energy_hit1 ~~~
execute as @s[scores={move=0..1}] at @s run particle ds:curses_energy_hit2 ~~~
execute as @s[scores={move=0..1}] at @s  positioned ^-7^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-6^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-5^^ run fill ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-4^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-3^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-2^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^-1^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^1^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^2^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^3^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^4^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier  
execute as @s[scores={move=0..1}] at @s  positioned ^5^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
execute as @s[scores={move=0..1}] at @s  positioned ^6^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
execute as @s[scores={move=0..1}] at @s  positioned ^7^^ run fill  ~3~-3~3 ~-3~5~-3 air [] replace barrier 
event entity @s[scores={move=0..1}] ds:disappear




