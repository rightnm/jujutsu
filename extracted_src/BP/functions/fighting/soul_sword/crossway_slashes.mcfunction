playanimation @s[scores={move=62}] animation.soul_sword.ab4

tag @e[scores={move=1..2},tag=wep4] remove wep4

tag @s[scores={move=1..2},tag=crossway] remove crossway
execute as @s[scores={move=1..2}] at @s run tag @e[tag=crossway2,r=30] remove crossway2

tag @s[scores={move=43..,Stun=1..},tag=wep4] remove wep4
playanimation @s[scores={move=43..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=43..,Stun=1..}] move 0

scoreboard players set @s[scores={move=39..43}] Hyper 4
scoreboard players set @s[scores={move=39..}] Move 4
scoreboard players set @s[scores={move=39..43}] Frames 5

execute as @s[scores={move=46..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=1..42}] at @s run tp @s @s
execute as @s[scores={move=1..42},type=!player] at @s run tp @s ~~~~ 0
effect @s[scores={move=39..42}] invisibility 1 1 true
effect @s[scores={move=36..38}] invisibility 0 10 true
execute as @s[scores={move=37..42},type=player] at @s if block ^^1^1 air if block ^^1^2 air if block ^^1^3 air if block ^^1^4 air run tp @s ^^^4
execute as @s[scores={move=37..42},type=!player] at @s rotated ~ 0 if block ^^1^1 air if block ^^1^2 air if block ^^1^3 air if block ^^1^4 air run tp @s ^^^4


execute as @s[scores={move=39..42}] at @s run tag @e[tag=!Frames,r=4,tag=!crossway2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add crossway2
execute as @s[scores={move=39..42},tag=!crossway] at @s if entity @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run tag @s add crossway

scoreboard players set @s[scores={move=1..42},tag=crossway] Camera 5
scoreboard players set @s[scores={move=1..42},tag=crossway] Move 5
scoreboard players set @s[scores={move=1..42},tag=crossway] Frames 5
scoreboard players set @e[tag=crossway2,r=30] Camera 5
scoreboard players set @e[tag=crossway2,r=30] Move 5
scoreboard players set @e[tag=crossway2,r=30] Frames 5

execute as @s[scores={move=39..42}] at @s run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 1.8 9999
execute as @s[scores={move=39..42}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 9999 2 9999

execute as @s[scores={move=37..38}] at @s unless entity @e[tag=crossway2,r=30,c=1] run scoreboard players set @s move 2


execute as @s[scores={move=36..37}] at @s run execute as @e[tag=crossway2,r=30] at @s run tp @s ~~~~ 0
execute as @s[scores={move=36..37}] at @s run execute as @a[tag=crossway2,r=30] at @s run camera @s set minecraft:free pos ^ ^0.65 ^4 facing ~~1.25~
execute as @s[scores={move=36..37},tag=crossway,type=player] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s run camera @a[scores={move=36..37},tag=crossway,r=30,c=1] set minecraft:free pos ^ ^0.6 ^4 facing ~~1.25~

execute as @s[scores={move=5..37},type=player] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s unless entity @s[type=player] run particle ds:cutscene_black1 ~~~
execute as @s[scores={move=5..37},type=player] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s unless entity @s[type=player] run particle ds:cutscene_black3 ~~0.1~
execute as @s[scores={move=5..37}] at @s run execute as @a[tag=crossway2,r=30] at @s run particle ds:cutscene_black1 ~~~
execute as @s[scores={move=5..37}] at @s run execute as @a[tag=crossway2,r=30] at @s run particle ds:cutscene_black3 ~~0.1~

execute as @s[scores={move=32}] at @s run playanimation @e[tag=crossway2,r=30] animation.soul_sword.ab3finish2
execute as @s[scores={move=10}] at @s run playanimation @e[tag=crossway2,r=30] animation.stunned i 0.5

execute as @s[scores={move=35}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=200] ~~~ 0.5 1.2
execute as @s[scores={move=35}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.swordslash @a[r=200] ~~~ 1.5 0.8
execute as @s[scores={move=35}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:crossway2 ^^1.15^0.4
execute as @s[scores={move=35}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:blood_splat ^0.15^^0.4
execute as @s[scores={move=35}] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s run camerashake add @a[r=30] 2 0.15

execute as @s[scores={move=30}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=200] ~~~ 0.5 1.2
execute as @s[scores={move=30}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.swordslash @a[r=200] ~~~ 1.5 0.8
execute as @s[scores={move=30}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:crossway1 ^0.15^1.15^0.4
execute as @s[scores={move=30}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:blood_splat ^0.15^^0.4
execute as @s[scores={move=30}] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s run camerashake add @a[r=30] 2 0.15

execute as @s[scores={move=26}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=200] ~~~ 0.5 1.2
execute as @s[scores={move=26}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.swordslash @a[r=200] ~~~ 1.5 0.8
execute as @s[scores={move=26}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:crossway2 ^^1.15^0.4
execute as @s[scores={move=26}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:blood_splat ^0.15^^0.4
execute as @s[scores={move=26}] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s run camerashake add @a[r=30] 2 0.15

execute as @s[scores={move=11..20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:blood_splat ^0.15^^0.4
execute as @s[scores={move=11..20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:blood ~~~
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=200] ~~~ 0.5 1.2
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.swordslash @a[r=200] ~~~ 1.5 0.8
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:crossway1 ^0.15^1.15^0.4
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=200] ~~~ 0.5 1.2
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.swordslash @a[r=200] ~~~ 1.5 0.8
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:crossway2 ^^1.15^0.4


execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s positioned ^^^1 run function damages/slash_damage
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s positioned ^^^1 run function damages/soul_damage

execute as @s[scores={move=15..20}] at @s run execute as @e[tag=crossway2,r=30] at @s run tp @s ~~~~ 0
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:heavy_impact2 ~~1~
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:heavy_impact3 ~~1~
execute as @s[scores={move=20}] at @s run scoreboard players operation @e[tag=crossway2,r=30] damagehalf += @s damageadd
execute as @s[scores={move=20}] at @s run scoreboard players set @e[tag=crossway2,r=30] Stun 35
execute as @s[scores={move=20}] at @s as @e[tag=crossway2,r=30] unless entity @s[scores={antiheal=100..}] run scoreboard players set @s antiheal 100
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=crossway2,r=30] antiheal 100
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=crossway2,r=30] Hit 2
execute as @s[scores={move=20}] at @s run scoreboard players add @e[tag=crossway2,r=30] Evade 25
execute as @s[scores={move=20}] at @s run damage @e[tag=crossway2,r=30] 25 suicide entity @s
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30,c=1] at @s run camerashake add @a[r=30] 3 0.25
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.slice @a ~~~ 
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run playsound mob.sword @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=20}] at @s run execute as @e[tag=crossway2,r=30] at @s run particle ds:ground_slam2

camera @s[scores={move=6},type=player] fade time 0.15 0.15 0.15 color 0 0 0