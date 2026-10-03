playanimation @s[scores={move=30}] animation.executioners_ab3

tag @s[scores={move=1..2}] remove wep3

tag @s[scores={move=21..,Stun=1..}] remove wep3
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

scoreboard players set @s[scores={move=5..20}] Frames 4
scoreboard players set @s[scores={move=5..20}] Move 4
scoreboard players set @s[scores={move=5..20}] Camera 4

scoreboard players random @s[scores={move=13}] blackflashchance 1 269
scoreboard players set @s[scores={move=13},tag=blackflashrig] blackflashchance 7

scoreboard players set @e[scores={move=7..23}] atk 2
execute as @s[scores={move=21..24}] at @s unless entity @e[tag=!Frames,r=3,rm=0.5] run scriptevent ds:knockback 1

execute as @s[scores={move=5..20}] at @s run playsound portal.travel @a[r=40] ~~~ 0.35 11 9999
execute as @s[scores={move=5..20}] at @s run playsound mob.wither.shoot @a[r=40] ~~~  0.35 2.25
execute as @s[scores={move=5..20}] at @s run playsound mob.slash1 @a[r=40] ~~~  0.35 2.5
execute as @s[scores={move=5..20}] at @s run playsound mob.witch.throw @a[r=40] ~~~  0.5 1.25

execute as @s[scores={move=5..20}] at @s run tp @s @s
execute as @s[scores={move=7..}] at @s run scoreboard objectives add quickdodge dummy
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players random @e[r=1.249,type=!player,scores={strength=0..10},tag=deathsentence] quickdodge 9 10
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players random @e[r=1.249,type=!player,scores={strength=10..20},tag=deathsentence] quickdodge 7 10
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players random @e[r=1.249,type=!player,scores={strength=21..30},tag=deathsentence] quickdodge 5 10
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players random @e[r=1.249,type=!player,scores={strength=31..40},tag=deathsentence] quickdodge 4 10
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players random @e[r=1.249,type=!player,scores={strength=41..44},tag=deathsentence] quickdodge 2 10
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players set @e[type=!player,tag=deathsentence,r=1.249,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run tag @e[r=1.249,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players set @e[r=1.249,scores={quickdodge=1..8}] Frames 4
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run playanimation @e[r=1.249,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run playanimation @e[r=1.249,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run playanimation @e[r=1.249,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=10..20}] at @s positioned ^^^1.25 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0

execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players random @e[r=1.249,type=!player,scores={strength=0..10},tag=deathsentence] quickdodge 9 10
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players random @e[r=1.249,type=!player,scores={strength=10..20},tag=deathsentence] quickdodge 7 10
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players random @e[r=1.249,type=!player,scores={strength=21..30},tag=deathsentence] quickdodge 5 10
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players random @e[r=1.249,type=!player,scores={strength=31..40},tag=deathsentence] quickdodge 4 10
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players random @e[r=1.249,type=!player,scores={strength=41..44},tag=deathsentence] quickdodge 2 10
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players set @e[type=!player,tag=deathsentence,r=1.249,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run tag @e[r=1.249,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players set @e[r=1.249,scores={quickdodge=1..8}] Frames 4 
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run playanimation @e[r=1.249,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run playanimation @e[r=1.249,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run playanimation @e[r=1.249,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=10..20}] at @s positioned ^^^2.5 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0


execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run tag @e[tag=!Frames,r=1.249,tag=idle_transfig,tag=!instant_body,tag=!soul_damage] add soul_damage
execute as @s[scores={move=5}] at @s positioned ^^^1.25 run tag @e[tag=!Frames,r=1.249,tag=!soul_damage] add soul_damage
execute as @s[scores={move=5}] at @s positioned ^^^1.25 run scoreboard players operation @e[tag=!Frames,r=1.249] damagehalf += @s damageadd
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run scoreboard players set @e[tag=!Frames,r=1.249] Stun 35
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run scoreboard players set @e[tag=!Frames,r=1.249] Hit 3
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run scoreboard players add @e[tag=!Frames,r=1.249] Evade 12
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run damage @e[tag=!Frames,r=1.249] 1 suicide
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run execute as @e[type=!item,tag=!Frames,r=1.249,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 run execute as @e[type=!item,tag=!Frames,r=1.249] at @s run function damages/slash_damage
execute as @s[scores={move=7..10}] at @s positioned ^^^1.25 run camerashake add @a[r=6] 0.05 0.08 rotational
execute as @s[scores={move=5..20}] at @s run particle ds:executioners_sword5 ~~1~

execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=1.249,tag=idle_transfig,tag=!instant_body,tag=!soul_damage] add soul_damage
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=1.249,tag=!soul_damage] add soul_damage
execute as @s[scores={move=5}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=!Frames,r=1.249] damagehalf += @s damageadd
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=1.249] Stun 35
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run scoreboard players set @e[tag=!Frames,r=1.249] Hit 3
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=1.249] Evade 12
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=1.249] 1 suicide
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 run execute as @e[type=!item,tag=!Frames,r=1.249,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=7..10}] at @s positioned ^^^2.5 run execute as @e[type=!item,tag=!Frames,r=1.249] at @s run function damages/slash_damage


execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 if entity @e[tag=!Frames,r=1.249] run playsound mob.slice @a[r=59] ~~~ 0.2 1.75
execute as @s[scores={move=5..20}] at @s positioned ^^^1.25 if entity @e[tag=!Frames,r=1.249] run playsound mob.sword @a[r=50] ~~~ 0.2 2
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=1.249] run playsound mob.slice @a[r=59] ~~~ 0.2 1.75
execute as @s[scores={move=5..20}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=1.249] run playsound mob.sword @a[r=50] ~~~ 0.2 2


execute as @s[scores={move=19}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=6,scores={Hit=3..4}] at @s run particle ds:judgement_stars ~~1~
execute as @s[scores={move=14}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=6,scores={Hit=3..4}] at @s run particle ds:judgement_stars ~~1~
execute as @s[scores={move=11}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=6,scores={Hit=3..4}] at @s run particle ds:judgement_stars ~~1~
execute as @s[scores={move=6}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=6,scores={Hit=3..4}] at @s run particle ds:judgement_stars ~~1~
