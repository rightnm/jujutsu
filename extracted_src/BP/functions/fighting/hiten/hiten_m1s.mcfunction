


tag @s[tag=itemUse:ds:hiten] add wepclick
execute as @s[tag=itemUse:ds:hiten] at @s run function fighting/hiten/use_hiten_heavy


event entity @s[has_property={property:hiten=0}] hiten

execute as @s[tag=hitenfly] at @s unless block ~~-1~ air run playanimation @s animation.hiten.leap2
execute as @s[tag=hitenfly] at @s unless block ~~-1~ air run tag @s remove hitenfly
execute as @s[scores={BasicM1=0,BasicM1s=0,Stun=0,Disabled=0,Disabled2=0,sprinting=5..,detect_jump=1},tag=!uplook] at @s if block ~~-1~ air if block ~~-2~ air run function fighting/hiten/leap

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 15
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=5}] Move 8
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..5}] AfterAnim 11
scoreboard players set @s[scores={BasicM1s=6..}] Disabled 34
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=6..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=6..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1}] add wep5
execute as @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=1..,Sneaking=1..,punch=1}] at @s run tellraw @s {"rawtext":[{"text":"§cImpaling Gale is on cooldown: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}
scoreboard players set @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,wep5=0,Sneaking=1..,punch=1}] move 61
scoreboard players set @a[hasitem={item=ds:hiten,location=slot.weapon.mainhand},scores={Stun=0,Disabled2=0,move=60..,wep5=0}] wep5 700


effect @s[hasitem={item=ds:hiten,location=slot.weapon.mainhand}] weakness 1 99 true

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1s 1

execute as @s[scores={BasicM1=7..},hasitem={item=ds:hiten,location=slot.weapon.mainhand},c=1] run function stance_animate_hiten
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1 21
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1 21
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=5,Stun=0},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] BasicM1 21


scoreboard players set @s[scores={BasicM1=11..12,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] atk 2
scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..2},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] atk 2

execute as @s[scores={BasicM1=7..,BasicM1s=1},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback -1.5
execute as @s[scores={BasicM1=4..5,BasicM1s=1},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 1.6

execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45,tag=!Big] run  playsound mob.slash @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.45,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.45,tag=!Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players set @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Stun 15
execute as @s[scores={BasicM1=3,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Evade 2

execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45,tag=Big] run  playsound mob.slash @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.45,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.45,tag=Big] 5 override
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players set @e[type=!item,tag=!Frames,r=3.45,tag=Big] Stun 15
execute as @s[scores={BasicM1=3,BasicM1s=1..3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=Big] Evade 2

execute as @s[scores={BasicM1=7..,BasicM1s=2},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback -2
execute as @s[scores={BasicM1=5..6,BasicM1s=2},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 2.75



execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:downfall

execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45] run  playsound mob.slash @a ~~~ 0.2 1.6
execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=3.45] run playsound mob.sword @a[r=80] ~~~ 10000 2 10000
execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45] Hit 2
execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45] Stun 15
execute as @s[scores={BasicM1=5..6,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45] Flourish 1
execute as @s[scores={BasicM1=5..16,BasicM1s=3},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.45] 1 override

tag @s[scores={BasicM1=7..,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] add Frames
scoreboard players set  @s[scores={BasicM1=3..,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] Frames 7
scoreboard players set  @s[scores={BasicM1=6..,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] Move 5
execute as @s[scores={BasicM1=20..,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:downfall
execute as @s[scores={BasicM1=20..,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback -1
execute as @s[scores={BasicM1=19,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:leapforwards3
execute as @s[scores={BasicM1=5..10,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:downfall
execute as @s[scores={BasicM1=5,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run particle ds:ground_slam2
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 if entity  @e[type=!item,tag=!Frames,r=6] run  playsound mob.slash @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 if entity  @e[type=!item,tag=!Frames,r=6] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players add @e[type=!item,tag=!Frames,r=6] Hit 2
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run damage @e[type=!item,tag=!Frames,r=6] 5 override
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players set @e[type=!item,tag=!Frames,r=6] Stun 15
execute as @s[scores={BasicM1=13,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players add @e[type=!item,tag=!Frames,r=6] Evade 2

execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 if entity  @e[type=!item,tag=!Frames,r=6] run  playsound mob.slash @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players operation @e[type=!item,tag=!Frames,r=6] damagehalf += @s damageadd
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 if entity  @e[type=!item,tag=!Frames,r=6] run playsound mob.sword @a[r=80] ~~~ 10000 1.75 10000
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players add @e[type=!item,tag=!Frames,r=6] Hit 2
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run damage @e[type=!item,tag=!Frames,r=6] 5 override
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players set @e[type=!item,tag=!Frames,r=6] Stun 15
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run scoreboard players add @e[type=!item,tag=!Frames,r=6] Evade 2
execute as @s[scores={BasicM1=9,BasicM1s=4},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^-1^2 run execute as  @e[type=!item,tag=!Frames,r=6]  at @s run scriptevent ds:knockback -3



scoreboard players set @s[scores={BasicM1=1..4,BasicM1s=4}] BasicM1 0

scoreboard players set @s[scores={BasicM1s=4,BasicM1=5}] Move 8
execute as @s[scores={BasicM1s=4,BasicM1=14}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 99999 2 999999
execute as @s[scores={BasicM1s=4,BasicM1=10}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 99999 1.8 999999

execute as @s[scores={BasicM1=18..,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback -2
execute as @s[scores={BasicM1=11..13,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run scriptevent ds:knockback 2.75

execute as @s[scores={BasicM1=20,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 1.2 9999

execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.slash @a ~~~ 0.3 0.87	
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^1.75 run playsound mob.witch.throw @a ~~~ 0.3 1.75
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Hit 5
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run damage @e[type=!item,tag=!Frames,r=3.45,tag=!Big] 6 override
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 if entity  @e[type=!item,tag=!Frames,r=4,scores={Hit=1..}] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=11..14,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run execute as @e[type=!item,tag=!Frames,r=4,scores={Hit=1..}] at @s run tp @s ~~~ facing @e[scores={BasicM1=5..},c=1]
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Flourish 5
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players add @e[type=!item,tag=!Frames,r=3.45,tag=!Big] Evade 5
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^3.5 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.45,tag=!Big] damage += @s damageadd


execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,r=4.9,tag=Big] Hit 5
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^5 run damage @e[type=!item,tag=!Frames,r=4.9,tag=Big] 6 override
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,r=4.9,tag=Big] Flourish 6
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^5 run scoreboard players add @e[type=!item,tag=!Frames,r=4.9,tag=Big] Evade 5
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^1 run particle ds:ground_slam2
execute as @s[scores={BasicM1=11,BasicM1s=5},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s positioned ^^^5 run scoreboard players operation @e[type=!item,tag=!Frames,r=4.9,tag=Big] damage += @s damageadd



scoreboard players set @s[scores={BasicM1s=5}] Move 2

execute as @s[scores={BasicM1=3,BasicM1s=1..},hasitem={item=ds:hiten,location=slot.weapon.mainhand}] at @s run function damages/slash_damage

