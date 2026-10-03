
##==============================activation==========================================

tag @s[tag=itemUse:ds:cleave_fists] add wepclick
execute as @s[tag=itemUse:ds:cleave_fists] at @s run function sukuna/fighting/use_sukuna_heavy2

##==============================attacks==========================================

tag @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep4=0,punch=1}] add wep4s2
execute as @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep4=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep4=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cRapid Cleaves is on cooldown: §e"},{"score":{"name": "@p","objective": "sukuna_wep4"}},{"text":"§c."}]}
scoreboard players set @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep4=0,punch=1}] move 56
scoreboard players set @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,Sneaking=1..,sukuna_wep4=0,punch=1}] sukuna_wep4 800

execute as @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0},tag=doublesneak,tag=!uplook] at @s run function sukuna/fighting/fighting_switch1

##==============================m1s==========================================

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 25
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..2}] Disabled 2
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 10
scoreboard players set @s[scores={BasicM1s=5..}] Disabled 22
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=5..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

effect @s[hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..4,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..4,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},tag=blackflashrig] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1s 1


execute as @s[scores={BasicM1=5..},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand},c=1] run function stance_animate_sukuna2
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 7
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 26


scoreboard players set @s[scores={BasicM1=4,BasicM1s=1..3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] atk 2
scoreboard players set @s[scores={BasicM1=4..6,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] Frames 6

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run camerashake add @a[r=10] 1 0.15

execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=1.8,tag=!Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.swordslash @a[r=40] ^^1^1 99999 3.25 99999
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=40] ^^1^1 99999 1.25 99999
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.slice1 @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.cleave @a ~~~ 10000 1.05 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run playsound mob.cleave @a ~~~ 10000 0.8 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 if entity  @e[type=!item,tag=!Frames,r=1.8,tag=!Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run damage @e[type=!item,tag=!Frames,r=1.8,tag=!Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^1.85 run scoreboard players add @e[type=!item,tag=!Frames,r=1.8,tag=!Big,tag=!Big] Evade 6
scoreboard players add @s[scores={atk=1}] fuga 1


execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.849,tag=Big] damage += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.slice1 @a ~~~ 10000 1.95 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.cleave @a ~~~ 10000 1.05 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run playsound mob.cleave @a ~~~ 10000 0.8 10000
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run particle ds:blood_splat2 ~~~
execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 if entity  @e[type=!item,tag=!Frames,r=4.849,tag=Big] run particle ds:heavy_impact2 ~~1~
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run damage @e[type=!item,tag=!Frames,r=4.849,tag=Big] 3 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 16
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 9
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s positioned ^^^3.85 run scoreboard players add @e[type=!item,tag=!Frames,r=4.849,tag=Big] Evade 6

execute as @s[scores={BasicM1=3,BasicM1s=4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s unless block ~~-1~ air positioned ^^^3.55 run scoreboard players add @e[type=!item,tag=!Frames,r=3.5] Flourish 2

scoreboard players set @s[scores={BasicM1=14..,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] Move 7
scoreboard players set @s[scores={BasicM1=14..,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] Camera 7
scoreboard players set @s[scores={BasicM1=14..,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] Frames 7

execute as @s[scores={BasicM1=21..,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 1

execute as @s[scores={BasicM1=15..20,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run tp @s @s

execute as @s[scores={BasicM1=16,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run camerashake add @a[r=20] 0.25 0.1 rotational
execute as @s[scores={BasicM1=16,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run effect @a[r=20] blindness 1 1 true
execute as @s[scores={BasicM1=16,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run playsound mob.slash1 @a[r=40] ~~~ 9999 2 9999
execute as @s[scores={BasicM1=16,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run summon ds:projectile ^^1^0.15 facing ^^1^20 none dismantlem1 
execute as @s[scores={BasicM1=16,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run scoreboard players set @e[name=dismantlem1,c=1] Deleter 25

execute as @e[name=dismantlem1,c=2] at @s run function sukuna/fighting/dismantlem1

execute as @s[scores={BasicM1=5,BasicM1s=5},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run function damages/cleave_damage
execute as @s[scores={BasicM1=3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] at @s run function damages/cleave_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..4},hasitem={item=ds:cleave_fists,location=slot.weapon.mainhand}] BasicM1 0