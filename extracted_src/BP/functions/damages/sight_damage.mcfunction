execute as @e[family=mahoraga,r=15,tag=!sight_adapted,tag=!sight_adapting] at @s run particle ds:mahoraga_adaptwarning ~~~
execute as @e[family=mahoraga,r=15,tag=!sight_adapted,tag=!sight_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[family=mahoraga,r=15,tag=!sight_adapted,tag=!sight_adapting] adapttimer 600
scoreboard players add @e[family=mahoraga,r=15,tag=!sight_adapted,tag=!sight_adapting,tag=!serious] adapttimer 250
tag @e[family=mahoraga,r=15,tag=!sight_adapted,tag=!sight_adapting] add sight_adapting


execute as @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!sight_adapted,tag=!sight_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!sight_adapted,tag=!sight_adapting] adapttimer 600
tag @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!sight_adapted,tag=!sight_adapting] add sight_adapting

