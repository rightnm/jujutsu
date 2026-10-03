execute as @s run scoreboard objectives add exesword dummy
execute unless entity @s[scores={exesword=0..}] run scoreboard players add @s exesword 0
scoreboard players set @s[scores={exesword=0..1}] exesword 2
event entity @s[has_property={property:execution_sword=!1}] execution_sword

tag @s[tag=itemUse:ds:executioners_sword] add wepclick
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off
execute as @s[tag=itemUse:ds:executioners_sword] at @s run function fighting/executionsword/use_execution_heavy

execute as @s at @s run playsound beacon.ambient @a ~~~ 0.025 1.5

tag @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1}] add wep5
execute as @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cBlinding Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1}] move 51
scoreboard players set @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1}] wep5 800

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 15
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1}] Disabled 7
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=2}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3}] Disabled 5
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=4}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 14
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 35
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

execute as @s[scores={BasicM1=7..15}] at @s positioned ^^^3 run scoreboard objectives add quickdodge dummy
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players random @e[type=!player,tag=deathsentence,r=2.95,scores={strength=0..10}] quickdodge 9 10
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players random @e[type=!player,tag=deathsentence,r=2.95,scores={strength=11..20}] quickdodge 7 10
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players random @e[type=!player,tag=deathsentence,r=2.95,scores={strength=21..30}] quickdodge 5 10
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players random @e[type=!player,tag=deathsentence,r=2.95,scores={strength=31..40}] quickdodge 4 10
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players random @e[type=!player,tag=deathsentence,r=2.95,scores={strength=41..44}] quickdodge 2 10
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players set @e[type=!player,tag=deathsentence,r=2.95,scores={strength=45..}] quickdodge 1
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run tag @e[r=2.95,scores={quickdodge=1..8}] add Frames
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players set @e[r=2.95,scores={quickdodge=1..8}] Frames 4 
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run playanimation @e[r=2.95,scores={quickdodge=1..3},c=3] animation.quickdodge1
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run playanimation @e[r=2.95,scores={quickdodge=4..7},c=3] animation.quickdodge2
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run playanimation @e[r=2.95,scores={quickdodge=8..9},c=3] animation.quickdodge3
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run execute as @e[scores={quickdodge=1..8},r=5] at @s run particle ds:dodge
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run execute as @e[scores={quickdodge=1..8},r=5] at @s run tp @s ~~~ facing @e[scores={BasicM1=1..},c=1,rm=1]
execute as @s[scores={BasicM1=3..4}] at @s positioned ^^^3 run scoreboard players set @e[r=3,scores={quickdodge=1..}] quickdodge 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,AfterAnim=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] animation.executionerssword.idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},c=1] run function stance_animate_executioners
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 10
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 10


scoreboard players set @s[scores={BasicM1=3..6,BasicM1s=1..3},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s run particle ds:executioners_sword5 ~~~
execute as @s[scores={BasicM1=3,BasicM1s=1},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound portal.travel @a[r=80] ~~~ 0.5 15.75
execute as @s[scores={BasicM1=3,BasicM1s=2},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound portal.travel @a[r=80] ~~~ 0.5 12.75
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound portal.travel @a[r=80] ~~~ 0.5 14.25
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound portal.travel @a[r=80] ~~~ 0.5 12
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound portal.travel @a[r=80] ~~~ 0.5 11.25

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run tag @e[type=!item,tag=!Frames,r=2.28,tag=!Big,tag=!soul_damage] add soul_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.28,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 if entity  @e[type=!item,tag=!Frames,r=2.28,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players add @e[type=!item,tag=!Frames,r=2.28,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run damage @e[type=!item,tag=!Frames,r=2.28,tag=!Big] 8 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run execute as @e[type=!item,tag=!Frames,r=2.28,tag=deathsentence,tag=!Big] at @s run function judgeman/death_sentence_hit
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players add @e[type=!item,tag=!Frames,r=2.28,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players add @e[type=!item,tag=!Frames,r=2.28,tag=!Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players add @e[type=!item,tag=!Frames,r=2.28,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.33 run scoreboard players add @e[type=!item,tag=!Frames,r=2.28,tag=!Big,tag=!Big] Evade 6

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run tag @e[type=!item,tag=!Frames,r=3.1,tag=Big,tag=!soul_damage] add soul_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.1,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 if entity  @e[type=!item,tag=!Frames,r=3.1,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[type=!item,tag=!Frames,r=3.1,tag=Big] 8 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[type=!item,tag=!Frames,r=3.1,tag=deathsentence,tag=Big] at @s run function judgeman/death_sentence_hit
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run tag @e[type=!item,tag=!Frames,r=2.8,tag=!Big,tag=!soul_damage] add soul_damage
scoreboard players set @s[scores={BasicM1=3..6,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=1..7,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=deathsentence,tag=!Big] at @s run function judgeman/death_sentence_hit
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 6
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Flourish 5

 execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run tag @e[type=!item,tag=!Frames,r=5.849,tag=Big,tag=!soul_damage] add soul_damage
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run playsound beacon.power @a[r=80] ~~~ 10000 2 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=deathsentence,tag=Big] at @s run function judgeman/death_sentence_hit
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 5

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s run function damages/slash_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] at @s run function damages/slash_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:executioners_sword,location=slot.weapon.mainhand}] BasicM1 0