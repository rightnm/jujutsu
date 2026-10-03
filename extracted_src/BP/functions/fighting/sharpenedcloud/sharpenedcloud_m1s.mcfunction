
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off
tag @s[tag=itemUse:ds:playful_cloud_sharpened] add wepclick
execute as @s[tag=itemUse:ds:playful_cloud_sharpened] at @s run function fighting/sharpenedcloud/use_sharpenedcloud_heavy

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 18
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..3}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..4}] AfterAnim 7
scoreboard players set @s[scores={BasicM1s=4..}] Disabled 25
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=4..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=5..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,punch=1}] add wep2
execute as @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cTarget Practise is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,punch=1}] move 46
scoreboard players set @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,punch=1}] wep2 400

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,AfterAnim=0,sprinting=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] animation.sharpened_cloud.idle
playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,AfterAnim=0,sprinting=1..},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] animation.sharpened_cloud.run

scoreboard players random @s[scores={BasicM1=3,BasicM1s=1..,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=3,BasicM1s=1..,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},c=1] run function stance_animate_sharpenedcloud
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1 8


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.95,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 1.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound item.trident.throw @a[r=80] ~~~ 1 1.95
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 if entity  @e[type=!item,tag=!Frames,r=1.95,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 2.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run damage @e[type=!item,tag=!Frames,r=1.95,tag=!Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.1,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 if entity  @e[type=!item,tag=!Frames,r=3.1,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 2.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[type=!item,tag=!Frames,r=3.1,tag=Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 4
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players add @e[type=!item,tag=!Frames,r=3.1,tag=Big] Evade 6


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=1..7,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound item.trident.throw @a[r=80] ~~~ 1 0.65
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.56 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 8 override
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 6
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Flourish 6


execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run playsound item.trident.throw @a[r=80] ~~~ 10000 11.5 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..5,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.56 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 8 override
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 6
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 6

execute as @s[scores={BasicM1=3,BasicM1s=1..},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] at @s run function damages/slash_damage


scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:playful_cloud_sharpened,location=slot.weapon.mainhand}] BasicM1 0