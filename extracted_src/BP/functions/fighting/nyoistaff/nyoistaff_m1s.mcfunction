
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

execute as @s[scores={atk=1..2},tag=lightning] at @s positioned ^^1.25^1.6 run playsound mob.electricity @a ~~~ 0.1 2.5

execute as @s[scores={atk=1..2,amberbeast=0},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt1 
execute as @s[scores={atk=1..2,amberbeast=0},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt2 
execute as @s[scores={atk=1..2,amberbeast=0},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt3
execute as @s[scores={atk=1..2,amberbeast=0},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt4  

execute as @s[scores={atk=1..2,amberbeast=1..},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt1a
execute as @s[scores={atk=1..2,amberbeast=1..},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt2a
execute as @s[scores={atk=1..2,amberbeast=1..},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt3a
execute as @s[scores={atk=1..2,amberbeast=1..},tag=lightning] at @s positioned ^^1.25^1.6 run particle ds:lightningbolt4a

execute as @s[scores={atk=1..},tag=lightning] at @s positioned ^^^5.38 run scoreboard players add @e[scores={Hit=1..},r=5.33] shocked 7
execute as @s[scores={atk=1},tag=lightning] at @s positioned ^^^5.38 run scoreboard players add @e[scores={Hit=1..},r=5.33] damage 1

tag @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=4..,wep3=0,punch=1},tag=heavenlyrestriction] add wep3
execute as @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=4..,wep3=1..,punch=1},tag=heavenlyrestriction] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=4..,wep3=1..,punch=1},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cDestructive Blows is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=4..,punch=1},tag=heavenlyrestriction] move 51
scoreboard players set @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep3=0,Sneaking=4..,punch=1},tag=heavenlyrestriction] wep3 300



tag @s[tag=itemUse:ds:nyoi_staff] add wepclick
execute as @s[tag=itemUse:ds:nyoi_staff] at @s run function fighting/nyoistaff/use_nyoistaff_heavy

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 10
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 29
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,Disabled=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] animation.nyoistaff_idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},c=1] run function stance_animate_nyoistaff
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 14
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 14


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] atk 2
scoreboard players set @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.4,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound item.trident.throw @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big,tag=!Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.4,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound item.trident.throw @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2


execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^1.15 run playsound mob.witch.throw @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=Big] Hit 1
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=Big] 1 override
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 1
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 1

execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 1
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 1 override
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 1
execute as @s[scores={BasicM1=5..11,BasicM1s=4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 1




execute as @s[scores={BasicM1=8..11,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=1..7,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound item.trident.throw @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 6

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run camerashake add @a[r=20] 2 0.25
execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run playsound mob.wither.shoot @a[r=100] ~~~ 999999 0.7 999999
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run particle ds:ground_slam3 
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^1^0.85 run particle ds:heavy_impact1
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^1^0.85 run particle ds:heavy_impact2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^1^0.85 run particle ds:heavy_impact3
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound item.trident.throw @a[r=80] ~~~ 10000 1 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 6

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run summon ds:knockback 
execute as @s[scores={BasicM1=1..4,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run tp @s ~~~

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:nyoi_staff,location=slot.weapon.mainhand}] BasicM1 0