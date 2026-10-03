



tag @s[tag=itemUse:ds:hand_sword] add wepclick
execute as @s[tag=itemUse:ds:hand_sword] at @s run function fighting/hand_sword/use_hand_sword_heavy
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 22
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..2}] Disabled 4
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=4}] Move 12
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3}] Disabled 5
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..3}] AfterAnim 15
scoreboard players set @s[scores={BasicM1s=4..}] Disabled 32
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=4..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=5..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

execute as @s[scores={BasicM1=8..,BasicM1s=4}] at @s unless entity @e[r=3,rm=0.2] run scriptevent ds:knockback 2

effect @s weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,Disabled=0}] animation.hand_sword.idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0}] BasicM1s 1

execute as @s[scores={BasicM1=5..},c=1] run function stance_animate_katana
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0}] BasicM1 14


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..3}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.4,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big,tag=!Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.4,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^1.15 run playsound mob.slash1 @a ~~~ 0.3 1.25
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^1.15 run playsound mob.witch.throw @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 4

execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 4


execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s run function damages/slash_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..3}] BasicM1 0