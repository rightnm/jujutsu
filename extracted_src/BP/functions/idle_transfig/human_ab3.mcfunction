
execute as @s[type=player,scores={move=40..},hasitem={item=ds:unstable_transfigured_human,quantity=0}] run scoreboard players set @s move 3
execute as @s[type=player,scores={move=40..},hasitem={item=ds:stable_transfigured_human,quantity=0}] run scoreboard players set @s move 3


playanimation @s[scores={move=40..41}] animation.mahito.human_ab3


tag @s[scores={move=1..2},tag=form10] remove form10

event entity @s[scores={move=39..40}] dual_souls

event entity @s[scores={move=27..,Stun=1..},tag=form10] mahito_metal_off
tag @s[scores={move=27..,Stun=1..},tag=form10] remove form10
playanimation @s[scores={move=27..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=27..,Stun=1..}] move 0

event entity @s[scores={move=0..3}] mahito_metal_off

execute as @s[scores={move=37}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 1.5 99999
execute as @s[scores={move=30}] at @s run playsound random.whoosh @a[r=25] ~~1~ 99999 0.75 99999


execute as @s[scores={move=22..26}] at @s run playsound random.disfigure @a[r=25] ~~1~ 99999 0.8 999999

execute as @s[scores={move=30..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=30..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=30..}] at @s if block ~~-1~ air run tp @s ~~-1~

scoreboard players set @s[scores={move=26..27}] Frames 27

tag @s[scores={move=25..32,chance=110}] add bodyrepeled
tag @s[scores={move=25..32},tag=itemUse:ds:idle_transfig3] add bodyrepeled

execute as @s[type=!player,scores={move=22..}] at @s run tp @s ~~~ facing @e[scores={detect_health=0..},family=!purecurse,type=!item,type=!xp_orb,family=!projectile,tag=!creative,tag=!curse,c=1]



clear @s[scores={move=25},tag=!creative] ds:unstable_transfigured_human 0 1
clear @s[scores={move=25},tag=!creative] ds:stable_transfigured_human 0 1

scoreboard players set @s[scores={move=40..}] Move 40
execute as @s[scores={move=30}] at @s run scriptevent ds:knockback 1
execute as @s[scores={move=25}] at @s anchored eyes positioned ^^^1 run playsound mob.wither.break_block @a[r=50] ~~1~ 99999 0.75 99999
execute as @s[scores={move=25}] at @s anchored eyes positioned ^^^1 run playsound mob.clap @a[r=40] ~~~ 99999 2 99999
execute as @s[scores={move=20..21}] at @s anchored eyes positioned ^^^1 run  camerashake add @a[r=40] 4 0.1 rotational
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run particle ds:curses_energy_hit1 
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run particle ds:curses_energy_hit2 
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run particle ds:curses_energy_hit3
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run particle ds:curses_energy1
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run particle ds:large_impact1
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run playsound mob.cursed_energy @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run playsound mob.shock1 @a[r=100] ~~~ 99999 1.8 99999
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=33] 0.4 0.150
execute as @s[scores={move=21}] at @s positioned ^^^1 run summon ds:body_repel ^^^ facing ^^^10