

execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

tag @s[tag=itemUse:ds:beru_daggers] add wepclick
execute as @s[tag=itemUse:ds:beru_daggers] at @s run function fighting/mandibles/use_mandibles_heavy

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 22
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] Disabled 1
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=5}] Move 8
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 11
scoreboard players set @s[scores={BasicM1s=6..}] Disabled 34
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=6..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1,agility=50..,strength=50..}] add wep5
execute as @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1,agility=50..,strength=50..}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1,agility=50..,strength=50..}] at @s run tellraw @s {"rawtext":[{"text":"§cFalling Tempest Blitz are on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1,agility=50..,strength=50..}] move 41
scoreboard players set @a[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,move=40..,wep5=0,agility=50..,strength=50..}] wep5 1200


effect @s[hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] weakness 1 99 true


scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=5..},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand},c=1] run function stance_animate_mandibles
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] BasicM1 11


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={atk=1..}] at @s positioned ^^^3 run effect @e[scores={Hit=1..}] wither 5 2 

execute as @s[scores={BasicM1=3}] at @s positioned ^^1^1 run playsound mob.slice4slash @a ~~~ 0.3 3.75

execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=2.49,tag=!Big] run playsound mob.slice @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.49,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=2.49,tag=!Big] run playsound mob.slice4 @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,r=2.49,tag=!Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Stun 9
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big,tag=!Big] Evade 1

execute as @s[scores={BasicM1=3,BasicM1s=3..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity @e[type=!item,tag=!Frames,r=3.49,tag=Big] run playsound mob.slice @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity @e[type=!item,tag=!Frames,r=3.49,tag=Big] run playsound mob.slice4 @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.49,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.49,tag=Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Stun 9
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Evade 1

execute as @s[scores={BasicM1=9..,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback -2.5

execute as @s[scores={BasicM1=4..6,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s unless entity @e[tag=!Frames,rm=0.2,r=1.6,type=!item,family=!projectile,family=!damage,type=!xp_orb] run scriptevent ds:knockback 4
execute as @s[scores={BasicM1=3..4,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s run scriptevent ds:antiair

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.slice @a ~~~ 0.3 0.87
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.witch.throw @a ~~~ 0.3 1.75
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Hit 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,r=2.49,tag=!Big] 9 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 if entity @e[type=!item,tag=!Frames,r=2.49,tag=!Big] run playsound mob.slice4 @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Flourish 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,r=2.49,tag=!Big] Evade 5

execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Hit 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.49,tag=Big] 9 override
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity @e[type=!item,tag=!Frames,r=3.49,tag=Big] run playsound mob.slice4 @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.49,tag=Big] Evade 5
execute as @s[scores={BasicM1=3,BasicM1s=5},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s positioned ^^^1 run particle ds:ground_slam2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s run function damages/slash_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:beru_daggers,location=slot.weapon.mainhand}] at @s run function damages/poison_damage

