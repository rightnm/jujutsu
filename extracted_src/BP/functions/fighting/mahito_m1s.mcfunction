
tag @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1}] add wep4m
execute as @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1}] at @s run playsound note.pling @s ~~~ 0.05 0.87
execute as @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cFocus Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1}] move 21
scoreboard players set @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,wep4=0,punch=1}] wep4 600

event entity @s[has_property={property:body_transfigure=!1},scores={BasicM1s=1..}] mahito_on

execute as @s[tag=idle_transfig,has_property={property:heart=8..9},scores={move=0,knock=0,cutscene=0,Stun=0}] at @s run playsound random.disfigure @a[r=33] ~~1~ 99999 1 99999
playanimation @s[tag=idle_transfig,has_property={property:heart=8..9},scores={move=0,knock=0,cutscene=0,Stun=0}] animation.mahito.formation2
event entity @s[tag=idle_transfig,has_property={property:heart=8..9},scores={move=0,cutscene=0}] mahito_metal_off
event entity @s[tag=idle_transfig,has_property={property:heart=8..9},scores={move=0,cutscene=0}] heart_off


scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1}] Disabled 3
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=2..}] Disabled 2

scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 20
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 22
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

effect @s[hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},c=1] run function stance_animate_mahito
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 10


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 20
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 20
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6

execute as @s[scores={BasicM1=5,BasicM1s=1},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=5,BasicM1s=1},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=7,BasicM1s=1},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run playsound random.disfigure @a ~~1~ 0.3 1.5



execute as @s[scores={BasicM1=5,BasicM1s=2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.5 10000
execute as @s[scores={BasicM1=5,BasicM1s=2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.5 10000
execute as @s[scores={BasicM1=7,BasicM1s=2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run playsound random.disfigure @a ~~1~ 0.3 1.5


execute as @s[scores={BasicM1=5,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch1 @a[r=80] ~~~ 10000 0.8 10000
execute as @s[scores={BasicM1=5,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch1 @a[r=80] ~~~ 10000 0.8 10000
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run particle ds:spinning2 ~~1~
execute as @s[scores={BasicM1=7,BasicM1s=3},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run playsound random.disfigure @a ~~1~ 0.3 1.35

execute as @s[scores={BasicM1=5,BasicM1s=4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=5,BasicM1s=4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.15 10000


execute as @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.35 10000
execute as @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.35 10000
execute as @s[scores={BasicM1=6..7,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run playsound random.disfigure @a ~~1~ 0.3 1.5

execute as @s[scores={BasicM1=1,BasicM1s=1..},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run playsound random.disfigure @a ~~1~ 0.3 2

scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.blood3 @a[r=80] ~~~ 10000 1.4 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Flourish 4

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:ground_slam2 
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:ground_slam3

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.blood3 @a[r=80] ~~~ 10000 1.4 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Flourish 4

execute as @s[scores={BasicM1=3,BasicM1s=1},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=2},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run function damages/slash_damage
execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] at @s run function damages/slash_damage



scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:idle_transfig_combat1,location=slot.weapon.mainhand}] BasicM1 0