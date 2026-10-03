execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

tag @s[tag=itemUse:ds:shadow_style_katana] add wepclick
execute as @s[tag=itemUse:ds:shadow_style_katana] at @s run function fighting/shadow_style_katana/use_katana_heavy

event entity @s[scores={BasicM1=0,BasicM1s=0,M1Reset=0,move=0},has_property={property:katana2=!1}] katana2_sheathed

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 22
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..4}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=5}] Move 25
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 32
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,punch=1},tag=domainimmune] add wep4
execute as @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,punch=1},tag=domainimmune] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=1..,Sneaking=1..,punch=1},tag=domainimmune] at @s run tellraw @s {"rawtext":[{"text":"§cJudgement Cuts are on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep4=0,Sneaking=1..,punch=1},tag=domainimmune] move 10
scoreboard players set @a[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,move=1..,wep4=0},tag=domainimmune] wep4 175

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

execute as @s[scores={BasicM1=8..,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s unless entity @e[r=3,rm=0.2] run scriptevent sl:knockback 2

effect @s[hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,Disabled=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] animation.nothing.idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand},c=1] run function stance_animate_shadow_style_katana
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 14

scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] atk 2

event entity @s[scores={BasicM1=1..5,BasicM1s=3..},has_property={property:katana2=!2}] katana2_unsheathed


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.4,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75


execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.35 10000

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 3 override

execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 12

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big,tag=!Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.4,tag=Big] damagehalf += @s damageadd

execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.35 10000

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 3 override

execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 12

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^1.15 run playsound mob.slash1 @a ~~~ 0.3 1.25
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^1.15 run playsound mob.witch.throw @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.4,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 4

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 4

execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=3..5},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] at @s run function damages/slash_damage

scoreboard players set @s[scores={BasicM1s=5..,BasicM1=1..2},hasitem={item=ds:shadow_style_katana,location=slot.weapon.mainhand}] BasicM1 0