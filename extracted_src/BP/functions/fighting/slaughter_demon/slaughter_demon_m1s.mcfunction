

execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

tag @s[tag=itemUse:ds:slaughter_demon] add wepclick
execute as @s[tag=itemUse:ds:slaughter_demon] at @s run function fighting/slaughter_demon/use_slaughter_demon_heavy

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 22
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=5}] Move 8
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 11
scoreboard players set @s[scores={BasicM1s=6..}] Disabled 34
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=6..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1},tag=heavenlyrestriction] add wep5
execute as @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1},tag=heavenlyrestriction] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cRapid Cuts are on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1},tag=heavenlyrestriction] move 71
scoreboard players set @a[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,move=70..,wep5=0},tag=heavenlyrestriction] wep5 1200

execute as @s[scores={BasicM1=9,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s unless entity @e[r=3,rm=0.2] run playsound mob.bat.takeoff @a ~~~ 1 1.25
execute as @s[scores={BasicM1=7..,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s unless entity @e[r=3,rm=0.2] run scriptevent ds:knockback 3

effect @s[hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,AfterAnim=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] animation.slaughter_demon.idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand},c=1] run function stance_animate_slaughter_demon
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] BasicM1 11


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 if entity @e[type=!item,tag=!Frames,r=1.95,tag=!Big] run playsound mob.slice @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.95,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 if entity @e[type=!item,tag=!Frames,r=1.95,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run damage @e[type=!item,tag=!Frames,r=1.95,tag=!Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Stun 9
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big,tag=!Big] Evade 1

execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 if entity @e[type=!item,tag=!Frames,r=2.95,tag=Big] run playsound mob.slice @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 if entity @e[type=!item,tag=!Frames,r=2.95,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.95,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run damage @e[type=!item,tag=!Frames,r=2.95,tag=Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Stun 9
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Evade 1

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.slice @a ~~~ 0.3 0.87	
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.witch.throw @a ~~~ 0.3 1.75
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Hit 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run damage @e[type=!item,tag=!Frames,r=1.95,tag=!Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 if entity @e[type=!item,tag=!Frames,r=1.95,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Flourish 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^2 run scoreboard players add @e[type=!item,tag=!Frames,r=1.95,tag=!Big] Evade 5

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Hit 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run damage @e[type=!item,tag=!Frames,r=2.95,tag=Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 if entity @e[type=!item,tag=!Frames,r=2.95,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^3 run scoreboard players add @e[type=!item,tag=!Frames,r=2.95,tag=Big] Evade 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s positioned ^^^1 run particle ds:ground_slam2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:slaughter_demon,location=slot.weapon.mainhand}] at @s run function damages/slash_damage

