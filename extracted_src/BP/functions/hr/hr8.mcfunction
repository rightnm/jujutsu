playanimation @s[scores={move=90}] animation.flashstrike
tag @s[scores={move=1..2},tag=form8] remove form8

tag @s[scores={move=88..,Stun=1..},tag=form8] remove form8
playanimation @s[scores={move=88..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=88..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..88}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=1..48}] Camera 4
scoreboard players set @a[tag=flashstrike,r=40] Camera 4
scoreboard players set @e[tag=flashstrike,r=40] Move 4
scoreboard players set @e[tag=flashstrike,r=40] Stun 25

execute as @s[scores={move=88}] at @s run playsound mob.wither.shoot @a ~~~ 1 0.4

execute as @s[scores={move=56..88}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.2 2 
execute as @s[scores={move=56..88}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.1 2.5
execute as @s[scores={move=56..88}] at @s run playsound mob.blaze.shoot @a ~~~ 0.15 3
execute as @s[scores={move=56..88}] at @s run playsound mob.bat.takeoff @a ~~~ 0.2 3
execute as @s[scores={move=56..88}] at @s run camerashake add @a[r=10] 0.25 0.1 

execute as @s[scores={move=55}] at @s run playsound mob.shock1 @a ~~~ 1 3
execute as @s[scores={move=55}] at @s run playsound mob.blaze.shoot @a ~~~ 1 2
execute as @s[scores={move=55}] at @s run playsound mob.bass @a[r=50] ~~~ 9999 1.25 9999
execute as @s[scores={move=51..55}] at @s run scriptevent ds:knockback 12
execute as @s[scores={move=51..55}] at @s run particle ds:rubble3 ~~1~
execute as @s[scores={move=51..55}] at @s run particle ds:ground_slam2 ~~1~
execute as @s[scores={move=52..55}] at @s run tag @e[r=4,tag=!Frames,tag=!flashstrike,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add flashstrike
execute as @s[scores={move=49..55}] at @s positioned ^^^-4 run tag @e[r=4,tag=!Frames,tag=!flashstrike,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add flashstrike


execute as @s[scores={move=5..50},type=player] at @s run tp @s @s
execute as @s[scores={move=5..50},type=!player] at @s run tp @s @s
execute as @s[scores={move=5..50},type=!player] at @s run tp @s ~~~~ 0

camera @s[scores={move=50},type=player] fade time 0.1 0.1 0.15 color 0 0 0
camera @s[scores={move=48},type=player] set minecraft:free pos ^1 ^0.85 ^5 rot ~-3 ~170
execute as @s[scores={move=48}] at @s run camera @a[tag=flashstrike,r=40] set minecraft:free pos ^1 ^0.85 ^5 rot ~-3 ~170


execute as @s[scores={move=1..2}] at @s run tag @e[tag=flashstrike,r=40] remove flashstrike

execute as @s[scores={move=7..32}] at @s run function damages/blunt_damage
execute as @s[scores={move=7..32}] at @s run damage @e[tag=flashstrike,r=40] 2 override
execute as @s[scores={move=5..32}] at @s run scoreboard players set @e[tag=flashstrike,r=40] Stun 35
execute as @s[scores={move=5..32}] at @s run scoreboard players set @e[tag=flashstrike,r=40] Hit 5
execute as @s[scores={move=5..32}] at @s run scoreboard players add @e[tag=flashstrike,r=40] Evade 2
execute as @s[scores={move=5}] at @s run scoreboard players operation @e[tag=flashstrike,r=40] damage += @s damageadd
execute as @s[scores={move=5..32}] at @s run execute as @e[tag=flashstrike,r=40] at @s run function hr/flashstrikeparticles