
tag @s[tag=itemUse:ds:limitless_fists] add limitlessclick
execute as @s[tag=itemUse:ds:limitless_fists] at @s run function limitless/use_limitless_heavy

tag @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1,Energy=200..},tag=reversecursed] add wep4
execute as @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,punch=1,Energy=200..},tag=reversecursed] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,punch=1,Energy=200..},tag=reversecursed] at @s run tellraw @s {"rawtext":[{"text":"§cReversal Red: Point Blank is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1,Energy=200..},tag=reversecursed] move 91
scoreboard players set @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1},tag=reversecursed] wep4 2400
scoreboard players remove @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,punch=1,Energy=200..,move=91},tag=reversecursed] Energy 200

tag @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Energy=200..},tag=!fistenergy,tag=doublesneak] add wep5
execute as @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Energy=0..199},tag=!fistenergy,tag=doublesneak] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Energy=200..},tag=!fistenergy,tag=doublesneak] at @s run playsound note.pling @s ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Energy=200..},tag=!fistenergy,tag=doublesneak] at @s run tellraw @s {"rawtext":[{"text":"§cLapse Blue: Infused Fists is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Energy=200..},tag=!fistenergy,tag=doublesneak] move 21
scoreboard players set @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Energy=200..},tag=!fistenergy,tag=doublesneak] wep5 2400
scoreboard players remove @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Energy=200..,move=21},tag=!fistenergy,tag=doublesneak] Energy 200


scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 22
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},c=1] run function stance_animate_limitless
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 10


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 6 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.punch @a ~~~ 10000 2 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 9 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Flourish 8

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.punch @a ~~~ 10000 2 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 9 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 8

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:limitless_fists,location=slot.weapon.mainhand}] BasicM1 0