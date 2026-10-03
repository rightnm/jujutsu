playanimation @s[scores={move=20}] animation.black_blade.ab5_start

execute as @s[scores={move=17}] at @s run particle ds:ground_slam2
execute as @s[scores={move=17}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 99999 0.7 99999
execute as @s[scores={move=5..17}] at @s run camerashake add @a[r=20] 0.1 0.08
execute as @s[scores={move=5..17}] at @s run particle ds:sprint
execute as @s[scores={move=5..17}] at @s run scriptevent ds:knockback 2
execute as @s[scores={move=5..17}] at @s run tag @e[tag=!Frames,r=2] add shadowdance2
execute as @s[scores={move=5..17}] at @s run tag @e[tag=!Frames,r=2] add shadowdance
execute as @s[scores={move=5..17}] at @s if entity @e[tag=!Frames,r=2] run playsound mob.wither.hurt @a[r=20] ~~~ 99999 0.5 99999
execute as @s[scores={move=5..17}] at @s if entity @e[tag=!Frames,r=2] run camera @s fade time 0.15 0.25 0.25 color 0 0 0
execute as @s[scores={move=5..17}] at @s if entity @e[tag=!Frames,r=2] run tag @s add shadowdance
execute as @s[scores={move=5..17}] at @s if entity @e[tag=!Frames,r=2] run scoreboard players set @s move 1106
scoreboard players set @s[scores={move=1..5}] AfterAnim 10

execute as @s[scores={move=1..3}] at @s run tag @e[tag=shadowdance] remove shadowdance
execute as @s[scores={move=1..3}] at @s run tag @e[tag=shadowdance2] remove shadowdance2

execute as @e[tag=shadowdance2,type=!player] at @s run tp @s ~~~

execute as @s[scores={move=1104..}] at @s run tp @s 
execute as @s[scores={move=1100..}] at @s run tp @e[tag=shadowdance2,c=1] ^^^0.25 facing @s

scoreboard players set @s[scores={move=1..}] Frames 5

execute as @s[scores={move=1020..}] at @s run scoreboard players set @e[tag=shadowdance] Frames 5
scoreboard players set @e[tag=shadowdance] Move 6
scoreboard players set @e[tag=shadowdance] Camera 6
scoreboard players set @e[tag=shadowdance] Cutscene 7


playanimation @e[scores={move=1100..1101}] animation.black_blade.ab5

execute as @s[scores={move=11..3}] run camera @a clear

execute as @e[tag=shadowdance2] at @s if block ~~-1~ air run tp @s ~~~

execute as @s[scores={move=1100..}] at @s run tp @s @s
execute as @s[scores={move=1100}] at @s run summon ds:projectile ^^^ facing ^^^10 none shadowdance 
execute as @s[scores={move=900..}] at @s run scoreboard players set @e[name=shadowdance,c=1] Deleter 5
execute as @s[scores={move=11..}] at @s run tp @e[name=shadowdance,c=1] ^^^1 facing ^^^10
execute as @s[scores={move=1098..}] at @s run playanimation @e[name=shadowdance,c=1] animation.black_blade.ab5
execute as @s[scores={move=1099..}] at @s run tp @e[tag=shadowdance,c=1] ^ ^ ^0.1 facing @s

execute as @s[scores={move=1..2}] run tag @e[tag=shadowdance] remove shadowdance

execute as @s[scores={move=1098}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.2 linear pos ^-4 ^-0.5 ^-1 rot ~-7 ~-50
execute as @s[scores={move=1075}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.22 linear pos ^4 ^0.5 ^4 rot ~5 ~120
execute as @s[scores={move=1070}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.22 linear pos ^-4 ^-0.3 ^-4 rot ~5 ~-70
execute as @s[scores={move=1064}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.22 linear pos ^4 ^1.5 ^-5 rot ~15 ~20
execute as @s[scores={move=1058}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.55 in_out_circ pos ^3^2 ^-3 rot ~25 ~30
execute as @s[scores={move=1046}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 1.33 in_out_circ pos ^10 ^-0.25 ^ rot ~-5 ~90
execute as @s[scores={move=116}] at @s anchored eyes run camera @a[tag=shadowdance] set minecraft:free ease 0.4 in_out_circ pos ^7 ^-0.5 ^ rot ~5 ~90

execute as @s[scores={move=1195}] at @s run playsound mob.swordslash @a ~~~ 1 1.3
execute as @s[scores={move=1095}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=1095}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slash
execute as @s[scores={move=1095}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.85 1000
execute as @s[scores={move=1095}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Hit 5
execute as @s[scores={move=1095}] at @s  run playsound mob.wither.shoot @a ~~~ 0.3 0.745
execute as @s[scores={move=1095}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=1095}] at @s  run function fighting/black_blade/slash
execute as @s[scores={move=1095}] at @s  run playsound mob.slice @a[r=100] ~~~ 9999 0.9 9999

execute as @s[scores={move=1074}] at @s run playsound mob.swordslash @a ~~~ 1 1
execute as @s[scores={move=1074}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=1074}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={move=1074}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slash
execute as @s[scores={move=1074}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.85 1000
execute as @s[scores={move=1074}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Hit 5
execute as @s[scores={move=1074}] at @s  run playsound mob.wither.shoot @a ~~~ 0.3 0.745
execute as @s[scores={move=1074}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=1074}] at @s  run function fighting/black_blade/slash
execute as @s[scores={move=1074}] at @s  run playsound mob.slice @a[r=100] ~~~ 9999 0.95 9999

execute as @s[scores={move=1069}] at @s run playsound mob.swordslash @a ~~~ 1 1.15
execute as @s[scores={move=1069}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=1069}] at @s run particle ds:surface_slash3 ~~1~
execute as @s[scores={move=1069}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={move=1069}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slash
execute as @s[scores={move=1069}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.85 1000
execute as @s[scores={move=1069}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Hit 1
execute as @s[scores={move=1069}] at @s  run playsound mob.wither.shoot @a ~~~ 0.3 0.745
execute as @s[scores={move=1069}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=1069}] at @s  run function fighting/black_blade/slash

execute as @s[scores={move=1063}] at @s run playsound mob.swordslash @a ~~~ 1 1.15
execute as @s[scores={move=1063}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=1063}] at @s  run particle ds:surface_slash3 ~~1~
execute as @s[scores={move=1063}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={move=1063}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slash
execute as @s[scores={move=1063}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.85 1000
execute as @s[scores={move=1063}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Hit 2
execute as @s[scores={move=1063}] at @s  run playsound mob.wither.shoot @a ~~~ 0.3 0.745
execute as @s[scores={move=1063}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=1063}] at @s  run function fighting/black_blade/slash
execute as @s[scores={move=1063}] at @s  run playsound mob.slice @a[r=100] ~~~ 9999 0.75 9999

execute as @s[scores={move=1020..1045}] at @s run playsound mob.swordslash @a ~~~ 0.3 2.74
execute as @s[scores={move=1020..1045}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=1020..1045}] at @s  run particle ds:surface_slash3 ~~1~
execute as @s[scores={move=1020..1045}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={move=1020..1045}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slashes
execute as @s[scores={move=1020..1045}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.85 1000
execute as @s[scores={move=1020..1045}] at @s  run scoreboard players set @e[tag=shadowdance2,c=1,r=10] Hit 1
execute as @s[scores={move=1020..1045}] at @s  run playsound mob.wither.shoot @a ~~~ 0.3 0.745
execute as @s[scores={move=1020..1045}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=1020..1045}] at @s  run function fighting/black_blade/slashes


execute as @s[scores={move=999}] at @s run playsound mob.slash1 @a ~~~ 0.3 0.75
execute as @s[scores={move=999}] at @s run playsound mob.swordslash @a ~~~ 0.3 0.5
execute as @s[scores={move=999}] at @s run camerashake add @a[r=30] 4 0.15
execute as @s[scores={move=999}] at @s positioned ^^^0.5 run playsound mob.witch.throw @a ~~~ 1 0.75
execute as @s[scores={move=999}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run function fighting/black_blade/slash
execute as @s[scores={move=999}] at @s  run execute as @e[tag=shadowdance2,c=1,r=10] at @s run playsound mob.sword @a[r=70] ~~~ 1000 0.5 1000
execute as @s[scores={move=999}] at @s  run scoreboard players set @e[tag=shadowdance2,c=1,r=10] Hit 10
execute as @s[scores={move=999}] at @s  run playsound mob.wither.shoot @a ~~~ 1 0.25
execute as @s[scores={move=999}] at @s  run damage @e[tag=shadowdance2,c=1,r=10] 35 override
execute as @s[scores={move=999}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Stun 20
execute as @s[scores={move=999}] at @s  run scoreboard players add @e[tag=shadowdance2,c=1,r=10] Evade 35
execute as @s[scores={move=999}] at @s run particle ds:shadow_dance_end ~~1~
execute as @s[scores={move=999..1001}] at @s  run particle ds:stars ~~1~
execute as @s[scores={move=999}] at @s  run playsound mob.slice @a[r=100] ~~~ 9999 0.9 9999

execute as @s[scores={move=999}] at @s run particle ds:shadow_dance_end ~~1~
execute as @s[scores={move=999}] at @s run particle ds:ground_slam1
execute as @s[scores={move=999}] at @s run particle ds:ground_slam2
execute as @s[scores={move=999}] at @s run particle ds:ground_slam3 
execute as @s[scores={move=999}] at @s run particle ds:dark_screen_half ~~1~

camera @s[scores={move=990}] fade time 0.3 0.65 0.45 color 0 0 0
execute as @s[scores={move=980}] at @s run tp @s ^7^^
scoreboard players set @s[scores={move=900..980}] move 3
