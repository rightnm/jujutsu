playanimation @s[scores={move=20..21}] animation.mahito.basic4

tag @s[scores={move=1..2},tag=wep4m] remove wep4m

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=100..}] Camera 5


execute as @s[scores={move=20}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~1~ 99999 2 99999
execute as @s[scores={move=19}] at @s run playsound mob.cursed_energy @a[r=25] ~~1~ 99999 0.8 99999
execute as @s[scores={move=19}] at @s run camerashake add @a[r=5] 1 0.15

execute as @s[scores={move=8..18}] at @s run scriptevent ds:knockback 2.75

scoreboard players set @s[tag=!Frames,family=!projectile,type=!item,type=!xp_orb,scores={move=3..20}] Frames 6
tag @s[scores={move=3..20},tag=!Frames,family=!projectile,type=!item,type=!xp_orb] add Frames

execute as @s[scores={move=8..18}] at @s positioned ^^^2 unless entity @e[tag=focus_striked] run execute as @e[tag=!Frames,family=!projectile,type=!item,type=!xp_orb,r=2.15] at @s if entity @s[scores={detect_health=0..20}] run tag @s add focus_striked
execute as @s[scores={move=8..18}] at @s positioned ^^^2 if entity @e[tag=focus_striked,r=3] run scoreboard players set @s move 1001

execute as @s[scores={move=8..18}] at @s positioned ^^^2 unless entity @e[tag=focus_striked] if entity @e[tag=!Frames,family=!projectile,type=!item,type=!xp_orb,r=2.15] run scoreboard players set @s move 7


execute as @s[scores={move=4..7}] at @s run execute as @e[r=3] at @s run tp @s ~~~


tellraw @s[scores={move=6..7,blackflashlearn=0},tag=itemUse:ds:idle_transfig_combat1,type=player] {"rawtext":[{"text":"§cYou aren't capable creating a controlled black-flash right now, try again once you've learned a new level of understanding about this technique.\n\n(Land your First random black-flash while attacking, also requires atleast Grade 3 Ranking)"}]}

scoreboard players set @s[scores={move=6..7}] atk 2
scoreboard players set @s[scores={move=9..10}] move 3


tag @s[scores={chance=16,move=7..8},type=!player] add blackflashed


playanimation @s[scores={move=7..8}] animation.mahito.basic4b
tag @s[scores={move=6..8,blackflashlearn=1..},tag=itemUse:ds:idle_transfig_combat1,tag=!blackflashed] add blackflashed
titleraw @s[scores={move=6..8,blackflashlearn=1..},tag=!blackflashed,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §eRight-Click §l§f>\n\n"}]}
titleraw @s[scores={move=6..8,blackflashlearn=1..},tag=blackflashed,type=player] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §a Right-Click §l§f>\n\n"}]}
title @s[scores={move=4..5,blackflashlearn=1..},type=player] title §l

execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:curses_energy_hit1 ~~1~
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:curses_energy_hit3 ~~1~
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run playsound mob.shock1 @a[r=25] ~~1~ 99999 3 99999
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run playsound mob.blasted4 @a[r=25] ~~1~ 99999 3 99999
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run damage @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] 10 entity_attack entity @s
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run scoreboard players set @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Stun 25
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run scoreboard players set @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Hit 3
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run scoreboard players add @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Evade 10
execute as @s[scores={move=4},tag=!blackflashed] at @s positioned ^^^2 run scoreboard players operation @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] damage += @s damageadd

execute as @s[scores={move=5}] at @s run function damages/blunt_damage

execute as @s[scores={move=5},tag=blackflashed] at @s run summon gg:impact_frame
execute as @s[scores={move=4},tag=blackflashed] at @s run particle ds:red_tint ^^1^1 
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run playsound mob.blackflash @a[r=50] ~~1~ 99999 2 99999
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run playsound mob.blackflash2 @a[r=50] ~~1~ 99999 0.85 99999
execute as @s[scores={move=4},tag=blackflashed] at @s run scriptevent ds:lightning 3,1,0.25, 0.8,0.1,0.1, 0.8,0.1,0.1, 1,1,1, 1,1,1
execute as @s[scores={move=4},tag=blackflashed] at @s run scriptevent ds:lightning 2,0.85,2, 0.8,0.1,0.1, 0.8,0.1,0.1, 2,2,2, 2,2,2
execute as @s[scores={move=4},tag=blackflashed] at @s run scriptevent ds:lightning 3,1,0.25, 0.8,0.1,0.1, 0.8,0.1,0.1, 1,1,1, 1,1,1
execute as @s[scores={move=4},tag=blackflashed] at @s run scriptevent ds:lightning 2,0.85,2, 0.8,0.1,0.1, 0.8,0.1,0.1, 2,2,2, 2,2,2
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash1 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash2 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash3 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash4 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash5 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash6 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash7 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash8 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash9 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run particle ds:black_flash10 ~~1~
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run execute as @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run damage @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] 10 entity_attack entity @s
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run scoreboard players set @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Stun 25
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run scoreboard players set @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Hit 3
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run scoreboard players add @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] Evade 10
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run scoreboard players operation @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] damage += @s damageadd
execute as @s[scores={move=4},tag=blackflashed] at @s positioned ^^^2 run scoreboard players operation @e[tag=!focus_striked,r=2.15,tag=!Frames,family=!projectile,type=!item,type=!xp_orb] damage *= five endurance

execute as @s[scores={move=4},tag=blackflashed] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
execute as @s[scores={move=4,blackflashlearn=0},tag=blackflashed] at @s run function blackflash_first

scoreboard players set @s[scores={move=3..4},tag=blackflashed] thezone 201











tag @s[scores={move=1..3}] remove blackflashed

execute as @s[scores={move=1000..1001}] at @s run effect @s darkness 3 1 true
execute as @s[scores={move=1000..1001}] at @s run effect @p[tag=focus_striked,c=1] darkness 3 1 true

execute as @s[scores={move=1000..1001}] at @s run tp @s ~~~~ 0


execute as @s[scores={move=100..1001}] at @s[type=!player] run tp @s ~~~~ 0
execute as @s[scores={move=100..1001}] at @s run tp @e[tag=focus_striked,c=1,r=5] ^^^1.5 facing @s

scoreboard players set @s[scores={move=100..,Frames=0..7}] Frames 20
scoreboard players set @e[tag=focus_striked,scores={Move=0..7}] Move 20
scoreboard players set @e[tag=focus_striked,scores={Camera=0..7}] Camera 20
execute as @s[scores={move=921..}] at @s run scoreboard players set @e[tag=focus_striked,scores={Frames=0..7}] Frames 20

execute as @s[scores={move=999..1001}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.3 9999
execute as @s[scores={move=999..1001}] at @s run execute as @a[r=15] at @s run playsound music.bass3 @s ~~~ 9999 1 9999

execute as @s[scores={move=960}] at @s run playsound mob.mahito_blackflash1 @a[r=50] ~~1~ 99999 1 99999

playanimation @s[scores={move=999..1001}] animation.mahito.basic4_finisher
execute as @s[scores={move=999..1001}] at @s run playanimation @e[tag=focus_striked,c=1,r=5] animation.mahito.basic4_finished

execute as @s[scores={move=975..1001}] at @s run camera @s set minecraft:free pos ^-7.5^1.25^ facing ^^1.25^
execute as @s[scores={move=975..1001}] at @s run camera @p[tag=focus_striked,c=1,r=5] set minecraft:free pos ^-7.5^1.25^ facing ^^1.25^

execute as @s[scores={move=960..974}] at @s run camera @s set minecraft:free pos ^-1^1^-1.15 facing ^^1.15^-0.25
execute as @s[scores={move=960..974}] at @s run camera @p[tag=focus_striked,c=1,r=5] set minecraft:free pos ^-1^1^-1.15 facing ^^1.15^-0.25
execute as @s[scores={move=945..974}] at @s run camerashake add @a[r=20] 0.08 0.08


execute as @s[scores={move=946..959}] at @s run camera @s set minecraft:free pos ^-0.25^1.35^0.15 facing ^-0.35^1^-1
execute as @s[scores={move=946..959}] at @s run camera @p[tag=focus_striked,c=1,r=5] set minecraft:free pos ^-0.25^1.35^0.15 facing ^-0.35^1^-1

execute as @s[scores={move=916..945}] at @s run camera @s set minecraft:free pos ^-0.2^1.45^0.9 facing ^^1.33^
execute as @s[scores={move=916..945}] at @s run camera @p[tag=focus_striked,c=1,r=5] set minecraft:free pos ^-0.2^1.45^0.9 facing ^^1.33^

execute as @s[scores={move=943..944}] at @s run tag @s add cutscene_vision
execute as @s[scores={move=943..944}] at @s run tag @p[tag=focus_striked,c=1] add cutscene_vision

execute as @s[scores={move=916..917}] at @s run tag @s remove cutscene_vision
execute as @s[scores={move=916..917}] at @s run tag @p[tag=focus_striked,c=1] remove cutscene_vision

execute as @s[scores={move=920..944}] at @s run scriptevent ds:mahito_blackflash_background1 0,0.85,-0.35

execute as @s[scores={move=945}] at @s run summon gg:impact_frame
execute as @s[scores={move=943}] at @s run particle ds:invert ^^1^0.5
execute as @s[scores={move=944}] at @s run particle ds:red_tint ^^1^0.5
execute as @s[scores={move=945}] at @s run playsound mob.blackflash2 @a[r=50] ~~1~ 99999 0.75 99999
execute as @s[scores={move=945}] at @s run particle ds:black_flash1 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash2 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash3 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash4 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash5 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash6 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash7 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash8 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash9 ^^1^0.5 
execute as @s[scores={move=945}] at @s run particle ds:black_flash10 ^^1^0.5 


execute as @s[scores={move=945},type=!player] at @s unless entity @s[scores={blackflashlearn=0..}] run scoreboard players add @s blackflashlearn 0
execute as @s[scores={move=945,blackflashlearn=0}] at @s run function blackflash_first

camera @s[scores={move=916}] fade time 0 0 0.25 color 255 255 255


#execute as @s[scores={move=945}] at @s run function damages/blunt_damage

execute as @s[scores={move=912}] at @s run summon gg:impact_frame
execute as @s[scores={move=911}] at @s run particle ds:red_tint ^-1^1^1

execute as @s[scores={move=911}] at @s run camerashake add @a[r=25] 4 0.15
execute as @s[scores={move=914}] at @s run playsound mob.heavy_swing @a[r=50] ~~1~ 99999 1.5 99999
execute as @s[scores={move=910}] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 0.5 99999
execute as @s[scores={move=910}] at @s run playsound mob.blackflash @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=910}] at @s run playsound mob.blackflash2 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=909..911}] at @s run scriptevent ds:lightning 3,1,0.25, 0.8,0.1,0.1, 0.8,0.1,0.1, 1,1,1, 1,1,1
execute as @s[scores={move=909..911}] at @s run scriptevent ds:lightning 2,0.85,2, 0.8,0.1,0.1, 0.8,0.1,0.1, 2,2,2, 2,2,2
execute as @s[scores={move=909..911}] at @s run scoreboard players set @e[tag=focus_striked,c=1] knockdown 95
execute as @s[scores={move=909..911}] at @s run tp @e[tag=focus_striked,c=1] ^^2^7
execute as @s[scores={move=907..910}] at @s run execute as @e[tag=focus_striked,c=1] at @s run summon ds:knockback ^^^1
execute as @s[scores={move=890..891}] at @s positioned ^^^22 run scoreboard players set @e[tag=focus_striked,c=1] dying 31
scoreboard players set @s[scores={move=911},tag=blackflashed] thezone 201


execute as @s[scores={move=900..915}] at @s run camera @s set minecraft:free pos ^-7.5^1.25^ facing ^^1.25^
execute as @s[scores={move=900..915}] at @s run camera @p[tag=focus_striked,c=1,r=5] set minecraft:free pos ^-7.5^1.25^ facing ^^1.25^


execute as @s[scores={move=800..890}] at @s run tag @e[tag=focus_striked,r=5] remove focus_striked
scoreboard players set @s[scores={move=800..890}] move 3




