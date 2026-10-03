playanimation @s[scores={move=25..26}] animation.bluelemon.final_strike
tag @s[scores={move=25..26}] add wep5

execute as @s[scores={move=17..26}] at @s run particle ds:adolla1 ~~1~
execute as @s[scores={move=17..26}] at @s run particle ds:adolla2 ~~1~
execute as @s[scores={move=17..26}] at @s run particle ds:turbo_intensity2 ~~1~
execute as @s[scores={move=17..26}] at @s run particle ds:turbo_intensity3 ~~1~
execute as @s[scores={move=17..26}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=25}] at @s run playsound mob.turbulence @a[r=50] ~~~ 99999 1.25 99999

scoreboard players set @s[scores={move=100..}] Camera 5
scoreboard players set @s Move 5
scoreboard players set @s Frames 5

execute as @s[scores={move=5..16}] at @s run tp @s @s
execute as @s[scores={move=16}] at @s positioned ^^^4.1 run scoreboard players set @s atk 2
execute as @s[scores={move=15}] at @s positioned ^^^4.1 run tag @e[tag=!Frames,r=4,family=!heroic,c=1] add finalstrike
execute as @s[scores={move=15}] at @s positioned ^^^4.1 run playanimation @e[tag=!Frames,r=4,family=!heroic,c=1] animation.stunned2
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:flowingwater_burst1 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:flowingwater_burst2 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:flowingwater_burst3 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:pushed_up1 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:large_impact1 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run particle ds:large_impact2 ^^1^1 
execute as @s[scores={move=15}] at @s positioned ^^^4.1 if entity @e[tag=!Frames,r=4,family=!heroic,c=1] run playsound mob.shock1 @a[r=100] ~~1~ 99999 2 99999
execute as @s[scores={move=15}] at @s positioned ^^^4.1 run tp @e[tag=!Frames,r=4,family=!heroic,c=1] ^^25^7
execute as @s[scores={move=15}] at @s positioned ^^^4.1 run  camerashake add @a[r=20] 3 0.25
execute as @s[scores={move=12..15}] at @s if entity @e[tag=finalstrike,r=100] run scoreboard players set @s move 1001

scoreboard players set @s[scores={move=800..860}] move 3
tag @s[scores={move=1..3}] remove wep5

execute as @e[tag=finalstrike] at @s run tp @s @s

playanimation @s[scores={move=1000..1001}] animation.bluelemon.final_strike2

execute as @s[scores={move=990}] at @s run particle ds:leap
execute as @s[scores={move=990}] at @s run particle ds:rubble
execute as @s[scores={move=990}] at @s run particle ds:flowingwater_burst1
execute as @s[scores={move=990}] at @s run particle ds:flowingwater_burst2
execute as @s[scores={move=990}] at @s run particle ds:flowingwater_burst3
execute as @s[scores={move=990}] at @s run particle ds:dirt0
execute as @s[scores={move=990}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=990}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={move=990}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999

execute as @s[scores={move=990}] at @s run tp @s ^^25^5
execute as @s[scores={move=920..990}] at @s run tp @e[tag=finalstrike,c=1] ^^^2 facing @s
execute as @s[scores={move=910..919}] at @s run tp @s ^^0.3^0.15

execute as @s[scores={move=922..990}] at @s run playanimation @e[tag=finalstrike,c=1] animation.stunned
execute as @s[scores={move=922..}] at @s run scoreboard players set @e[tag=finalstrike,c=1] Stun 100
execute as @s[scores={move=922..990}] at @s run scoreboard players set @e[tag=finalstrike,c=1] Hit 1
execute as @s[scores={move=922..990}] at @s run tp @s ^^^0.05
execute as @s[scores={move=100..921}] at @s run tp @s ~~~

execute as @s[scores={move=920..990}] at @s run camera @a[r=5] set minecraft:free pos ^7^1^1 facing ^^1^1  
execute as @s[scores={move=880..919}] at @s run camera @a[r=5] set minecraft:free pos ^4^-1.5^ facing ^^^

execute as @s[scores={move=1000}] at @s run playsound mob.strike @a ~~~ 9999 0.9 9999

execute as @s[scores={move=990}] at @s run camerashake add @a[r=100] 0.4 5.5
execute as @s[scores={move=981}] at @s run playsound mob.strike @a ~~~ 9999 1.15 9999
execute as @s[scores={move=886..910}] at @s run particle ds:blue_star ~~1.5~
execute as @s[scores={move=886..915}] at @s run camerashake add @a[r=20] 0.2 0.15
execute as @s[scores={move=886..915}] at @s run tp @e[tag=finalstrike,c=1] ~~~
execute as @s[scores={move=886..925}] at @s run scoreboard players set @e[tag=finalstrike,c=1] knockdown 90
execute as @s[scores={move=886}] at @s run particle ds:flowingwater_up1
execute as @s[scores={move=886}] at @s run particle ds:flowingwater_up2
execute as @s[scores={move=886}] at @s run particle ds:demons_descent1
execute as @s[scores={move=886}] at @s run particle ds:demons_descent2
execute as @s[scores={move=886}] at @s run particle ds:demons_descent3
execute as @s[scores={move=886}] at @s run particle ds:demons_descent4
execute as @s[scores={move=886}] at @s run particle ds:demons_descent5
execute as @s[scores={move=886}] at @s run particle ds:demons_descent6
execute as @s[scores={move=886}] at @s run particle ds:flowingwater_burst1
execute as @s[scores={move=886}] at @s run particle ds:flowingwater_burst2
execute as @s[scores={move=886}] at @s run particle ds:flowingwater_burst3
execute as @s[scores={move=880..886}] at @s run particle ds:blue_tint ~~1~
execute as @s[scores={move=886}] at @s run  playsound mob.wither.break_block @a ~~~ 9999 2 9999
execute as @s[scores={move=886}] at @s run  playsound mob.wither.break_block @a ~~~ 9999 0.75 9999
execute as @s[scores={move=886}] at @s run particle ds:dirt0
execute as @s[scores={move=886}] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=886}] at @s run summon gg:impact_frame
execute as @s[scores={move=886}] at @s run particle ds:invert
execute as @s[scores={move=886}] at @s run  particle ds:azure_fire3 ~~-5~
execute as @s[scores={move=886}] at @s run  particle ds:azure_fire3 ~~-10~
execute as @s[scores={move=886}] at @s run  particle ds:azure_fire3 ~~-15~
execute as @s[scores={move=886..905}] at @s run particle ds:adolla1 ~~1~
execute as @s[scores={move=886..905}] at @s run particle ds:adolla2 ~~1~
execute as @s[scores={move=886..905}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=886}] at @s run tp @e[tag=finalstrike,c=1] ~~-15~

execute as @s[scores={move=886}] at @s if entity @p[tag=griefable] run effect @e[r=70] resistance 1 10
execute as @s[scores={move=886}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~-5~
execute as @s[scores={move=886}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~-10~
execute as @s[scores={move=886}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~-15~
execute as @s[scores={move=886}] at @s if entity @p[tag=griefable] run summon ds:red_reversal ~~-20~
execute as @s[scores={move=886}] at @s run damage @e[tag=finalstrike,c=1] 400 suicide
execute as @s[scores={move=886}] at @s run tag @e remove finalstrike

execute as @s[scores={move=850..869}] at @s run camera @a[r=45] clear
execute as @s[scores={move=870..887}] at @s run camera @a[r=30] set minecraft:free pos ^1^3^1 facing ~~-20~


execute as @s[scores={move=100..860}] at @s run tag @e remove finalstrike


