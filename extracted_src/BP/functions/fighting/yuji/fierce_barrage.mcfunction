playanimation @s[scores={move=50}] animation.yuji.fierce_rush

tag @s[scores={move=1..2},tag=wep4] remove wep4

scoreboard players set @s[scores={move=1..30}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @a[tag=fiercebarrage,c=1,r=4] Camera 4
scoreboard players set @e[tag=fiercebarrage,c=1,r=4] Move 4
scoreboard players set @e[tag=fiercebarrage,c=1,r=4] Stun 5
scoreboard players set @s[scores={move=1..30}] Camera 5

execute as @s[scores={move=46..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=46..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=46..}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=46..}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~

execute as @s[scores={move=40..45}] at @s run scriptevent ds:knockback 4

execute as @s[scores={move=45}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 1.4
execute as @s[scores={move=45}] at @s run particle ds:ground_dust2
execute as @s[scores={move=40..45}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add fiercebarrage
execute as @s[scores={move=40..45}] at @s positioned ^^^2 run scoreboard players set @e[r=1.95,tag=!Frames,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] Stun 15
execute as @s[scores={move=40..45}] at @s positioned ^^^2 if entity @e[tag=fiercebarrage,r=1.95,c=1] run scoreboard players set @s move 31

execute as @s[scores={move=38..39}] at @s positioned ^^^2 unless entity @e[tag=fiercebarrage,r=1.95,c=1] run scoreboard players set @s Stun 10
execute as @s[scores={move=38..39}] at @s positioned ^^^2 unless entity @e[tag=fiercebarrage,r=1.95,c=1] run scoreboard players set @s move 2




playanimation @s[scores={move=30}] animation.yuji.fierce_rush2


execute as @s[family=yuji,scores={move=4..}] if entity @e[tag=fiercebarrage,c=1,type=ds:todo] run scoreboard players set @s move 3

execute as @s[scores={move=1..30}] at @s run tp @s @s
execute as @s[scores={move=1..30}] at @s run tp @s ^^^0.05
execute as @s[scores={move=1..30,atk=1..}] at @s run tp @s ^^^0.15
execute as @s[scores={move=1..30}] at @s run tp @e[tag=fiercebarrage,c=1,r=4] ^^^1.85 facing ~~1~

scoreboard players set @s[scores={move=29}] atk 2
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=29}] at @s positioned ^^1^1.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=29}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 4 override entity @s
execute as @s[scores={move=29}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=29}] at @s run  function damages/blunt_damage

scoreboard players set @s[scores={move=26}] atk 2
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=25}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=27}] at @s positioned ^^1^1.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.12 9999
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 4 override entity @s
execute as @s[scores={move=25}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=25}] at @s run  function damages/blunt_damage

scoreboard players set @s[scores={move=20}] atk 2
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=19}] at @s positioned ^^1^1.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.28 9999
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 4 override entity @s
execute as @s[scores={move=19}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=19}] at @s run  function damages/blunt_damage

scoreboard players set @s[scores={move=15}] atk 2
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=14}] at @s positioned ^^1^1.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.3 9999
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 5 override entity @s
execute as @s[scores={move=14}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=14}] at @s run  function damages/blunt_damage

scoreboard players set @s[scores={move=12}] atk 2
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run camerashake add @a[r=10] 0.05 0.1
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run particle ds:punch1 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run particle ds:punch2 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run particle ds:punch3 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run particle ds:punch4 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=11}] at @s positioned ^^1^1.5 run playsound mob.punch @a[r=50] ~~~ 9999 1.2 9999
execute as @s[scores={move=11}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 6 override entity @s
execute as @s[scores={move=11}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=11}] at @s run  function damages/blunt_damage


scoreboard players random @s[scores={move=11},tag=!heavenlyrestriction] blackflashchance 1 200
scoreboard players set @s[scores={move=11},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

execute as @s[scores={move=3..30},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.5 ^ ^-0.75 facing ^^^0.25
execute as @s[scores={move=3..30}] at @s anchored eyes as @e[tag=fiercebarrage,r=4,c=1] if entity @s[type=player] run camera @s set minecraft:free pos ^-1.5 ^ ^-0.75 facing ^^^0.25

scoreboard players set @s[scores={move=9}] atk 2
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run camerashake add @a[r=10] 1 0.15
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:heavy_impact1 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:heavy_impact2 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:heavy_impact3 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:red_impact1 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:red_impact2 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:red_impact3 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=8}] at @s positioned ^0.15^1.25^1.75 run playsound mob.shock1 @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=8}] at @s positioned ^^^2.5 run damage @e[tag=fiercebarrage,c=1,r=2.45] 6 override entity @s
execute as @s[scores={move=8}] at @s positioned ^^^2.5 run scoreboard players operation @e[tag=fiercebarrage,c=1,r=2.45] damage += @s damageadd
execute as @s[scores={move=8}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=fiercebarrage,c=1,r=2.45] Evade 3
execute as @s[scores={move=8}] at @s run  function damages/blunt_damage

execute as @s[scores={move=1..2}] at @s run tag @e[c=1,tag=fiercebarrage,r=4] remove fiercebarrage