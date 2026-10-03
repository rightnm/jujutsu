playanimation @s[scores={move=18}] animation.executioners_ab1

tag @s[scores={move=1..2}] remove wep1

tag @s[scores={move=16..,Stun=1..}] remove wep1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0

scoreboard players set @s[scores={move=7..13}] AfterAnim 12
scoreboard players set @s[scores={move=7..13}] Move 4

execute as @s[scores={move=7..13}] at @s run tp @s ~~~

scoreboard players random @s[scores={move=17}] blackflashchance 1 269
scoreboard players set @s[scores={move=17},tag=blackflashrig] blackflashchance 7

scoreboard players set @e[scores={move=7..17}] atk 2
execute as @s[scores={move=9..}] at @s unless entity @e[tag=!Frames,r=3,rm=0.5] run scriptevent ds:knockback 3
execute as @s[scores={move=13}] at @s run playsound mob.witch.throw @a[r=200] ~~~ 999999 0.8 999999

execute as @s[scores={move=13}] at @s run playsound portal.travel @a[r=40] ~~~ 9999 8 9999
execute as @s[scores={move=12}] at @s run playsound mob.wither.shoot @a[r=40] ~~~ 9999 1.5 9999
execute as @s[scores={move=13}] at @s run playsound mob.slash1 @a[r=40] ~~~ 9999 1.2 9999


execute as @s[scores={move=7..15}] at @s positioned ^^^1.5 run scoreboard objectives add quickdodge dummy
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players random @e[type=!player,tag=deathsentence,r=1.49,scores={strength=0..10}] quickdodge 9 10
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players random @e[type=!player,tag=deathsentence,r=1.49,scores={strength=11..20}] quickdodge 7 10
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players random @e[type=!player,tag=deathsentence,r=1.49,scores={strength=21..30}] quickdodge 5 10
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players random @e[type=!player,tag=deathsentence,r=1.49,scores={strength=31..40}] quickdodge 4 10
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players random @e[type=!player,tag=deathsentence,r=1.49,scores={strength=41..44}] quickdodge 2 10
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players set @e[type=!player,tag=deathsentence,r=1.49,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run tag @e[r=1.49,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players set @e[r=1.49,scores={quickdodge=1..8}] Frames 4
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run playanimation @e[r=1.49,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run playanimation @e[r=1.49,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run playanimation @e[r=1.49,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0

execute as @s[scores={move=7..15}] at @s positioned ^^^3 run scoreboard objectives add quickdodge dummy
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players random @e[r=1.49,scores={strength=0..10},type=!player,tag=deathsentence] quickdodge 9 10
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players random @e[r=1.49,scores={strength=11..20},type=!player,tag=deathsentence] quickdodge 7 10
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players random @e[r=1.49,scores={strength=21..30},type=!player,tag=deathsentence] quickdodge 5 10
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players random @e[r=1.49,scores={strength=31..40},type=!player,tag=deathsentence] quickdodge 4 10
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players random @e[r=1.49,scores={strength=41..44},type=!player,tag=deathsentence] quickdodge 2 10
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players set @e[type=!player,tag=deathsentence,r=1.49,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run tag @e[r=1.49,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players set @e[r=1.49,scores={quickdodge=1..8}] Frames 4 
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run playanimation @e[r=1.49,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run playanimation @e[r=1.49,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run playanimation @e[r=1.49,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0

execute as @s[scores={move=7..15}] at @s positioned ^^^4.5 run scoreboard objectives add quickdodge dummy
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players random @e[r=1.49,scores={strength=0..10},type=!player,tag=deathsentence] quickdodge 9 10
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players random @e[r=1.49,scores={strength=11..20},type=!player,tag=deathsentence] quickdodge 7 10
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players random @e[r=1.49,scores={strength=21..30},type=!player,tag=deathsentence] quickdodge 5 10
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players random @e[r=1.49,scores={strength=31..40},type=!player,tag=deathsentence] quickdodge 4 10
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players random @e[r=1.49,scores={strength=41..44},type=!player,tag=deathsentence] quickdodge 2 10
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players set @e[type=!player,tag=deathsentence,r=1.49,scores={strength=45..}] quickdodge 1
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run tag @e[r=1.49,scores={quickdodge=1..8}] add Frames
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players set @e[r=1.49,scores={quickdodge=1..8}] Frames 4 
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run playanimation @e[r=1.49,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run playanimation @e[r=1.49,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run playanimation @e[r=1.49,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={move=1..},c=1,rm=1]
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0



execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run tag @e[tag=!Frames,r=1.49,tag=!soul_damage] add soul_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players operation @e[tag=!Frames,r=1.49] damagehalf += @s damageadd
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players set @e[tag=!Frames,r=1.49] Stun 35
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players add @e[tag=!Frames,r=1.49] Hit 4
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run scoreboard players add @e[tag=!Frames,r=1.49] Evade 2
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run damage @e[tag=!Frames,r=1.49] 2 suicide entity @s
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run execute as @e[type=!item,tag=!Frames,r=1.49,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run execute as @e[type=!item,tag=!Frames,r=1.49] at @s run function damages/slash_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 run camerashake add @a[r=10] 2 0.2
execute as @s[scores={move=7..13}] at @s run particle ds:executioners_sword5 ~~1~

execute as @s[scores={move=7..13}] at @s positioned ^^^3 run tag @e[tag=!Frames,r=1.49,tag=!soul_damage] add soul_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players operation @e[tag=!Frames,r=1.49] damagehalf += @s damageadd
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=1.49] Stun 35
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=1.49] Hit 4
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=1.49] Evade 2
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=1.49] 2 suicide entity @s
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run execute as @e[type=!item,tag=!Frames,r=1.49,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run execute as @e[type=!item,tag=!Frames,r=1.49] at @s run function damages/slash_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^3 run camerashake add @a[r=10] 2 0.2

execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run tag @e[tag=!Frames,r=1.49,tag=!soul_damage] add soul_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players operation @e[tag=!Frames,r=1.49] damagehalf += @s damageadd
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players set @e[tag=!Frames,r=1.49] Stun 35
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=1.49] Hit 4
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run scoreboard players add @e[tag=!Frames,r=1.49] Evade 2
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run damage @e[tag=!Frames,r=1.49] 2 suicide entity @s
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,r=1.49,tag=deathsentence] at @s run function judgeman/death_sentence_hit
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run execute as @e[type=!item,tag=!Frames,r=1.49] at @s run function damages/slash_damage
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 run camerashake add @a[r=10] 2 0.2


execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 if entity @e[tag=!Frames,r=1.49] run scoreboard players set @s move 6
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 if entity @e[tag=!Frames,r=1.49] run playsound mob.slice @a[r=59] ~~~ 9999 1.75 9999
execute as @s[scores={move=7..13}] at @s positioned ^^^1.5 if entity @e[tag=!Frames,r=1.49] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=7..13}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=1.49] run scoreboard players set @s move 6
execute as @s[scores={move=7..13}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=1.49] run playsound mob.slice @a[r=59] ~~~ 9999 1.75 9999
execute as @s[scores={move=7..13}] at @s positioned ^^^3 if entity @e[tag=!Frames,r=1.49] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,r=1.49] run scoreboard players set @s move 6
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,r=1.49] run playsound mob.slice @a[r=59] ~~~ 9999 1.75 9999
execute as @s[scores={move=7..13}] at @s positioned ^^^4.5 if entity @e[tag=!Frames,r=1.49] run playsound mob.sword @a[r=50] ~~~ 9999 2 9999

execute as @s[scores={move=6..13}] at @s positioned ^^^3 if entity @e[type=!item,tag=!Frames,r=6,scores={Hit=3..4}] at @s run particle ds:judgement_stars ~~1~
