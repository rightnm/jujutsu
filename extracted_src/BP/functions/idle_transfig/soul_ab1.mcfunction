playanimation @s animation.mahito.touch1
tag @s add transfiguring

execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run function _hitdodge
execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run tag @s add Frames
execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run scoreboard players set @s Frames 5

execute as @s at @s positioned ^^^1.5 run execute as @e[tag=!Frames,tag=!soul_adapted,r=1.49,c=1,family=transfigured_human] at @s run function idle_transfig/transfigure_gainitem

execute as @s at @s positioned ^^^1.5 run execute as @e[tag=!Frames,tag=!soul_adapted,r=1.49,tag=!purecurse,family=human,type=!player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched1
execute as @s at @s positioned ^^^1.5 run execute as @e[tag=!Frames,tag=!soul_adapted,r=1.49,tag=!purecurse,tag=player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched1
execute as @s at @s positioned ^^^1.5 run execute as @e[tag=!Frames,tag=!soul_adapted,r=1.49,family=dummy,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched1
execute as @s at @s positioned ^^^1.5 run execute as @a[tag=!Frames,tag=!soul_adapted,r=1.49,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched1

execute as @s[scores={domainactive=1..}] at @s if entity @e[type=ds:perfection_domain,r=60] run execute as @e[tag=!Frames,tag=!soul_adapted,r=60,tag=!purecurse,family=!curse,tag=!idle_transfig,family=!transfigured_human,tag=!heavenlyrestriction,family=!heavenlyrestriction] at @s unless entity @s[scores={dying=1..}] unless entity @s[scores={domainimmune=1..}] run function idle_transfig/transfigure_touched1b


tag @s remove transfiguring
scoreboard players set @s Disabled2 3