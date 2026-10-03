effect @s resistance 0 30 true
scoreboard players set @s Frames 0
tag @s remove Frames
damage @s 35
scoreboard players set @s cutscene 0
tag @e remove mahoraga_cutscene2
tag @e remove mahoraga_cutscene2b
scoreboard players set @s knockdown 95
summon ds:mahoraga_knockback1 ^^^1
summon ds:mahoraga_knockback1 ^^^1
scoreboard players set @s  Hit 10
playsound random.explode @a[r=100] ~~~ 9999 0.6 9999
playsound mob.shock1 @a[r=100] ~~~ 9999 0.6 9999
camerashake add @a[r=50] 4 0.25
particle ds:heavy_impact1 ~~1~
particle ds:heavy_impact2 ~~1~
particle ds:heavy_impact3 ~~1~
particle ds:heavy_impact4 ~~1~
camera @a[r=10] clear
scoreboard players set @a[r=10] Camera 5
scoreboard players set @e[family=mahoraga,c=1] cutscene 0
