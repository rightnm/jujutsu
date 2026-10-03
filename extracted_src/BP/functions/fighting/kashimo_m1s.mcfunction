execute unless entity @s[scores={amberbeast=0..}] run scoreboard players add @s amberbeast 0

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5,amberbeast=0}] Disabled 3
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5,ltncloak=1..}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5,amberbeast=1..}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 12
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 45
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

effect @s[hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=5,BasicM1s=1..,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=5,BasicM1s=1..,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:lightning1,location=slot.weapon.mainhand},c=1] run function stance_animate_kashimo
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 14
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 10


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6


execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound random.explode @a[r=80] ~~~ 1 1.75
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 1 override
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players set @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 5
execute as @s[scores={BasicM1=4..11,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 1


execute as @s[scores={BasicM1=4..8,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=3.8,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=4..8,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=3.8,tag=Big] Hit 2
execute as @s[scores={BasicM1=4..8,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=3.8,tag=Big] 1 override
execute as @s[scores={BasicM1=4..8,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players set @e[type=!item,tag=!Frames,r=3.8,tag=Big] Stun 5
execute as @s[scores={BasicM1=4..8,BasicM1s=4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=3.8,tag=Big] Evade 1


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run execute as @e[type=!item,tag=!Frames,r=2.8,tag=!Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:lightning1,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 if entity @e[type=!item,tag=!Frames,r=2.8,tag=!Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.25 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run playsound mob.wither.shoot @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run damage @e[type=!item,tag=!Frames,r=2.8,tag=!Big] 10 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Evade 15
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^2.85 run scoreboard players add @e[type=!item,tag=!Frames,r=2.8,tag=!Big] Flourish 8

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run playsound mob.shock1 @a[r=99] ~~~ 99999 0.75 99999
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run playsound mob.shocked3 @a[r=99] ~~~ 99999 0.75 99999
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run playsound mob.electricity @a[r=99] ~~~ 99999 1.25 99999


execute as @s[scores={BasicM1=3,BasicM1s=5,amberbeast=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:lightning_shockwave1
execute as @s[scores={BasicM1=3,BasicM1s=5,amberbeast=1..},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:lightning_shockwave1a
execute as @s[scores={BasicM1=3,BasicM1s=5,amberbeast=0},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:lightning_area1
execute as @s[scores={BasicM1=3,BasicM1s=5,amberbeast=1..},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:lightning_area1a
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:ground_slam2 
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^1^2.85 run particle ds:ground_slam3

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=5.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s @s
execute as @s[scores={BasicM1=3..7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run execute as @e[type=!item,tag=!Frames,r=5.849,tag=Big] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 if entity @e[type=!item,tag=!Frames,r=5.849,tag=Big] run playsound mob.punch @a[r=80] ~~~ 10000 1.25 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run playsound mob.wither.shoot @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=5.849,tag=Big] 10 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Stun 22
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s positioned ^^^4.85 run scoreboard players add @e[type=!item,tag=!Frames,r=5.849,tag=Big] Evade 15
execute as @s[scores={BasicM1=1..7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run tp @s ~~~
execute as @s[scores={BasicM1=7,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run summon ds:knockback ~~~

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run function damages/electric_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:lightning1,location=slot.weapon.mainhand}] BasicM1 0