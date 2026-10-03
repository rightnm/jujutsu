
##==============================activation==========================================

tag @s[tag=itemUse:ds:four_fists] add wepclick
execute as @s[tag=itemUse:ds:four_fists] at @s run function sukuna/fighting/use_sukuna_heavy3

##==============================attacks==========================================

execute as @s[hasitem={item=ds:four_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0},tag=doublesneak,tag=!uplook] at @s run function sukuna/fighting/fighting_switch3

##==============================m1s==========================================

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..2}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 22
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=5,BasicM1s=1..4,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=5,BasicM1s=1..4,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand},tag=blackflashrig] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:four_fists,location=slot.weapon.mainhand},c=1] run function stance_animate_sukuna3
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] BasicM1 26


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] atk 2
scoreboard players set @s[scores={BasicM1=4..6,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] Frames 6

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run camerashake add @a[r=10] 1 0.15

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run playsound mob.wither.shoot @a[r=40] ^^1^1 99999 2.25 99999
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run playsound mob.witch.throw @a[r=40] ^^1^1 99999 1.25 99999
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.slice1 @a[r=50] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.cleave @a[r=50] ~~~ 10000 1.05 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound random.explode @a[r=50] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 7 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6
scoreboard players add @s[scores={atk=1}] fuga 1


execute as @s[scores={atk=1..2,BasicM1=3,BasicM1s=1..4}] at @s positioned ^^^3.5 run execute as @e[scores={Stun=1..},r=3.49] at @s run particle ds:cleave1 ~~1~
execute as @s[scores={atk=1..2,BasicM1=3,BasicM1s=1..4}] at @s positioned ^^^3.5 run execute as @e[scores={Stun=1..},r=3.49] at @s run particle ds:cleave2 ~~1~
execute as @s[scores={atk=1..2,BasicM1=3,BasicM1s=1..4}] at @s positioned ^^^3.5 run execute as @e[scores={Stun=1..},r=3.49] at @s run particle ds:cleave3 ~~1~
execute as @s[scores={atk=1..2,BasicM1=3,BasicM1s=1..4}] at @s positioned ^^^3.5 run execute as @e[scores={Stun=1..},r=3.49] at @s run particle ds:cleave4 ~~1~

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.slice1 @a[r=50] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.cleave @a[r=50] ~~~ 10000 1.05 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound random.explode @a[r=50] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 7 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6

execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s unless block ~~-1~ air positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,r=3.95] Flourish 4

execute as @s[scores={BasicM1=4..,BasicM1s=3..4},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 0.35
execute as @s[scores={BasicM1=22..,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 0.67

scoreboard players set @s[scores={BasicM1=5..20,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] atk 2
scoreboard players set @s[scores={BasicM1=5..20,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] Move 6

execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run camerashake add @a[r=5] 0.1 0.08 rotational

execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.45,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run playsound mob.witch.throw @a[r=40] ^^1^1 99999 1.25 99999
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity  @e[type=!item,tag=!Frames,r=2.45,tag=!Big] run playsound random.explode @a[r=50] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity  @e[type=!item,tag=!Frames,r=2.45,tag=!Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity  @e[type=!item,tag=!Frames,r=2.45,tag=!Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.45,tag=!Big] Hit 2
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,r=2.45,tag=!Big] 1 override
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players set @e[type=!item,tag=!Frames,r=2.45,tag=!Big] Stun 15
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.45,tag=!Big] Evade 1
scoreboard players add @s[scores={atk=1}] fuga 2
execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.5,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 if entity  @e[type=!item,tag=!Frames,r=4.5,tag=Big] run playsound random.explode @a[r=50] ~~~ 10000 1.6 10000
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 if entity  @e[type=!item,tag=!Frames,r=4.5,tag=Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 if entity  @e[type=!item,tag=!Frames,r=4.5,tag=Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,r=4.5,tag=Big] Hit 2
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 run damage @e[type=!item,tag=!Frames,r=4.5,tag=Big] 1 override
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 run scoreboard players set @e[type=!item,tag=!Frames,r=4.5,tag=Big] Stun 15
execute as @s[scores={BasicM1=6..19,BasicM1s=5},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4 run scoreboard players add @e[type=!item,tag=!Frames,r=4.5,tag=Big] Evade 1


execute as @s[scores={BasicM1=5,BasicM1s=1..},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=5,BasicM1s=1..},hasitem={item=ds:four_fists,location=slot.weapon.mainhand}] at @s run function damages/cleave_damage

