execute as @e[family=mahoraga,r=15,tag=!slash_adapted,tag=!slash_adapting] at @s run particle ds:mahoraga_adaptwarning ~~~
execute as @e[family=mahoraga,r=15,tag=!slash_adapted,tag=!slash_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[family=mahoraga,r=15,tag=!slash_adapted,tag=!slash_adapting] adapttimer 600
scoreboard players add @e[family=mahoraga,r=15,tag=!slash_adapted,tag=!slash_adapting,tag=!serious] adapttimer 250
tag @e[family=mahoraga,r=15,tag=!slash_adapted,tag=!slash_adapting] add slash_adapting

effect @e[family=mahoraga,r=15,tag=slash_adapted] instant_health 1 0 true
execute as @e[family=mahoraga,r=15,tag=slash_adapted] at @s run playsound place.sculk @a ~~~ 10000000 0.5 10000000
execute as @e[family=mahoraga,r=15,tag=slash_adapted] at @s run particle ds:mahoraga_adapted ~~~


execute as @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!slash_adapted,tag=!slash_adapting,rm=0.25] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!slash_adapted,tag=!slash_adapting,rm=0.25] adapttimer 600
tag @e[scores={wheelactive=1..,adaptCD=0},r=15,tag=!slash_adapted,tag=!slash_adapting,rm=0.25] add slash_adapting

effect @e[scores={wheelactive=1..},r=15,tag=slash_adapted,rm=0.25] instant_health 1 0 true
execute as @e[scores={wheelactive=1..},r=15,tag=slash_adapted,rm=0.25] at @s run playsound place.sculk @a ~~~ 10000000 0.5 10000000
execute as @e[scores={wheelactive=1..},r=15,tag=slash_adapted,rm=0.25] at @s run particle ds:wheel_aura1 ~~2.15~
execute as @e[scores={wheelactive=1..},r=15,tag=slash_adapted,rm=0.25] at @s run particle ds:wheel_aura2 ~~2.15~
