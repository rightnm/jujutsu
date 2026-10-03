camera @s clear
effect @e[family=mahoraga,c=1] resistance 0 30 true
scoreboard players set @e[family=mahoraga,c=1] Frames 0
tag @e[family=mahoraga,c=1] remove Frames
scoreboard players set @e[family=mahoraga,c=1] cutscene 0
tag @e remove mahoraga_cutscene2
tag @e remove mahoraga_cutscene2b
damage @e[family=mahoraga,c=1] 60 
scoreboard players operation @e[family=mahoraga,c=1] damage += @s damageadd
summon ds:red_reverse ^^-1^-1
scoreboard players set @e[family=mahoraga,c=1] Hit 5
scoreboard players set @e[family=mahoraga,c=1] Stun 30
scoreboard players set @e[family=mahoraga,c=1] knockdown 95
playsound random.explode @a[r=100] ~~~ 9999 0.6 9999
playsound mob.shock1 @a[r=100] ~~~ 9999 0.6 9999
camerashake add @a[r=50] 4 0.25
particle ds:heavy_impact1 ~~1~
particle ds:heavy_impact2 ~~1~
particle ds:heavy_impact3 ~~1~
particle ds:heavy_impact4 ~~1~
particle ds:ground_slam2 ~~1~
scoreboard players set @e[family=mahoraga,c=1] cutscene 0
scoreboard players set @s cutscene 15