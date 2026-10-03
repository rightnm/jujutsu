playanimation @s[scores={move=20..21}] animation.mahito.ab2

playanimation @s[scores={move=12..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=12..,Stun=1..}] move 3
tag @s[scores={move=12..,Stun=1..},tag=form1] remove form1


scoreboard players set @s[scores={move=10..,Move=0..5}] Move 10
scoreboard players set @s[scores={move=10..11,Camera=0..5}] Camera 10

tag @s[scores={move=9..14}] add transfiguring

execute as @s[scores={move=10..11}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run function _hitdodge
execute as @s[scores={move=10..11}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run tag @s add Frames
execute as @s[scores={move=10..11}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run scoreboard players set @s Frames 5

execute as @s[scores={move=20}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=10}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,family=human,type=!player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched2
execute as @s[scores={move=10}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,tag=player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched2
execute as @s[scores={move=10}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,family=dummy,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched2
execute as @s[scores={move=10}] at @s positioned ^^^2.15 run execute as @a[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched2

execute as @s[scores={domainactive=1..,move=10}] at @s if entity @e[type=ds:perfection_domain,r=60] run execute as @e[tag=!Frames,tag=!soul_adapted,r=60,tag=!purecurse,family=!curse,tag=!idle_transfig,family=!transfigured_human,tag=!heavenlyrestriction,family=!heavenlyrestriction] at @s unless entity @s[scores={dying=1..}] unless entity @s[scores={domainimmune=1..}] run function idle_transfig/transfigure_touched2b


tag @s[scores={move=0..3}] remove form1
tag @s remove transfiguring
scoreboard players set @s Disabled2 3