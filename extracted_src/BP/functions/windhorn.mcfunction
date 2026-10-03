tp @s ^^^1.6
execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 28
event entity @s[scores={Deleter=0..1}] ds:disappear
tag @s[tag=!Frames] add Frames
damage @e[tag=!Frames,r=3] 5 override
scoreboard players set @e[tag=!Frames,r=3] Stun 15
effect @e[tag=!Frames,r=3] levitation 1 15 true

execute positioned ~~3.1 ~ run damage @e[tag=!Frames,r=3] 5 override
execute positioned ~~3.1 ~ run scoreboard players set @e[tag=!Frames,r=3] Stun 15
execute positioned ~~3.1 ~ run effect @e[tag=!Frames,r=3] levitation 1 15 true
execute positioned ~~6.1 ~ run damage @e[tag=!Frames,r=3] 5 override
execute positioned ~~6.1 ~ run scoreboard players set @e[tag=!Frames,r=3] Stun 15
execute positioned ~~6.1 ~ run effect @e[tag=!Frames,r=3] levitation 1 15 true
execute positioned ~~9.1 ~ run damage @e[tag=!Frames,r=3] 5 override
execute positioned ~~9.1 ~ run scoreboard players set @e[tag=!Frames,r=3] Stun 15
execute positioned ~~9.1 ~ run effect @e[tag=!Frames,r=3] levitation 1 15 true
execute positioned ~~12.1 ~ run damage @e[tag=!Frames,r=3] 5 override
execute positioned ~~12.1 ~ run scoreboard players set @e[tag=!Frames,r=3] Stun 15
execute positioned ~~12.1 ~ run effect @e[tag=!Frames,r=3] levitation 1 15 true
particle ds:ground_slam2
camerashake add @a[r=100] 0.08 0.08



execute if entity @p[tag=griefable] unless entity @a[tag=arenaboss] unless block ~~~ air run summon ds:lapse_explode


playsound random.explode @a[r=100] ~~-25~ 99999 1.25 99999
