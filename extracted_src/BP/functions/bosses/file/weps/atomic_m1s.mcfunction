 scoreboard players remove @e[scores={BasicM1=1..}] BasicM1 1
scoreboard players set @e[scores={M1Reset=1..3}] BasicM1s 0
scoreboard players set @e[scores={BasicM1=1..}] M1ing 2

scoreboard players set @s[scores={BasicM1=1..,Stun=0}] M1Reset 65
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=1..4}] Disabled 8
scoreboard players set @s[scores={BasicM1s=4..}] Disabled 20
scoreboard players set @s[scores={BasicM1=1..2,BasicM1s=4..,Stun=0}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=5..}] BasicM1s 0
scoreboard players set @s[scores={BasicM1s=1..,Stun=1..}] BasicM1s 0

effect @a[scores={BasicM1s=0,BasicM1=0,move=0,move=0}] weakness 1 9 true
playanimation @a[scores={BasicM1s=0,BasicM1=0,move=0,move=0}] animation.atomic_idle

effect @a[scores={BasicM1s=1..2}] slowness 1 2 true
effect @a[scores={BasicM1s=3..6}] slowness 0 10 true
effect @a[scores={BasicM1s=1..,BasicM1s=7}] slowness 1 4 true


scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3..}]  Move 4
scoreboard players set @s[scores={BasicM1=1..,BasicM1s=3..}]  Camera 4

execute as @s[scores={BasicM1=5..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s run scoreboard players set @s Camera 4
execute as @s[scores={BasicM1=5..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s run scoreboard players set @s Move 4
execute as @s[scores={BasicM1=5..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s run tp @s @s


execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1}] at @s run scoreboard players add @s scroll 1
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1,scroll=5..}] at @s run scoreboard players set @s scroll 1
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1}] at @s run playsound random.orb @a ~~~ 0.5 1.75
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1,scroll=1}] at @s run tellraw @s {"rawtext":[{"text":"§g- Selected Skill: §5Atomic\n§g>-----------------------------<"}]}
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1,scroll=2}] at @s run tellraw @s {"rawtext":[{"text":"§g- Selected Skill: §5Ebony Swirl\n§g>-----------------------------<"}]}
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1,scroll=3}] at @s run tellraw @s {"rawtext":[{"text":"§g- Selected Skill: §5Slash Barrage\n§g>-----------------------------<"}]}
execute as @s[scores={BasicM1=0,Disabled=0,Sneaking=1,scroll=4}] at @s run tellraw @s {"rawtext":[{"text":"§g- Selected Skill: §5Flash Strike\n§g>-----------------------------<"}]}


execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=1,wep1=1..}] at @s run playsound note.pling @s ~~~ 0.5 0.4
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=1,wep1=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cAtomic is on cooldown: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=1,wep1=0}] at @s run scoreboard players set @s move 465
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=1,wep1=0}] at @s run tag @s add wep1
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=1,wep1=0}] at @s run scoreboard players set @s wep1 600

execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=2,wep2=1..}] at @s run playsound note.pling @s ~~~ 0.5 0.4
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=2,wep2=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cEbony Swirl is on cooldown: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=2,wep2=0}] at @s run scoreboard players set @s move 21
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=2,wep2=0}] at @s run tag @s add wep2
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=2,wep2=0}] at @s run scoreboard players set @s wep2 70

execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=3,wep3=1..}] at @s run playsound note.pling @s ~~~ 0.5 0.4
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=3,wep3=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cSlash Barrage is on cooldown: §e"},{"score":{"name": "@p","objective": "wep3"}},{"text":"§c."}]}
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=3,wep3=0}] at @s run scoreboard players set @s move 21
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=3,wep3=0}] at @s run tag @s add wep3
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=3,wep3=0}] at @s run scoreboard players set @s wep3 70

execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=4,wep4=1..}] at @s run playsound note.pling @s ~~~ 0.5 0.4
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=4,wep4=1..}] at @s run tellraw @s {"rawtext":[{"text":"§cFlash Strike is on cooldown: §e"},{"score":{"name": "@p","objective": "wep4"}},{"text":"§c."}]}
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=4,wep4=0}] at @s run scoreboard players set @s move 23
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=4,wep4=0}] at @s run tag @s add wep4
execute as @s[tag=itemUse:ds:atomic_sword,scores={Stun=0,Disabled2=0,BasicM1=0,detect_sneak=0,scroll=4,wep4=0}] at @s run scoreboard players set @s wep3 80


execute as @s[scores={detect_left=1,BasicM1=0,BasicM1s=0..6,Disabled=0,detect_sneak=0}] at @s run scoreboard players add @s BasicM1s 1

execute as @s[scores={detect_left=1,BasicM1=0..1,Disabled=0,detect_sneak=0,BasicM1s=1}] at @s run scoreboard players set @s BasicM1 21
execute as @s[scores={detect_left=1,BasicM1=0..1,Disabled=0,detect_sneak=0,BasicM1s=2}] at @s run scoreboard players set @s BasicM1 21
execute as @s[scores={detect_left=1,BasicM1=0..1,Disabled=0,detect_sneak=0,BasicM1s=3}] at @s run scoreboard players set @s BasicM1 22
execute as @s[scores={detect_left=1,BasicM1=0..1,Disabled=0,detect_sneak=0,BasicM1s=4}] at @s run scoreboard players set @s BasicM1 29

playanimation @a[scores={BasicM1=20..,BasicM1s=1}] animation.atomic_attack1
playanimation @a[scores={BasicM1=20..,BasicM1s=2}] animation.atomic_attack2
playanimation @a[scores={BasicM1=21..,BasicM1s=3}] animation.atomic_attack3
playanimation @a[scores={BasicM1=28..,BasicM1s=4}] animation.atomic_attack4


inputpermission set @s[scores={BasicM1=1..3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand},haspermission={movement=disabled}] movement enabled

scoreboard players set @s[scores={BasicM1=1..,BasicM1s=4..6},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] Move 4

execute as @s[scores={BasicM1=3..5},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s run scoreboard players set @s BasicM1 2
scoreboard players set @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}]atk 2
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Hit 2
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Stun 10
execute as @s[scores={BasicM1=5..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run tp @s @s
execute as @s[scores={BasicM1=7..8,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=7..8,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound  mob.wither.shoot @a ~~~ 0.75 1.55
execute as @s[scores={BasicM1=7..8,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound mob.blaze.shoot @a ~~~ 0.4 1.25
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[r=3.1495,tag=!Frames] 10 none entity @s
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run particle ds:slice1
execute as @s[scores={BasicM1=6..7,BasicM1s=1},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run playsound mob.sword @a ~~1~ 0.7 0.77


scoreboard players set @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}]atk 2
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Hit 2
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Stun 25
execute as @s[scores={BasicM1=5..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run tp @s @s
execute as @s[scores={BasicM1=7..8,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s  if block ^^^0.123 air run tp @s ^^^0.123
execute as @s[scores={BasicM1=7..8,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound mob.wither.shoot @a ~~~ 0.75 1.5
execute as @s[scores={BasicM1=7..8,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound mob.blaze.shoot @a ~~~ 0.4 1.25
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[r=3.1495,tag=!Frames] 12 none entity @s
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run particle ds:slice1
execute as @s[scores={BasicM1=6..7,BasicM1s=2},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run playsound mob.sword @a ~~1~ 0.7 0.77

scoreboard players set @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}]atk 2
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Hit 2
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run scoreboard players set @e[r=3.1495,tag=!Frames] Stun 25
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run tp @s @s
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound mob.wither.shoot @a ~~~ 0.75 1.5
execute as @s[scores={BasicM1=9..11,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run playsound mob.blaze.shoot @a ~~~ 0.4 1
execute as @s[scores={BasicM1=9..10,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run damage @e[r=3.1495,tag=!Frames] 12 none entity @s
execute as @s[scores={BasicM1=9..10,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run particle ds:slice1
execute as @s[scores={BasicM1=9..10,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^3.15 run execute as @e[r=3.1495,tag=!Frames] at @s run playsound mob.sword @a ~~1~ 0.7 0.77

scoreboard players set @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}]atk 2
execute as @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run scoreboard players set @e[r=5,tag=!Frames,rm=0.1] Hit 2
execute as @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run scoreboard players set @e[r=5,tag=!Frames,rm=0.1] Stun 25
execute as @s[scores={BasicM1=5..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run execute as @e[r=5,tag=!Frames,rm=0.1] at @s run tp @s @s
execute as @s[scores={BasicM1=7..8,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run execute as @e[r=5,tag=!Frames,rm=0.1] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run execute as @e[r=5,tag=!Frames,rm=0.1] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run playsound mob.wither.shoot @a ~~~ 0.75 0.5
execute as @s[scores={BasicM1=7..8,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run playsound mob.blaze.shoot @a ~~~ 0.4 0.45
execute as @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run damage @e[r=5,rm=0.1,tag=!Frames] 12 none entity @s
execute as @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run execute as @e[r=5,rm=0.1,tag=!Frames] at @s run particle ds:slice1
execute as @s[scores={BasicM1=6..7,BasicM1s=3},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^ run execute as @e[r=5,rm=0.1,tag=!Frames] at @s run playsound mob.sword @a ~~1~ 0.7 0.77


scoreboard players set @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] atk 2
execute as @s[scores={BasicM1=1..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s run tp @s @s
execute as @s[scores={BasicM1=6..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s if block ^^0.33^0.11 air run tp @s ^^0.33^0.11
execute as @s[scores={BasicM1=6..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s if block ^^0.33^0.11 air run tp @s ^^0.33^0.11
execute as @s[scores={BasicM1=6..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s if block ^^0.33^0.11 air run tp @s ^^0.33^0.11
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run scoreboard players set @e[r=7.49,tag=!Frames] Hit 2
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run scoreboard players set @e[r=7.49,tag=!Frames] Stun 25
execute as @s[scores={BasicM1=5..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s run tp @s @s
execute as @s[scores={BasicM1=7..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s if block ^^^-0.2 air run tp @s ^^^-0.2
execute as @s[scores={BasicM1=7..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^1.15 run playsound mob.wither.shoot @a ~~~ 0.75 0.85
execute as @s[scores={BasicM1=7..8,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^1.15 run playsound mob.blaze.shoot @a ~~~ 0.4 0.45
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run damage @e[r=7.49,tag=!Frames] 12 none entity @s
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s run particle ds:slice1
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s run playsound mob.sword @a ~~1~ 0.7 0.77
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s run summon ds:red_reverse ^^^1
execute as @s[scores={BasicM1=6..7,BasicM1s=4},hasitem={item=ds:atomic_sword,location=slot.weapon.mainhand}] at @s positioned ^^^7.5 run execute as @e[r=7.49,tag=!Frames] at @s run effect @s levitation 1 20 true


