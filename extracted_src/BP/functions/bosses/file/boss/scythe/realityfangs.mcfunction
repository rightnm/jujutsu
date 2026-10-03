tag @s[tag=!Frames] add Frames
tp @s ^^^3.3 
execute if entity @p[tag=arenaboss] run tp @s ~ 240 ~


execute unless entity @p[tag=arenaboss] if entity @p[tag=griefable] run function 4x4sphere
execute unless entity @p[tag=arenaboss] if entity @p[tag=griefable] positioned ~~4~ run function 4x4sphere
execute unless entity @p[tag=arenaboss] if entity @p[tag=griefable] positioned ~~8~ run function 4x4sphere
execute unless entity @p[tag=arenaboss] if entity @p[tag=griefable] run fill ~2~40~2~-2~-5~-2 air


execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 40
particle ds:realityfangs1
particle ds:realityfangs2
particle ds:realityfangs3
camerashake add @a[r=200] 0.2 0.1
playsound mob.tear @a[r=200] ~~~ 99999 3.25 99999
scoreboard players set @e[tag=!Frames,family=!heroic,r=12] Hit 5
damage @e[tag=!Frames,family=!heroic,r=12] 8 suicide
execute positioned ~ ~12.1 ~ run scoreboard players set @e[tag=!Frames,family=!heroic,r=12] Hit 5
execute positioned ~ ~12.1 ~ run damage @e[tag=!Frames,family=!heroic,r=12] 8 suicide