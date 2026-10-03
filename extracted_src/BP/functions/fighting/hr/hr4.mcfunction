playanimation @s[scores={move=350}] animation.dempsey_roll

tag @s[scores={move=1..2}] remove form4

tag @s[scores={move=331..,Stun=1..}] remove form4
scoreboard players set @s[scores={move=331..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..330}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..330}] Camera 4
scoreboard players set @e[tag=dempseyrolled] Camera 4
scoreboard players set @e[tag=dempseyrolled] Move 4
scoreboard players set @e[tag=dempseyrolled] Stun 5

scoreboard players set @a[scores={move=330..331}] atk 2

execute as @s[scores={move=1..9}] at @s run tag @e[tag=dempseyrolled] remove dempseyrolled

execute as @s[scores={move=16..330}] at @s run tp @s @s

execute as @s[scores={move=331}] at @s run function damages/blunt_damage

execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound random.explode @a[r=50] ~~~ 9999 1.1 9999
execute as @s[scores={move=331}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.4 9999
execute as @s[scores={move=332}] at @s anchored eyes run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=330}] at @s positioned ^^^2 run tag @e[r=1.99,tag=!Frames] add dempseyrolled
execute as @s[scores={move=330}] at @s positioned ^^^2 run playanimation @e[r=1.99,tag=!Frames] animation.dempsey_roll2

execute as @s[scores={move=320..329}] at @s unless entity @e[tag=dempseyrolled] run playanimation @s animation.stunned
execute as @s[scores={move=320..329}] at @s unless entity @e[tag=dempseyrolled] run scoreboard players set @s move 2

execute as @s[scores={move=329}] at @s run camera @s fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={move=329}] at @s run camera @a[tag=dempseyrolled,c=1] fade time 0 0.25 0.25 color 0 0 0

execute as @s[scores={move=1..329}] at @s run tp @s @s
execute as @s[scores={move=161..329}] at @s run tp @e[tag=dempseyrolled,c=1] ^^^1.45 facing @s
execute as @s[scores={move=15..160}] at @s run tp @e[tag=dempseyrolled,c=1] ^^^1 facing @s

title @s[scores={move=89..329},tag=!impactframesoff] title 
execute as @s[scores={move=89..320}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 

execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch1 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch2 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run particle ds:punch3 ^^-0.15^1.2
execute as @s[scores={move=329}] at @s anchored eyes run camerashake add @a[r=5] 2 0.15
execute as @s[scores={move=329}] at @s anchored eyes run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.7 99999
execute as @s[scores={move=329}] at @s anchored eyes run playsound random.explode @a[r=50] ~~~ 99999 1.66 99999

execute as @s[scores={move=329}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=329}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=303..323}] at @s anchored eyes run camerashake add @a[r=5] 0.15 0.1

execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact1 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact2 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run particle ds:heavy_impact3 ^^-0.15^1.2
execute as @s[scores={move=300}] at @s anchored eyes run camerashake add @a[r=5] 3 0.2
execute as @s[scores={move=300}] at @s anchored eyes run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.7 99999
execute as @s[scores={move=300}] at @s anchored eyes run playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.66 99999

execute as @s[scores={move=284}] at @s run camera @s fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=284}] at @s run camera @a[tag=dempseyrolled,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=279}] at @s anchored eyes run camera @s set minecraft:free pos ^2^^-0.75 rot ~ ~45
execute as @s[scores={move=279}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^2^^-0.75 rot ~ ~45


execute as @s[scores={move=264}] at @s run camera @s fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=264}] at @s run camera @a[tag=dempseyrolled,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=259}] at @s anchored eyes run camera @s set minecraft:free pos ^^-1.25^5 rot ~-25 ~180
execute as @s[scores={move=259}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^^-1.25^5 rot ~-25 ~180


execute as @s[scores={move=205}] at @s run camera @s fade time 0.2 0.1 0.15 color 0 0 0
execute as @s[scores={move=205}] at @s run camera @a[tag=dempseyrolled,c=1] fade time 0.2 0.1 0.25 color 0 0 0

execute as @s[scores={move=210}] at @s run playsound music.bass3 @a[r=5] ~~~ 999999 0.8 999999
execute as @s[scores={move=200}] at @s anchored eyes run camera @s set minecraft:free pos ^-0.55^-0.35^0.65 rot ~ ~187
execute as @s[scores={move=200}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-0.55^-0.35^0.65 rot ~ ~187

execute as @s[scores={move=161..162}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=161}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=161}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=161}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.82 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=161}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=162}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=162}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=161}] at @s run function damages/blunt_damage


execute as @s[scores={move=156..157}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=156}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=156}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=156}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.95 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=156}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=157}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=157}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=151..152}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=151}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=151}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=151}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.9 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=151}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=152}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=152}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=146..147}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=146}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=146}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=146}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 3 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=146}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=147}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=147}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=140..141}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=140}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=140}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=140}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.69 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=140}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=141}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=141}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=135..136}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=135}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=135}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=135}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.62 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=135}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=136}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=136}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=129..130}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=129}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=129}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=129}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.5 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=129}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=130}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=130}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=124..125}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=124}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=124}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=124}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=124}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Hit 2
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.8 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=124}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=125}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=125}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=119..120}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=119}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=119}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=119}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=119}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Hit 2
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.62 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=119}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=120}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=120}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=113..114}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=113}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=113}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=113}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=113}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Hit 2
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.67 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=113}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=114}] at @s anchored eyes run camera @s set minecraft:free pos ^1.4^^0.7 rot ~ ~90
execute as @s[scores={move=114}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^1.4^^0.7 rot ~ ~90

execute as @s[scores={move=106..107}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=106}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 1 5 true
execute as @s[scores={move=106}] at @s run damage @e[tag=dempseyrolled,c=1] 1 override entity @s
execute as @s[scores={move=106}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 1
execute as @s[scores={move=106}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Hit 2
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound mob.shock1 @a[r=50] ~~~ 99999 2.77 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.87 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run playsound random.explode @a[r=50] ~~~ 99999 1.87 99999
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run camerashake add @a[r=20] 1 0.1
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=106}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=107}] at @s anchored eyes run camera @s set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90
execute as @s[scores={move=107}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^-1.4^^0.7 rot ~ ~-90

execute as @s[scores={move=105}] at @s anchored eyes run camera @s fade time 0.2 0.25 0.2 color 0 0 0
execute as @s[scores={move=105}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] fade time 0.2 0.25 0.2 color 0 0 0
execute as @s[scores={move=100}] at @s anchored eyes run camera @s set minecraft:free pos ^^1.35^-3 rot ~25 ~
execute as @s[scores={move=100}] at @s anchored eyes run camera @p[tag=dempseyrolled,c=1] set minecraft:free pos ^^1.35^-3 rot ~25 ~

execute as @s[scores={move=81..82}] at @s run scoreboard players set @s atk 2
execute as @s[scores={move=81..100}] at @s run effect @e[tag=dempseyrolled,c=1] resistance 0 20 true
execute as @s[scores={move=81}] at @s run effect @e[tag=dempseyrolled,c=1] levitation 2 1 true
execute as @s[scores={move=81}] at @s run damage @e[tag=dempseyrolled,c=1] 30 override entity @s
execute as @s[scores={move=81}] at @s run tag @e[tag=dempseyrolled,c=1] add hardknockback
execute as @s[scores={move=81}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Evade 22
execute as @s[scores={move=81}] at @s run scoreboard players add @e[tag=dempseyrolled,c=1] Hit 12
execute as @s[scores={move=81}] at @s run scoreboard players operation @e[tag=dempseyrolled,c=1] damage += @s damageadd
execute as @s[scores={move=81}] at @s run scoreboard players set @e[tag=dempseyrolled,c=1] knockdown 95
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
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact1 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact3 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:heavy_impact5 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:ground_slam2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:ground_slam2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:ground_slam3 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch1 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch2 ~~1.4~
execute as @s[scores={move=81}] at @s positioned ^^^0.75 run execute as @e[tag=dempseyrolled,c=1] at @s run particle ds:punch3 ~~1.4~
execute as @s[scores={move=80}] at @s run camera @a[tag=dempseyroll,c=1] clear
execute as @s[scores={move=80}] at @s run tag @e[tag=dempseyrolled] remove dempseyrolled
execute as @s[scores={move=75}] at @s run camera @s fade time 0.25 0.25 0.25 color 0 0 0

execute as @s[scores={move=81}] at @s run function damages/blunt_damage


execute as @s[scores={move=86}] at @s run playsound mob.wither.shoot @a[r=5] ~~~ 99999 0.5 99999
title @s[scores={move=86},tag=!impactframesoff] title 
execute as @s[scores={move=86}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=85},tag=!impactframesoff] title 
execute as @s[scores={move=85}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=84},tag=!impactframesoff] title 
execute as @s[scores={move=84}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=83},tag=!impactframesoff] title 
execute as @s[scores={move=83}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=82},tag=!impactframesoff] title 
execute as @s[scores={move=82}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=81},tag=!impactframesoff] title 
execute as @s[scores={move=81}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title 
title @s[scores={move=70..80},tag=!impactframesoff] title §l
execute as @s[scores={move=70..80}] at @s run title @a[tag=!impactframesoff,tag=dempseyrolled,c=1] title §l

execute as @s[scores={move=65}] at @s run scoreboard players set @s move 2
