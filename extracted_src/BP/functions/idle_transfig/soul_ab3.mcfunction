playanimation @s[scores={move=60..61}] animation.mahito.ab3

playanimation @s[scores={move=48..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=48..,Stun=1..}] move 3
tag @s[scores={move=48..,Stun=1..},tag=form2] remove form2


scoreboard players set @s[scores={move=5..,Move=0..5}] Move 20

tag @s[scores={move=15..46}] add transfiguring

execute as @s[scores={move=58..}] at @s if block ~~-1~ air run scriptevent ds:downfall 

execute as @s[scores={move=60}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 9999 0.9 9999
execute as @s[scores={move=60}] at @s run particle ds:instant_star ~~1~

execute as @s[scores={move=50}] at @s run playsound mob.whoosh2 @a[r=25] ~~1~ 9999 0.75 9999
execute as @s[scores={move=45}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=45}] at @s run camerashake add @a[r=5] 0.75 0.25
execute as @s[scores={move=45}] at @s run particle ds:ground_slam2 

execute as @s[scores={move=60}] at @s run playsound mob.mahito_headon1 @a[r=50] ^^1^ 9999 1 9999

execute as @s[scores={move=15..45}] at @s run scriptevent ds:knockback 1.5
execute as @s[scores={move=15..45}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run function _hitdodge
execute as @s[scores={move=15..45}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run tag @s add Frames
execute as @s[scores={move=15..45}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run scoreboard players set @s Frames 5



execute as @s[scores={move=15..45}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,family=human,type=!player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3
execute as @s[scores={move=15..45}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,tag=player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=15..45}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,family=dummy,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=15..45}] at @s positioned ^^^2.15 run execute as @a[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3


execute as @s[scores={move=987..1000}] at @s unless block ~~-0.15~ air run particle ds:sprint
execute as @s[scores={move=987..1000}] at @s run scriptevent ds:knockback 1.5
execute as @s[scores={move=987..1000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run function _hitdodge
execute as @s[scores={move=987..1000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run tag @s add Frames
execute as @s[scores={move=987..1000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run scoreboard players set @s Frames 5

execute as @s[scores={move=987..1000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,family=human,type=!player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3
execute as @s[scores={move=987..1000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,tag=player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=987..1000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,family=dummy,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=987..1000}] at @s positioned ^^^2.15 run execute as @a[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3
execute as @s[scores={move=999}] at @s run playsound mob.whoosh2 @a[r=25] ~~1~ 9999 1.35 9999
execute as @s[scores={move=997}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=997}] at @s run camerashake add @a[r=5] 0.75 0.25
execute as @s[scores={move=997}] at @s run particle ds:ground_slam2 
scoreboard players set @s[scores={move=985..987}] move 13


execute as @s[scores={move=1987..2000}] at @s unless block ~~-0.15~ air run particle ds:sprint
execute as @s[scores={move=1987..2000}] at @s run scriptevent ds:knockback 1.5
execute as @s[scores={move=1987..2000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run function _hitdodge
execute as @s[scores={move=1987..2000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run tag @s add Frames
execute as @s[scores={move=1987..2000}] at @s run execute as @e[family=boss,scores={cutscene=0,strength=20..,detect_health=40..},r=5,type=!ds:yuji_itadori] at @s run scoreboard players set @s Frames 5

execute as @s[scores={move=1987..2000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,family=human,type=!player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3
execute as @s[scores={move=1987..2000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!purecurse,tag=player,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=1987..2000}] at @s positioned ^^^2.15 run execute as @e[tag=!Frames,tag=!soul_adapted,r=2.145,family=dummy,c=1,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}]  run function idle_transfig/transfigure_touched3
execute as @s[scores={move=1987..2000}] at @s positioned ^^^2.15 run execute as @a[tag=!Frames,tag=!soul_adapted,r=2.145,tag=!idle_transfig] at @s unless entity @s[scores={dying=1..}] run function idle_transfig/transfigure_touched3
execute as @s[scores={move=1999}] at @s run playsound mob.whoosh2 @a[r=25] ~~1~ 9999 1.35 9999
execute as @s[scores={move=1997}] at @s run particle ds:instant_star ~~1~
execute as @s[scores={move=1997}] at @s run camerashake add @a[r=5] 0.75 0.25
execute as @s[scores={move=1997}] at @s run particle ds:ground_slam2 

execute as @s[scores={move=1987}] at @s run playsound mob.whoosh2 @a[r=25] ~~1~ 9999 1.25 9999
execute as @s[scores={move=5}] at @s if entity @e[tag=transfigure_death2,r=20] run playsound mob.mahito_headon2 @a[r=50] ^^1^ 9999 1 9999
scoreboard players set @s[scores={move=1985..1987}] move 13


execute as @s[scores={move=7..13}] at @s run scriptevent ds:knockback 0.4
execute as @s[scores={move=7..13}] at @s run particle ds:sprint
scoreboard players set @s[scores={move=7..13}] Camera 20

execute as @s[type=ds:mahito,tag=warned_by_sukuna] at @s if entity @e[family=yuji,r=5] run function cancel_attack
execute as @s[type=ds:mahito,tag=warned_by_sukuna] at @s if entity @e[tag=has_sukuna,r=5] run function cancel_attack
execute as @s[type=ds:mahito,tag=warned_by_sukuna] at @s if entity @e[tag=sukuna,r=5] run function cancel_attack


tag @s[scores={move=0..3}] remove form2
tag @s remove transfiguring
scoreboard players set @s Disabled2 3