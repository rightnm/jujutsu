
##==============================activation==========================================

tag @s[tag=itemUse:ds:sukuna_fists] add wepclick
execute as @s[tag=itemUse:ds:sukuna_fists] at @s run function sukuna/fighting/use_sukuna_heavy1

##==============================attacks==========================================

tag @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep5=0,punch=1}] add wep5s
execute as @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep5=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep5=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cTakedown is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep5"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep5=0,punch=1}] move 71
scoreboard players set @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep5=0,punch=1}] sukuna_wep5 600


execute as @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0},tag=doublesneak,tag=!uplook] at @s run function sukuna/fighting/fighting_switch2

##==============================m1s==========================================

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..2}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3..4}] Disabled 3
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 22
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},tag=blackflashrig] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},c=1] run function stance_animate_sukuna1
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 6
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 16


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.punch @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.punch @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6

execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s unless block ~~-1~ air positioned ^^^2.55 run scoreboard players add @e[type=!item,tag=!Frames,r=2.5] Flourish 3

scoreboard players set @s[scores={BasicM1=3..,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] Move 15
scoreboard players set @s[scores={BasicM1=3..,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] Camera 15
scoreboard players set @s[scores={BasicM1=3..,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] Frames 10

scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=9..,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 2
execute as @s[scores={BasicM1=12..,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s anchored eyes run camera @s set minecraft:free ease 0.2 in_sine pos ^2^5^-4 facing ~~~
execute as @s[scores={BasicM1=8..12,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s anchored eyes run camera @s set minecraft:free ease 0.08 in_sine pos ^2^5^-4 facing ~~~

execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.5
execute as @s[scores={BasicM1=1..7,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run tp @s ~~~

execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run scoreboard players operation @e[type=!item,tag=!Frames,r=5] damage += @s damageadd
execute as @s[scores={BasicM1=6..7,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run execute as @e[type=!item,tag=!Frames,r=5] at @s run tp @s @s
execute as @s[scores={BasicM1=6..7,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run execute as @e[type=!item,tag=!Frames,r=5] at @s run tp @s ~~~ facing @p[scores={BasicM1=1..3,BasicM1s=1..7},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand},c=1]
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,r=5] Hit 2
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run damage @e[type=!item,tag=!Frames,r=5] 8 override
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,r=5] Stun 20
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run scoreboard players add @e[type=!item,tag=!Frames,r=5] Evade 15
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s  run summon ds:knockback

execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:ground_slam2
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:ground_slam3
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:fissure1
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:fissure2
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:large_slam2
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:large_slam3
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:dirt0
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:dirt2 ~~1~
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run particle ds:dirt4 ~~2.5~
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run camerashake add @a[r=25] 4 0.25
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run playsound mob.shock1 @a[r=50] ~~-2.5~ 99999 0.6 99999
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run playsound random.explode @a[r=50] ~~-2.5~ 99999 0.5 99999
execute as @s[scores={BasicM1=6,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run playsound mob.wither.break_block @a[r=50] ~~-2.5~ 99999 0.7 99999

execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] at @s run function damages/blunt_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:sukuna_fists,location=slot.weapon.mainhand}] BasicM1 0