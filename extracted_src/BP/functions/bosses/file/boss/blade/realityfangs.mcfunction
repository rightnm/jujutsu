execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 40
tag @s[tag=!Frames] add Frames
tp @s ^^^3.3 
execute if entity @p[tag=arenaboss,r=300] run tp @s ~ 240 ~


execute if entity @p[tag=griefable] unless entity @p[tag=arenaboss] run fill ^^-2^1  ^^35^-4 air  
particle ds:realityfangs1b
particle ds:realityfangs2b
particle ds:realityfangs3b
camerashake add @a[r=200] 0.2 0.1
playsound mob.tear @a[r=200] ~~37~ 99999 3.65 99999

scoreboard players set @e[tag=!Frames,family=!heroic,r=5] Hit 5
damage @e[tag=!Frames,family=!heroic,r=5] 22 suicide

execute positioned ~ ~5.1 ~ run scoreboard players set @e[tag=!Frames,family=!heroic,r=5] Hit 5
execute positioned ~ ~5.1 ~ run damage @e[tag=!Frames,family=!heroic,r=5] 22 suicide

execute positioned ~ ~10.1 ~ run scoreboard players set @e[tag=!Frames,family=!heroic,r=5] Hit 5
execute positioned ~ ~10.1 ~ run damage @e[tag=!Frames,family=!heroic,r=5] 22 suicide

execute positioned ~ ~15.1 ~ run scoreboard players set @e[tag=!Frames,family=!heroic,r=5] Hit 5
execute positioned ~ ~15.1 ~ run damage @e[tag=!Frames,family=!heroic,r=5] 22 suicide



