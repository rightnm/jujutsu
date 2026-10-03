execute as @e[family=mahoraga,r=15,tag=!infinity_adapted,tag=!infinity_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[family=mahoraga,r=15,tag=!infinity_adapted,tag=!infinity_adapting] adapttimer 600
scoreboard players add @e[family=mahoraga,r=15,tag=!infinity_adapted,tag=!infinity_adapting,tag=!serious] adapttimer 250
tag @e[family=mahoraga,r=15,tag=!infinity_adapted,tag=!infinity_adapting] add infinity_adapting

execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run execute as @e[scores={infinity=1..,move=0,cutscene=0,domain=0},r=5] at @s run particle ds:infinity_shatter ~~~
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run execute as @e[scores={infinity=1..,move=0,cutscene=0,domain=0},r=5] at @s run particle ds:infinity_shatter2 ~~1~
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run execute as @e[scores={infinity=1..,move=0,cutscene=0,domain=0},r=5] at @s run playsound random.glass @a ~~~ 1000000 1.5 1000000
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run execute as @e[scores={infinity=1..,move=0,cutscene=0,domain=0},r=5] at @s run camerashake add @a[r=20] 2 0.15
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run scoreboard players set @e[scores={infinity=4..,Frames=4..,move=0,cutscene=0,domain=0},r=5] Frames 3
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s run scoreboard players set @e[scores={infinity=4..,move=0,cutscene=0,domain=0},r=5] infinity 3
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s if entity @e[scores={infinity=3,move=0,cutscene=0,domain=0},r=5] run playsound place.sculk @a ~~~ 10000000 0.5 10000000
execute as @e[family=mahoraga,r=15,tag=infinity_adapted,c=1] at @s if entity @e[scores={infinity=3,move=0,cutscene=0,domain=0},r=5] run particle ds:mahoraga_adapted ~~~



execute as @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=5,tag=!infinity_adapted,tag=!infinity_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=5,tag=!infinity_adapted,tag=!infinity_adapting] adapttimer 600
tag @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=5,tag=!infinity_adapted,tag=!infinity_adapting] add infinity_adapting

execute as @e[rm=0.25,scores={wheelactive=1..},r=5,tag=infinity_adapted,c=1] at @s run execute as @e[scores={infinity=1..,move=0,cutscene=0,domain=0},r=5] at @s run function infinity_break
execute as @e[rm=0.25,scores={wheelactive=1..},r=5,tag=infinity_adapted,c=1] at @s run particle ds:wheel_aura1 ~~2.15~
execute as @e[rm=0.25,scores={wheelactive=1..},r=5,tag=infinity_adapted,c=1] at @s run particle ds:wheel_aura2 ~~2.15~

execute as @e[tag=infinity_adapted,scores={move=1..},r=4.5,c=1] at @s run execute as @e[scores={infinity=1..},tag=limitless,r=4.5] at @s run function infinity_break


