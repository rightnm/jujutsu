execute as @s[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},tag=voidcrush_atk] at @s run function bosses/file/boss/summons/soulking_ab3b


execute as @s[hasitem={item=ds:void_katana,location=slot.weapon.mainhand},tag=abilitying] at @s run function fighting/katana/voidkatana_attacks

execute if entity @s[hasitem={item=ds:void_katana}] run execute as @e[name=voidslash,c=1] at @s run function bosses/file/boss/summons/voidslash

tag @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep3=0,Sneaking=0,detect_jump=0}] add wep1
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep1=1..,Sneaking=0,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cVoid Slash is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep1=0,Sneaking=0,detect_jump=0}] move 26
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,move=26..,wep1=0}] wep1 40


tag @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] add wep2
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=1..,detect_jump=0}] at @s run tellraw @s {"rawtext":[{"text":"§cDark Passage is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=1..,detect_jump=0}] move 41
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,move=41..,wep2=0}] wep2 100


tag @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] add wep3
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=1..,Sneaking=0,detect_jump=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cEradicate is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,wep2=0,Sneaking=0,detect_jump=1..}] move 41
scoreboard players set @s[tag=itemUse:ds:void_katana,scores={Stun=0,Disabled2=0,move=41..,wep2=0}] wep2 100



tag @s[tag=itemUse:ds:katana] add wepclick
execute as @s[tag=itemUse:ds:katana] at @s run function fighting/katana/use_katana_heavy
execute as @s[tag=sukunacursedtool] at @s run function sukunacursedtool_off

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 22
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..2}] Disabled 4
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=4}] Move 12
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3}] Disabled 5
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..3}] AfterAnim 15
scoreboard players set @s[scores={BasicM1s=4..}] Disabled 32
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=4..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=5..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0


tag @s[scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,punch=1},tag=heavenlyrestriction] add wep3
execute as @s[scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,punch=1},tag=heavenlyrestriction] at @s run playsound note.pling @a ~~~ 0.05 0.4
execute as @s[scores={Stun=0,Disabled2=0,wep3=1..,Sneaking=1..,punch=1},tag=heavenlyrestriction] at @s run tellraw @s {"rawtext":[{"text":"§cRapid Cuts are on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
scoreboard players set @s[scores={Stun=0,Disabled2=0,wep3=0,Sneaking=1..,punch=1},tag=heavenlyrestriction] move 36
scoreboard players set @s[scores={Stun=0,Disabled2=0,move=34..,wep3=0},tag=heavenlyrestriction] wep3 400

scoreboard players set @s[scores={BasicM1=1}] BasicM1 0

execute as @s[scores={BasicM1=8..,BasicM1s=4}] at @s unless entity @e[r=3,rm=0.2] run scriptevent ds:knockback 2

effect @s weakness 1 99 true

playanimation @s[scores={BasicM1=0,detect_sneak=0,BasicM1s=0,Stun=0,ab=0,move=0,Disabled=0}] animation.katana.idle

scoreboard players random @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},tag=!heavenlyrestriction] blackflashchance 1 269
scoreboard players set @s[scores={BasicM1=6,BasicM1s=1..,Stun=0},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players add @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..5,Disabled=0,detect_sneak=0}] BasicM1s 1

execute as @s[scores={BasicM1=5..},c=1] run function stance_animate_katana
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=1,Stun=0}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=2,Stun=0}] BasicM1 8
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=3,Stun=0}] BasicM1 9
scoreboard players add @s[scores={detect_left=1,BasicM1=0,Disabled=0,detect_sneak=0,BasicM1s=4,Stun=0}] BasicM1 14


scoreboard players set @s[scores={BasicM1=3..5,BasicM1s=1..3}] atk 2

execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=2.4,tag=!Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a[r=80] ~~~ 1 0.75
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big,tag=!Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players operation @e[type=!item,tag=!Frames,r=3.4,tag=Big] damagehalf += @s damageadd
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 1.15 10000
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 2
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 2 override
execute as @s[scores={BasicM1=3,BasicM1s=1..2}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 12
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2
execute as @s[scores={BasicM1=3,BasicM1s=3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Stun 6
execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 2


execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^1.15 run playsound mob.slash1 @a ~~~ 0.3 1.25
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^1.15 run playsound mob.witch.throw @a ~~~ 0.3 1.15
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run damage @e[type=!item,tag=!Frames,r=2.4,tag=!Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 if entity  @e[type=!item,tag=!Frames,r=2.4,tag=!Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^2.45 run scoreboard players add @e[type=!item,tag=!Frames,r=2.4,tag=!Big] Evade 4

execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Hit 3
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run damage @e[type=!item,tag=!Frames,r=3.4,tag=Big] 4 override
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 if entity  @e[type=!item,tag=!Frames,r=3.4,tag=Big] run playsound mob.sword @a[r=80] ~~~ 10000 0.85 10000
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Flourish 6
execute as @s[scores={BasicM1=3,BasicM1s=4}] at @s positioned ^^^3.45 run scoreboard players add @e[type=!item,tag=!Frames,r=3.4,tag=Big] Evade 4


execute as @s[scores={BasicM1=3,BasicM1s=1..3}] at @s run function damages/slash_damage

scoreboard players set @s[scores={BasicM1=1..3,BasicM1s=1..3}] BasicM1 0