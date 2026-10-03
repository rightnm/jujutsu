playanimation @s[scores={move=350}] animation.dempsey_roll

tag @s[scores={move=1..2},tag=form4] remove form4

tag @s[scores={move=330..,Stun=1..},tag=form4] remove form4
playanimation @s[scores={move=330..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=330..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..330}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..330}] Camera 4
scoreboard players set @e[tag=dempseyrolled,r=30,c=1] Camera 4
scoreboard players set @e[tag=dempseyrolled,r=30,c=1] Move 4
scoreboard players set @e[tag=dempseyrolled,r=30,c=1] Stun 25

scoreboard players set @s[scores={move=330..331}] atk 2

execute as @s[scores={move=1..330},type=player] at @s run tp @s @s
execute as @s[scores={move=1..330},type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=330}] at @s run function damages/blunt_damage

execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.1 9999
execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=332}] at @s anchored eyes run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=330}] at @s positioned ^^^2 run tag @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] add dempseyrolled
execute as @s[scores={move=330}] at @s positioned ^^^2 run playanimation @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small,c=1] animation.dempsey_roll2

execute as @s[scores={move=330}] at @s positioned ^^^2 unless entity @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run playanimation @s animation.cancel
execute as @s[scores={move=330}] at @s positioned ^^^2 unless entity @e[r=1.95,tag=!Frames,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] run scoreboard players set @s move 2
execute as @s[scores={move=320..329}] at @s unless entity @e[tag=dempseyrolled,r=8,c=1] run playanimation @s animation.cancel
execute as @s[scores={move=320..329}] at @s unless entity @e[tag=dempseyrolled,r=8,c=1] run scoreboard players set @s move 2

execute as @s[scores={move=329},type=player] at @s run camera @s fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={move=329}] at @s run camera @a[tag=dempseyrolled,r=8,c=1] fade time 0 0.25 0.25 color 0 0 0

execute as @s[scores={move=161..329}] at @s run tp @e[tag=dempseyrolled,r=8,c=1] ^^^1.45 facing @s
execute as @s[scores={move=15..160}] at @s run tp @e[tag=dempseyrolled,r=8,c=1] ^^^1 facing @s

title @s[scores={move=89..329},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=89..320}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 

execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch1 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch2 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch3 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=329}] at @s anchored eyes run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.7 99999
execute as @s[scores={move=329}] at @s anchored eyes run playsound random.explode @a[r=50] ~~~ 99999 1.66 99999

execute as @s[scores={move=329},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=329}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=303..323}] at @s anchored eyes run camerashake add @a[r=5] 0.15 0.1

execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact1 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact2 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact3 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run camerashake add @a[r=5] 3 0.2
execute as @s[scores={move=300}] at @s anchored eyes run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.7 99999
execute as @s[scores={move=300}] at @s anchored eyes run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.66 99999

camera @s[scores={move=284},type=player] fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=284}] at @s run camera @a[tag=dempseyrolled,r=8,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=279},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^2^^-0.75 rot ~ ~45
execute as @s[scores={move=279}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^2^^-0.75 rot ~ ~45


camera @s[scores={move=264},type=player] fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=264}] at @s run camera @a[tag=dempseyrolled,r=8,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=259},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^-1.25^5 rot ~-25 ~180
execute as @s[scores={move=259}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^^-1.25^5 rot ~-25 ~180


camera @s[scores={move=205},type=player] fade time 0.2 0.1 0.15 color 0 0 0
execute as @s[scores={move=205}] at @s run camera @a[tag=dempseyrolled,r=8,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=210}] at @s run playsound music.bass3 @a[r=5] ~~~ 999999 0.8 999999
execute as @s[scores={move=200},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-0.55^-0.35^0.65 rot ~ ~187
execute as @s[scores={move=200}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-0.55^-0.35^0.65 rot ~ ~187

scoreboard players set @s[scores={move=161..162}] atk 2
execute as @s[scores={move=161}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=161}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=161}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.82 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=162},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=162}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=161}] at @s run function damages/blunt_damage


scoreboard players set @s[scores={move=156..157}] atk 2
execute as @s[scores={move=156}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=156}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=156}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.95 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=157},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=157}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

scoreboard players set @s[scores={move=151..152}] atk 2
execute as @s[scores={move=151}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=151}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=151}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.9 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=152},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=152}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

scoreboard players set @s[scores={move=146..147}] atk 2
execute as @s[scores={move=146}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=146}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=146}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 3 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=147},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=147}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

scoreboard players set @s[scores={move=140..141}] atk 2
execute as @s[scores={move=140}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=140}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=140}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.69 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=141},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=141}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

scoreboard players set @s[scores={move=135..136}] atk 2
execute as @s[scores={move=135}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=135}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=135}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.62 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=136},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=136}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

scoreboard players set @s[scores={move=129..130}] atk 2
execute as @s[scores={move=129}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=129}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=129}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.5 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=130},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=130}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

scoreboard players set @s[scores={move=124..125}] atk 2
execute as @s[scores={move=124}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=124}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=124}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=124}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Hit 2
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.8 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=125},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=125}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

scoreboard players set @s[scores={move=119..120}] atk 2
execute as @s[scores={move=119}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=119}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=119}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=119}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Hit 2
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.62 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=120},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=120}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

scoreboard players set @s[scores={move=113..114}] atk 2
execute as @s[scores={move=113}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=113}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=113}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=113}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Hit 2
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.67 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=114},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=114}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

scoreboard players set @s[scores={move=106..107}] atk 2
execute as @s[scores={move=106}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 1 5 true
execute as @s[scores={move=106}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 1 override entity @s
execute as @s[scores={move=106}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 1
execute as @s[scores={move=106}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Hit 2
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.77 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=107},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=107}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

camera @s[scores={move=105},type=player] fade time 0.2 0.25 0.2 color 0 0 0
execute as @s[scores={move=105}] at @s run camera @a[tag=dempseyrolled,r=8,c=1] fade time 0.2 0.25 0.2 color 0 0 0
execute as @s[scores={move=100},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^1.35^-3 rot ~25 ~
execute as @s[scores={move=100}] at @s anchored eyes run camera @a[tag=dempseyrolled,r=8,c=1] set minecraft:free pos ^^1.35^-3 rot ~25 ~

scoreboard players random @s[scores={move=82},tag=!heavenlyrestriction] blackflashchance 1 128
scoreboard players set @s[scores={move=82},tag=blackflashrig,tag=!heavenlyrestriction] blackflashchance 7

scoreboard players set @s[scores={move=81..82}] atk 2
execute as @s[scores={move=81..100}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] resistance 0 20 true
execute as @s[scores={move=81}] at @s run effect @e[tag=dempseyrolled,r=8,c=1] levitation 2 1 true
execute as @s[scores={move=81}] at @s run damage @e[tag=dempseyrolled,r=8,c=1] 30 override entity @s
execute as @s[scores={move=81}] at @s run tag @e[tag=dempseyrolled,r=8,c=1] add hardknockback
execute as @s[scores={move=81}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Evade 22
execute as @s[scores={move=81}] at @s run scoreboard players add @e[tag=dempseyrolled,r=8,c=1] Hit 12
execute as @s[scores={move=81}] at @s run scoreboard players operation @e[tag=dempseyrolled,r=8,c=1] damage += @s damageadd
execute as @s[scores={move=81}] at @s run scoreboard players set @e[tag=dempseyrolled,r=8,c=1] knockdown 95
execute as @s[scores={move=81}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 0.77 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound mob.bullet @a[r=50] ~~~ 99999 0.77 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.37 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 0.57 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 0.47 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 0.37 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:heavy_impact5 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:ground_slam2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:ground_slam2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:ground_slam3 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,r=8,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=80}] at @s run camera @a[tag=dempseyroll,r=8,c=1] clear
execute as @s[scores={move=80}] at @s run tag @e[tag=dempseyrolled,r=8,c=1] remove dempseyrolled
camera @s[scores={move=75},type=player] fade time 0.25 0.25 0.25 color 0 0 0

execute as @s[scores={move=81}] at @s run function damages/blunt_damage


execute as @s[scores={move=86}] at @s run playsound mob.wither.shoot @a[r=5] ~~~ 99999 0.5 99999
title @s[scores={move=86},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=86}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=85},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=85}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=84},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=84}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=83},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=83}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=82},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=82}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=81},tag=!impactframesoff,type=player] title 
execute as @s[scores={move=81}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=8,c=1] title 
title @s[scores={move=70..80},tag=!impactframesoff,type=player] title §l
execute as @s[scores={move=70..80}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,r=30,c=1] title §l

execute as @s[scores={move=60..65}] at @s run scoreboard players set @s move 2
execute as @s[scores={move=1..2}] at @s run tag @e[tag=dempseyrolled,r=30,c=1] remove dempseyrolled
