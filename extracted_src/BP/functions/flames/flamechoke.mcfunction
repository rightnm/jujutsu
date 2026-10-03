playanimation @s[scores={move=35}] animation.flames.ab2

execute as @s[scores={move=1..3}] at @s run tag @e[tag=choke,r=5] remove choke
tag @s[scores={move=1..2},tag=wep2] remove wep2

tag @s[scores={move=26..,Stun=1..},tag=wep2] remove wep2
playanimation @s[scores={move=26..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=26..,Stun=1..}] move 0

execute as @s[scores={move=31..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=31..}] at @s if block ~~-0.3~ air run tp @s ~~-0.3~
execute as @s[scores={move=31..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=31..}] at @s if block ~~-0.73~ air run tp @s ~~-0.73~

execute as @s[scores={move=26}] at @s positioned ^^^2 run tag @e[tag=!Frames,type=!ds:ember_insect,r=1.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add choke
execute as @s[scores={move=25}] at @s run playanimation @e[tag=choke,c=1,r=5] animation.confisgate2

execute as @s[scores={move=5..24}] at @s unless entity @e[tag=choke,c=1,r=5] run playanimation @s animation.cancel
execute as @s[scores={move=5..24}] at @s unless entity @e[tag=choke,c=1,r=5] run scoreboard players set @s move 3

scoreboard players set @s[scores={move=5..24}] Camera 5
execute as @s[scores={move=5..24}] at @s run scoreboard players set @a[tag=choke,c=1,r=5] Camera 5
execute as @s[scores={move=5..24},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.5 ^0.5 ^-1.33 facing ^^^0.63
execute as @s[scores={move=5..24}] at @s anchored eyes run camera @a[tag=choke,c=1,r=5] set minecraft:free pos ^-1.5 ^0.5 ^-1.33 facing ^^^0.63


execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 1 1 true
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1.5 run effect @a[r=20] night_vision 0 20 true

execute as @s[scores={move=1..25}] at @s run camerashake add @a[r=10] 0.15 0.1 rotational
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:fire_hit1 ^^0.25^0.75
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:fire_hit2 ^^0.25^0.75
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:fire_hit4 ^^0.25^0.75
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:fire_hit4 ^^0.25^0.75
execute as @s[scores={move=25}] at @s anchored eyes run particle ds:fire_downslam6 ^^0.25^0.75
execute as @s[scores={move=20}] at @s anchored eyes run particle ds:fire_downslam6 ^^0.25^0.75
execute as @s[scores={move=15}] at @s anchored eyes run particle ds:fire_downslam6 ^^0.25^0.75
execute as @s[scores={move=10}] at @s anchored eyes run particle ds:fire_downslam6 ^^0.25^0.75
execute as @s[scores={move=5}] at @s anchored eyes run particle ds:fire_downslam3 ^^0.25^0.75
execute as @s[scores={move=5..25},type=player] at @s run tp @s @s
execute as @s[scores={move=5..25},type=!player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=5..25}] at @s run tp @e[tag=choke,c=1,r=5] ^^0.25^0.75 facing @s
execute as @s[scores={move=5..25}] at @s run  damage @e[tag=choke,c=1,r=5] 2
execute as @s[scores={move=5..25}] at @s run scoreboard players add @e[tag=choke,c=1,r=5] onfire 5
execute as @s[scores={move=5..25}] at @s run scoreboard players set @e[tag=choke,c=1,r=5] Hit 2
execute as @s[scores={move=35}] at @s run playsound mob.burn @a[r=20] ~~~ 0.1 1
execute as @s[scores={move=25}] at @s run playsound random.explode @a[r=20] ~~~ 9999 0.5 9999
execute as @s[scores={move=15..25}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 9999 0.3 9999
execute as @s[scores={move=15..25}] at @s run playsound mob.burn @a[r=20] ~~~ 0.1 2