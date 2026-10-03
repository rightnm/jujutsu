playanimation @s[scores={move=65}] animation.cleave_charge1
playanimation @s[scores={move=3..7}] animation.cleave_charge2hold


scoreboard players set @s[scores={move=3..,Stun=1..}] move 2
scoreboard players set @s[scores={move=66..}] Frames 5

execute as @s[scores={move=63..65}] if block ~~-1~ air run scriptevent ds:downfall

scoreboard players set @s[scores={move=1..}] Move 6

scoreboard players set @s[scores={move=1..2}] chant 0
tag @s[scores={move=0..2}] remove form5s
tag @s[scores={move=0..2}] remove charge1
tag @s[scores={move=0..2}] remove charge2
tag @s[scores={move=0..2}] remove charge3
tag @s[scores={move=0..2}] remove charge4



execute as @s if block ~~-1~ air run scriptevent ds:antiair

execute as @s[scores={move=64..65}] at @s run scoreboard objectives add chant dummy
execute as @s[scores={move=57}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=57}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=57}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.6 99999

execute as @s[scores={move=57}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o1\n§r§f[ §eClick to Release §f]\n- Or keep charging -"}]}
execute as @s[scores={move=37}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o2\n§r§f[ §eClick to Release §f]\n- Or keep charging -"}]}
execute as @s[scores={move=27}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o3\n§r§f[ §eClick to Release §f]\n- Or keep charging -"}]}
execute as @s[scores={move=8}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o4\n§r§f[ §eClick to Release §f]\n- Or keep charging -"}]}

execute as @s[scores={move=38..56},tag=itemUse:ds:sukuna2] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=38..56},tag=itemUse:ds:sukuna2] move 501

execute as @s[scores={move=37}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=37}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=37}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=27..36},tag=itemUse:ds:sukuna2] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=27..36},tag=itemUse:ds:sukuna2] move 601

execute as @s[scores={move=27}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=27}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=27}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=9..26},tag=itemUse:ds:sukuna2] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=9..26},tag=itemUse:ds:sukuna2] move 821

execute as @s[scores={move=8}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=8}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=8}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=4..7},tag=itemUse:ds:sukuna2] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=4..7},tag=itemUse:ds:sukuna2] move 2001

scoreboard players set @s[scores={move=3..5}] move 5


playanimation @s[scores={move=500..501}] animation.cleave_maximum1

scoreboard players set @s[scores={move=490..500}] sukuna_ab6 999

scoreboard players set @e[tag=takedown] Stun 25

tag @e[tag=Frames] remove takedown

execute as @s[scores={move=486}] at @s anchored eyes positioned ^^^8 run function sukuna/attacks/basic_combat/takedown_trg

execute as @s[scores={move=484..486}] at @s run playsound mob.bat.takeoff @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=484..486}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 0.85 9999

execute as @s[scores={move=425..485}] at @s run execute as @e[tag=takedown,c=1] at @s run tp @s @s
execute as @s[scores={move=425..485}] at @s run execute as @e[tag=takedown,c=1] at @s run tp @e[scores={move=425..485},tag=sukuna,c=1] ^^^1.75 facing @s

execute as @s[scores={move=480..484}] at @s unless entity @e[tag=takedown,r=100] run playanimation @s animation.stunned
execute as @s[scores={move=480..484}] at @s unless entity @e[tag=takedown,r=100] run function cancel_attackv2

execute as @s[scores={move=470..500}] at @s run scoreboard players set @e[tag=takedown,scores={knockdown=4..}] knockdown 3


execute as @s[scores={move=470}] at @s run tp @e[tag=takedown,c=1] ^^^1.75
execute as @s[scores={move=470}] at @s run damage @e[tag=takedown,c=1] 70 override
execute as @s[scores={move=470}] at @s run scoreboard players add @e[tag=takedown,c=1] Evade 5
execute as @s[scores={move=470}] at @s run scoreboard players add @e[tag=takedown,c=1] Hit 6
execute as @s[scores={move=470}] at @s run scoreboard players add @e[tag=takedown,c=1] knockdown 30
execute as @s[scores={move=470}] at @s run scoreboard players add @e[tag=takedown,c=1] Stun 25
execute as @s[scores={move=469}] at @s run scoreboard players operation @e[tag=takedown,c=1] damagehalf += @s damageadd
execute as @s[scores={move=468}] at @s run scoreboard players operation @e[tag=takedown,c=1] damagehalf += @e[tag=!Frames,r=2.49,c=1,scores={strength=1..}] strength
execute as @s[scores={move=470}] at @s run camerashake add @a[r=25] 4 0.5 rotational
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars2
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars2
execute as @s[scores={move=470}] at @s run particle ds:dismantle_stars2
execute as @s[scores={move=470}] at @s run particle ds:large_impact1 ^^^1 
execute as @s[scores={move=470}] at @s run particle ds:large_impact2 ^^^1 
execute as @s[scores={move=470}] at @s run particle ds:ground_slam2
execute as @s[scores={move=470}] at @s run particle ds:ground_slam3
execute as @s[scores={move=470}] at @s run particle ds:ground_slam1
execute as @s[scores={move=470}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=470}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=470}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.65 9999
execute as @s[scores={move=470}] at @s run playsound mob.slice @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=470}] at @s run camerashake add @a[r=100] 4 0.15

execute as @s[scores={move=468}] at @s if entity @e[tag=takedown,c=1] run scoreboard players add @s fuga 10
execute as @s[scores={move=466..467}] at @s run tag @e[tag=takedown] remove takedown

execute as @s[scores={move=460..467}] at @s run function cancel_attackv2







playanimation @s[scores={move=600..601}] animation.cleave_maximum2

scoreboard players set @s[scores={move=520..590}] Camera 5
scoreboard players set @s[scores={move=520..590}] Move 5
scoreboard players set @s[scores={move=590..600}] sukuna_ab6 888


execute as @s[scores={move=600}] at @s run tp @s @s

effect @s[scores={move=530..590}] invisibility 1 1 true
effect @s[scores={move=520..525}] invisibility 0 20 true
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run effect @a[r=25] night_vision 2 1 true
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run damage @e[tag=!Frames,r=10] 2 override
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=10] Hit 4
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run scoreboard players set @e[tag=!Frames,r=10] Stun 25
execute as @s[scores={move=530..590}] at @s run camerashake add @a[r=20] 0.62 0.08 rotational
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=10] at @s run particle ds:blood_splat2
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo4
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo6
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo8
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo9
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo10
execute as @s[scores={move=530..540}] at @s positioned ^^1^ run particle ds:carving_combo11
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo12
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo13
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo_edges
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run particle ds:carving_combo14
execute as @s[scores={move=590}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=583}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=575}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=568}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=550}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=540}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=535}] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=530..590}] at @s  unless block ~~-1~ air run particle ds:carve_floor ~~0.15~
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:large_impact1 ~~~
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:large_impact2 ~~~
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:impact2
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:ground_slam2
execute as @s[scores={move=30}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=5530}] at @s positioned ^^1^ run particle ds:ground_slam3
execute as @s[scores={move=530}] at @s positioned ^^1^ run particle ds:heavy_impact2
execute as @s[scores={move=530..590}] at @s if entity @e[tag=griefable] run fill ~2~2~2~-2~~-2 air [] destroy
execute as @s[scores={move=530..590}] at @s if entity @e[tag=griefable] run fill ~1~3~1~-1~~-1 air [] destroy
execute as @s[scores={move=530..590}] at @s positioned ^^1^ run execute as @e[tag=!Frames,r=10] at @s run playsound mob.sword @a ~~~ 0.02 1.8  
execute as @s[scores={move=530}] at @s positioned ^^0.3^2 run particle ds:carving_aureole
execute as @s[scores={move=529}] at @s run scoreboard players operation @e[tag=!Frames,r=10] damagehalf += @s damageadd
execute as @s[scores={move=528}] at @s run scoreboard players operation @e[tag=!Frames,r=10] damagehalf += @e[tag=!Frames,r=2.49,c=1,scores={strength=1..}] strength
execute as @s[scores={move=530..590}] at @s if entity @e[tag=!Frames,r=10] run scoreboard players add @s fuga 2

execute as @s[scores={move=530..590}] at @s run playsound mob.slash1 @a ~~~ 0.5 1.8  
execute as @s[scores={move=590}] at @s  run playsound mob.rapiddismantle @a ~~1~ 1 1.5
execute as @s[scores={move=590}] at @s  run playsound mob.sukuna_laugh2 @a ~~1~ 1 1   
execute as @s[scores={move=530..590}] at @s run playsound mob.cleave @a ~~~ 0.4 1.15  

execute as @s[scores={move=600}] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.75^2 facing ~~~
execute as @s[scores={move=599}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^^15^10 facing ~~~
camera @s[scores={move=530}] fade time 0.2 0.5 1 color 0 0 0

execute as @s[scores={move=510..520}] at @s run function cancel_attackv2



playanimation @s[scores={move=820..821}] animation.cleave_maximum3

scoreboard players set @s[scores={move=810..820}] sukuna_ab6 1500
scoreboard players set @s[scores={move=812..813}] Camera 5
execute as @s[scores={move=814..815}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=810..813}] at @s run tp @s @s
execute as @s[scores={move=810}] at @s run camerashake add @a[r=40] 0.5 0.15 rotational
execute as @s[scores={move=810}] at @s run playsound mob.witch.throw @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=810}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=810}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=810}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=810}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=810}] at @s run playsound mob.slice1 @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=810}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.99] 36 override
execute as @s[scores={move=810}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Stun 15
execute as @s[scores={move=810}] at @s positioned ^^^6  run scoreboard players set @e[tag=!Frames,r=5.99] Flourish 2
execute as @s[scores={move=810}] at @s positioned ^^^6  run scoreboard players add @e[tag=!Frames,r=5.99] Evade 20
execute as @s[scores={move=810}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Hit 5
execute as @s[scores={move=810}] at @s  positioned ^^^6 run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=810}] at @s  positioned ^^^6 run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=809}] at @s  positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @s damageadd
execute as @s[scores={move=810}] at @s  positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @e[tag=!Frames,r=2.49,c=1,scores={strength=1..}] strength
execute as @s[scores={move=808}] at @s  if entity @e[tag=griefable] positioned ^^^3 run fill ~3~3~3 ~-3 ~ ~-3 air [] destroy
execute as @s[scores={move=810}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={move=802..803}] at @s run effect @a[r=100] night_vision 0 20 true
execute as @s[scores={move=809..811}] at @s  positioned ^^^6 run tp @e[tag=!Frames,r=5.99] ^^^-2.5 facing @s
execute as @s[scores={move=810}] at @s positioned ^^^6 if entity @e[tag=!Frames,r=5.99] run scoreboard players add @s fuga 7

scoreboard players set @s[scores={move=801..809}] move 799

scoreboard players set @s[scores={move=792..793}] Camera 5
execute as @s[scores={move=794..795}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=790..793}] at @s run tp @s @s
execute as @s[scores={move=790}] at @s run camerashake add @a[r=40] 0.5 0.15 rotational
execute as @s[scores={move=790}] at @s run playsound mob.witch.throw @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=790}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=790}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=790}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=790}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=790}] at @s run playsound mob.slice1 @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=790}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.99] 32 override
execute as @s[scores={move=790}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Stun 15
execute as @s[scores={move=790}] at @s positioned ^^^6  run scoreboard players set @e[tag=!Frames,r=5.99] Flourish 2
execute as @s[scores={move=790}] at @s positioned ^^^6  run scoreboard players add @e[tag=!Frames,r=5.99] Evade 20
execute as @s[scores={move=790}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Hit 5
execute as @s[scores={move=790}] at @s  positioned ^^^6 run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=790}] at @s  positioned ^^^6 run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1 9999
execute as @s[scores={move=789}] at @s  positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @s damageadd
execute as @s[scores={move=788}] at @s  positioned ^^^6 run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @e[tag=!Frames,r=2.49,c=1,scores={strength=1..}] strength
execute as @s[scores={move=790}] at @s  if entity @e[tag=griefable] positioned ^^^3 run fill ~3~3~3 ~-3 ~ ~-3 air [] destroy
execute as @s[scores={move=790}] at @s positioned ^^^6 if entity @e[tag=!Frames,r=5.99] run scoreboard players add @s fuga 7

execute as @s[scores={move=789..791}] at @s  positioned ^^^6 run tp @e[tag=!Frames,r=5.99] ^^^-2.5 facing @s

execute as @s[scores={move=760..821}] at @s run camera @s set minecraft:free ease 0.09 in_sine pos ^5^5^-3 facing ^^1^2

scoreboard players set @s[scores={move=765..776}] Camera 6
execute as @s[scores={move=777..778}] at @s run scriptevent ds:knockback 5
execute as @s[scores={move=775..776}] at @s run tp @s @s
execute as @s[scores={move=775}] at @s run camerashake add @a[r=40] 0.85 0.15 rotational
execute as @s[scores={move=775}] at @s run playsound mob.witch.throw @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=775}] at @s run playsound mob.slice2 @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=775}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 0.45 9999
execute as @s[scores={move=775}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.45 9999
execute as @s[scores={move=775}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=775}] at @s run playsound mob.slice1 @a[r=100] ~~~ 9999 0.45 9999
execute as @s[scores={move=775}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=5.99] 42 override
execute as @s[scores={move=773}] at @s run particle ds:red_tint ^4^4^-2
execute as @s[scores={move=775}] at @s run particle ds:large_impact1 ^^1^2.5
execute as @s[scores={move=775}] at @s run particle ds:large_impact2 ^^1^2.5
execute as @s[scores={move=775}] at @s run particle ds:ground_slam2 ^^1^2.5
execute as @s[scores={move=775}] at @s run particle ds:ground_slam3 ^^1^1
execute as @s[scores={move=775}] at @s run particle ds:ground_slam2 ^3^1^2
execute as @s[scores={move=775}] at @s run particle ds:ground_slam2 ^-3^1^2
execute as @s[scores={move=775}] at @s run particle ds:cleave_aureole_big ^^1^2 
execute as @s[scores={move=775}] at @s run particle ds:carving_aureole ^^1^1 
execute as @s[scores={move=775}] at @s run summon gg:impact_frame
execute as @s[scores={move=771}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=767..770}] at @s run fill ~4~4~4~-4~-4~-4 air [] replace light_block
execute as @s[scores={move=775}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Stun 25
execute as @s[scores={move=775}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Flourish 12
execute as @s[scores={move=775}] at @s  positioned ^^^6 run scoreboard players add @e[tag=!Frames,r=5.99] Evade 25
execute as @s[scores={move=775}] at @s  positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=5.99] Hit 5
execute as @s[scores={move=775}] at @s  positioned ^^^6 run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.blood1 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=775}] at @s positioned ^^^6  run execute as @e[tag=!Frames,r=5.99] at @s run playsound mob.slice @a[r=100] ~~~ 9999 0.7 9999
execute as @s[scores={move=774}] at @s positioned ^^^6  run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @s damageadd
execute as @s[scores={move=773}] at @s positioned ^^^6  run scoreboard players operation @e[tag=!Frames,r=5.99] damagehalf += @e[tag=!Frames,r=2.49,c=1,scores={strength=1..}] strength
execute as @s[scores={move=775}] at @s  if entity @e[tag=griefable] positioned ^^^3 run fill ~3~3~3 ~-3 ~ ~-3 air [] destroy
execute as @s[scores={move=773..776}] at @s  positioned ^^^6 run tp @e[tag=!Frames,r=5.99] ^^^-2.5 facing @s
execute as @s[scores={move=775}] at @s positioned ^^^6 if entity @e[tag=!Frames,r=5.99] run scoreboard players add @s fuga 7

camera @s[scores={move=740..760}] clear
inputpermission set @s[scores={move=740..760},haspermission={movement=disabled}] movement enabled
inputpermission set @s[scores={move=740..760},haspermission={camera=disabled}] camera enabled
execute as @s[scores={move=740..753}] at @s run function cancel_attackv2



playanimation @s[scores={move=2000..2001}] animation.cleave_maximum4

scoreboard players set @s[scores={move=1990..2000}] sukuna_ab6 5000
scoreboard players set @s[scores={move=1925..,Camera=0..5}] Camera 15
scoreboard players set @s[scores={move=1923..1924}] Camera 0
inputpermission set @s[scores={move=1920..1924},haspermission={camera=disabled}] camera enabled
execute as @s[scores={move=2000..2001}] at @s run tp @s @s

execute as @s[scores={move=1980..}] at @s run scriptevent ds:downfall

execute as @s[scores={move=2000}] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.25^1.5 facing ~~~
execute as @s[scores={move=1999}] at @s anchored eyes run camera @s set minecraft:free ease 1 in_sine pos ^^^7 facing ~~~
execute as @s[scores={move=1999}] at @s anchored eyes run camera @s fade time 0.3 0.8 0.4 color 0 0 0

execute as @s[scores={move=1980}] at @s run camera @s set minecraft:free pos ^-0.5^0.7^0.35 facing ^^0.25^0.15
execute as @s[scores={move=1979}] at @s run camera @s set minecraft:free ease 0.8 in_sine pos ^-0.7^0.9^0.25 facing ^^0.25^0.15

execute as @s[scores={move=1960}] at @s run camera @s set minecraft:free pos ^-1.7^1.9^1 facing ^^0.25^0.15
execute as @s[scores={move=1950}] at @s anchored eyes run camera @s fade time 0 0 0.25 color 255 255 255
execute as @s[scores={move=1963}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 2.25 9999
execute as @s[scores={move=1960}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=1960}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.15 9999
execute as @s[scores={move=1980}] at @s run execute as @a[r=100] at @s run playsound music.bass3 @s ~~~ 9999 0.85 9999
execute as @s[scores={move=1960}] at @s run particle ds:ground_slam1 ^0.15^^0.25 
execute as @s[scores={move=1960}] at @s run particle ds:ground_slam2 ^0.15^^0.25 
execute as @s[scores={move=1960}] at @s run particle ds:ground_slam3 ^0.15^^0.25 
execute as @s[scores={move=1960}] at @s run particle ds:rubble3 ^0.15^^0.25  
execute as @s[scores={move=1960}] at @s run particle ds:crater ^0.15^^0.25  
execute as @s[scores={move=1960}] at @s run particle ds:bounce ^0.15^^0.25  
execute as @s[scores={move=1960}] at @s run particle ds:dirt0 ^0.15^^0.25  
execute as @s[scores={move=1700..1960}] at @s run particle ds:chanting ~~~
execute as @s[scores={move=1700..1960}] at @s run particle ds:chanting2 ~~~
execute as @s[scores={move=1964}] at @s run particle ds:invert ^-0.55^1^0.55
execute as @s[scores={move=1961}] at @s run particle ds:red_tint ^-0.5^1^0.5
execute as @s[scores={move=1960}] at @s run camerashake add @a[r=20] 4 0.15 rotational

execute as @s[scores={move=1950}] at @s anchored eyes run camera @s set minecraft:free pos ^^-0.25^1.5 facing ~~~
execute as @s[scores={move=1949}] at @s anchored eyes run camera @s set minecraft:free ease 1.5 in_sine pos ^^-0.4^2 facing ~~~

execute as @s[scores={move=1922..1924}] at @s run particle ds:max_dismantle_v2h
execute as @s[scores={move=1922..1924}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=1922..1924}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=1922..1924}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=1922..1924}] at @s run particle ds:white_lightning1 ~~1~
execute as @s[scores={move=1922..1924}] at @s run particle ds:dirt2
execute as @s[scores={move=1922..1924}] at @s run playsound mob.electric3 @a[r=100] ~~~ 9999 2.25 9999
execute as @s[scores={move=1922..1924}] at @s run camerashake add @a[r=100] 0.5 0.1 rotational
execute as @s[scores={move=1920}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=1916..1917}] at @s run fill ~1~1~1 ~-1~-1~-1 air [] replace light_block
execute as @s[scores={move=1916}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~

execute as @s[scores={move=1922..1924}] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 0.2 9999

execute as @s[scores={move=1915..1916}] at @s run particle ds:dismantle_stars ~~1~
execute as @s[scores={move=1916..1917}] at @s run particle ds:max_dismantle_v2h
execute as @s[scores={move=1916..1917}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=1916..1917}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=1916..1917}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=1916..1917}] at @s run particle ds:white_lightning1 ~~1~
execute as @s[scores={move=1916..1917}] at @s run particle ds:dirt2
execute as @s[scores={move=1916..1917}] at @s run playsound mob.electric4 @a[r=100] ~~~ 9999 2 9999

execute as @s[scores={move=1907..1909}] at @s run particle ds:max_dismantle_v2h
execute as @s[scores={move=1907..1909}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=1907..1909}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=1907..1909}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=1907..1909}] at @s run particle ds:white_lightning1 ~~1~
execute as @s[scores={move=1907..1909}] at @s run particle ds:dirt2
execute as @s[scores={move=1907..1909}] at @s run playsound mob.electric3 @a[r=100] ~~~ 9999 2.35 9999
execute as @s[scores={move=1907..1909}] at @s run camerashake add @a[r=100] 0.5 0.1 rotational
execute as @s[scores={move=1907..1909}] at @s run particle ds:ground_slam2 ~~1~

execute as @s[scores={move=1920..1931}] at @s run particle ds:divergent_ac5
execute as @s[scores={move=1980..1921}] at @s run particle ds:divergent_ac5

execute as @s[scores={move=1900..1901}] at @s run particle ds:dismantle_stars ~~1~
execute as @s[scores={move=1900..1905}] at @s run particle ds:max_dismantle_v2h
execute as @s[scores={move=1900..1901}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=1900..1901}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=1900..1901}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=1900..1901}] at @s run particle ds:white_lightning1 ~~1~
execute as @s[scores={move=1900..1901}] at @s run particle ds:dirt2
execute as @s[scores={move=1900..1901}] at @s run playsound mob.electric3 @a[r=100] ~~~ 9999 2 9999
execute as @s[scores={move=1900..1901}] at @s run particle ds:ground_slam2 ~~1~

execute as @s[scores={move=1900..1921}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.35 9999

execute as @s[scores={move=1910..1924}] at @s run camerashake add @a[r=10] 0.3 0.15
execute as @s[scores={move=1900..1909}] at @s run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=1890..1899}] at @s run camerashake add @a[r=10] 1.5 0.15
execute as @s[scores={move=1924}] at @s run playsound mob.blaze.shoot @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=1924}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=1924}] at @s run playsound portal.trigger @a[r=100] ~~~ 9999 1.8 9999
execute as @s[scores={move=1880..1924}] at @s anchored eyes run camera @s set minecraft:free ease 0.0825 in_sine pos ^-0.5^1.5^-5 facing ^^^10

execute as @s[scores={move=1800..1880}] at @s run tp @s @s
execute as @s[scores={move=1879..1880}] at @s positioned ^^^15 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ^^^ facing ^^^20 none maxcleaveshockwavetrg

execute as @s[scores={move=1877..1879}] at @s positioned ^-4^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~ facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave
execute as @s[scores={move=1877..1879}] at @s positioned ^-2^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~  facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave
execute as @s[scores={move=1877..1879}] at @s positioned ^^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~  facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave
execute as @s[scores={move=1877..1879}] at @s positioned ^2^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~  facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave
execute as @s[scores={move=1877..1879}] at @s positioned ^4^^6 unless entity @e[type=ds:projectile,r=1.5] run summon ds:projectile ~~~  facing @e[name=maxcleaveshockwavetrg,c=1] none maxcleaveshockwave

execute as @s[scores={move=1875..1879}] at @s run scoreboard players set @e[name=maxcleaveshockwavetrg,c=1] Deleter 27
execute as @s[scores={move=1875..1879}] at @s run scoreboard players set @e[name=maxcleaveshockwave] Deleter 27

execute as @s[scores={move=1877..1878}] at @s run playanimation @e[name=maxcleaveshockwave] animation.max_cleave_shockwave

execute as @s[scores={move=1876..1877}] at @s run execute as @e[name=maxcleaveshockwave] at @s run function sukuna/attacks/cleaves/max_cleave_shockwave

execute as @s[scores={move=1878..1882}] at @s run tp @s @s
execute as @s[scores={move=1878..1879}] at @s run camera @s set minecraft:free pos ^^30^-7 facing ^^5^30
execute as @s[scores={move=1877}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^^34^-12 facing ^^5^30
scoreboard players set @s[scores={move=1800..1880}] Camera 7
scoreboard players set @s[scores={move=1800..1880}] Move 7

execute as @s[scores={move=1800..1880}] at @s positioned ^^^70 run kill @e[type=item,r=69]

execute as @s[scores={move=1800..1816}] at @s run camera @s clear
execute as @s[scores={move=1800..1815}] at @s run function cancel_attackv2

execute as @s[scores={move=1882}] at @s run camerashake add @a[r=200] 4 0.15 rotational
execute as @s[scores={move=1882}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=1882..1883}] at @s run playsound item.trident.thunder @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=1881..1882}] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=1882}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999

execute as @s[scores={move=1816}] at @s run playsound item.trident.thunder @a[r=100] ~~~ 99999 0.5 99999

execute as @s[scores={move=1879}] at @s run particle ds:fissure1 ^^^0.25
execute as @s[scores={move=1879}] at @s run particle ds:fissure2 ^^^0.25
execute as @s[scores={move=1879}] at @s run particle ds:large_slam1 ^^^0.25
execute as @s[scores={move=1879}] at @s run particle ds:large_slam2 ^^^0.25
execute as @s[scores={move=1879}] at @s run particle ds:large_slam3 ^^^0.25
execute as @s[scores={move=1875..1879}] at @s run particle ds:max_dismantle_v2h ^^^0.25
execute as @s[scores={move=1879}] at @s run particle ds:dirt0 ^^^0.25
execute as @s[scores={move=1880}] at @s run summon gg:impact_frame ~~5~
execute as @s[scores={move=1875..1878}] at @s run fill ~15~15~15 ~-15~-15~-15 air [] replace light_block