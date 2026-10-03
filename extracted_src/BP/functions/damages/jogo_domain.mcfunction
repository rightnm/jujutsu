execute as @e[family=mahoraga,r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[family=mahoraga,r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] adapttimer 900
scoreboard players add @e[family=mahoraga,r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting,tag=!serious] adapttimer 250
tag @e[family=mahoraga,r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] add IronMountain_adapting

execute as @e[family=mahoraga,r=15,tag=IronMountain_adapted] at @s at @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] unless entity @e[scores={domain=1..},r=50] run playanimation @s animation.mahoraga.slash1
execute as @e[family=mahoraga,r=15,tag=IronMountain_adapted] at @s at @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] unless entity @e[scores={domain=1..},r=50] at @s run playsound mob.slash1 @a[r=100]
execute as @e[family=mahoraga,r=15,tag=IronMountain_adapted] at @s as @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] at @s unless entity @e[scores={domain=1..},r=50] run scoreboard players set @s Deleter 20
execute as @e[family=mahoraga,r=15,tag=IronMountain_adapted] at @s run playsound place.sculk @a ~~~ 10000000 0.5 10000000
execute as @e[family=mahoraga,r=15,tag=IronMountain_adapted] at @s run particle ds:mahoraga_adapted ~~~


execute as @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] at @s run playsound mob.shulker.hurt @a ~~~ 1000000 0.3 1000000
scoreboard players set @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] adapttimer 600
tag @e[rm=0.25,scores={wheelactive=1..,adaptCD=0},r=15,tag=!IronMountain_adapted,tag=!IronMountain_adapting] add IronMountain_adapting

execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s at @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] unless entity @e[scores={domain=1..},r=50] run camera @a[r=60] fade time 0 0.3 0.5 color 255 255 255
execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s at @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] unless entity @e[scores={domain=1..},r=50] at @s run playsound mob.slash1 @a[r=100]
execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s as @e[family=projectile,name=IronMountain,c=1,r=50,scores={Deleter=21..}] at @s unless entity @e[scores={domain=1..},r=50] run scoreboard players set @s Deleter 20
execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s run playsound place.sculk @a ~~~ 10000000 0.5 10000000
execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s run particle ds:wheel_aura1 ~~2.15~
execute as @e[rm=0.25,scores={wheelactive=1..,domain=0,domainactive=0},r=15,tag=IronMountain_adapted] at @s run particle ds:wheel_aura2 ~~2.15~

