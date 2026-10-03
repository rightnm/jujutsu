tag @s[tag=itemUse:ds:extermination_sword] add wepclick
execute as @s[tag=itemUse:ds:extermination_sword] at @s run function fighting/exterminationsword/use_extermination_heavy
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off


execute as @s run scoreboard objectives add extsword dummy
execute unless entity @s[scores={extsword=0..}] run scoreboard players add @s extsword 0
scoreboard players set @s[scores={extsword=0..1}] extsword 2
event entity @s[has_property={property:extermination_sword=!1}] extermination_sword

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 35
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,Disabled=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] animation.extermination_idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},c=1] run function stance_animate_extermination
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 14


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..3},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.1,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 if entity  @e[type=!item,tag=!Frames,r=2.1,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players add @e[type=!item,tag=!Frames,r=2.1,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run damage @e[type=!item,tag=!Frames,r=2.1,tag=!Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run damage @e[type=!item,tag=!Frames,r=2.1,tag=curse,tag=!Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run damage @e[type=!item,tag=!Frames,r=2.1,family=purecurse,tag=!Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players add @e[type=!item,tag=!Frames,r=2.1,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players add @e[type=!item,tag=!Frames,r=2.1,tag=!Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players add @e[type=!item,tag=!Frames,r=2.1,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.15 run scoreboard players add @e[type=!item,tag=!Frames,r=2.1,tag=!Big,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.1,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 if entity  @e[type=!item,tag=!Frames,r=3.1,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[type=!item,tag=!Frames,r=3.1,tag=Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[type=!item,tag=!Frames,r=3.1,tag=curse,tag=!Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^315 run damage @e[type=!item,tag=!Frames,r=3.1,family=purecurse,tag=!Big] 12 suicide
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 6

scoreboard players set @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 5 override
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 5

execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=8..10,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=8..10,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 5 override
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 5

scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=1..7,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 6

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run playsound mob.slice @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 6

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s run function damages/slash_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] at @s run function damages/slash_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:extermination_sword,location=slot.weapon.mainhand}] BasicM1 0