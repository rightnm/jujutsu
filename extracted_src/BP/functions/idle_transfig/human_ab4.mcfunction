
execute as @s[type=player,scores={move=40..},hasitem={item=ds:unstable_transfigured_human,quantity=0..2}] run scoreboard players set @s move 3
execute as @s[type=player,scores={move=40..},hasitem={item=ds:stable_transfigured_human,quantity=0..2}] run scoreboard players set @s move 3

playanimation @s[scores={move=60..61}] animation.mahito.human_ab4

tag @s[scores={move=1..2},tag=form11] remove form11
event entity @s[scores={move=59..}] six_souls


execute as @s[type=!player] at @s run tp @s ~~~

event entity @s[scores={move=27..,Stun=1..},tag=form11] mahito_metal_off
tag @s[scores={move=27..,Stun=1..},tag=form11] remove form11
playanimation @s[scores={move=27..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=27..,Stun=1..}] move 0

event entity @s[scores={move=0..20},has_property={property:mahito_weapons=1..}] mahito_metal_off

execute as @s[scores={move=60}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.5 99999
execute as @s[scores={move=55}] at @s run playsound random.whoosh @a[r=25] ~~1~ 99999 0.75 99999

execute as @s[scores={move=55}] at @s run  particle ds:rubble3
execute as @s[scores={move=55}] at @s run  particle ds:slam
execute as @s[scores={move=55}] at @s run  particle ds:leap
execute as @s[scores={move=55}] at @s run  particle ds:pushed_up1
execute as @s[scores={move=55}] at @s run camerashake add @a[r=50] 2 0.25
execute as @s[scores={move=55}] at @s run playsound random.explode @a[r=55] ~~1~ 99999 1.25 99999
execute as @s[scores={move=55}] at @s run playsound mob.wither.break_block @a[r=55] ~~1~ 99999 0.5 99999
execute as @s[scores={move=55}] at @s run tp @s ~~20~

execute as @s[scores={move=58..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=58..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=58..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[type=!player] at @s run tp @s ~~~ facing @e[scores={detect_health=0..},family=!purecurse,type=!item,type=!xp_orb,family=!projectile,tag=!creative,tag=!curse,c=1]

execute as @s[scores={move=53}] at @s run playsound mob.mahito_headon1 @a[r=50] ^^1^ 9999 1.1 9999
execute as @s[scores={move=33}] at @s run stopsound @a mob.mahito_headon1

scoreboard players set @s[scores={move=20..22}] Frames 25

clear @s[scores={move=20},tag=!creative] ds:unstable_transfigured_human 0 3
clear @s[scores={move=20},tag=!creative] ds:stable_transfigured_human 0 3

scoreboard players set @s[scores={move=40..}] Move 40

effect @s[scores={move=25..50}] slow_falling 1 1 true
execute as @s[scores={move=5..50}] at @s run scriptevent ds:antiair

execute as @s[scores={move=32}] at @s run playsound mob.mahito_bodyrepel @a[r=60] ~~1~ 99999 1 99999


execute as @s[scores={move=24}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.8 999999
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run  camerashake add @a[r=40] 0.08 0.08 rotational
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run particle ds:curses_energy_hit1 
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run particle ds:large_impact1
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run playsound mob.wither.break_block @a[r=50] ~~1~ 99999 0.85 99999
execute as @s[scores={move=5..20}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=33] 0.4 0.150
execute as @s[scores={move=5..20}] at @s run scriptevent ds:body_repel_max 