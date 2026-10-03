playanimation @s[scores={cutscene=126..}] animation.finger_bearer.phase

effect @s resistance 1 20 true
execute as @s run tp @s @s

execute as @s[scores={cutscene=5..130}] at @s run effect @e[type=!item,type=!player,r=30] slowness 1 50 true
execute as @s[scores={cutscene=5..130}] at @s run scoreboard players set @e[type=!item,r=30] Disabled 3
execute as @s[scores={cutscene=5..130}] at @s run scoreboard players set @e[type=!item,r=30] Disabled2 3
execute as @s[scores={cutscene=5..130}] at @s run scoreboard players set @e[type=!item,r=30] Frames 3
execute as @s[scores={cutscene=5..130}] at @s run scoreboard players set @e[type=!item,r=30] Move 5
execute as @s[scores={cutscene=8..130}] at @s run scoreboard players set @e[type=!item,r=30] Camera 9

execute as @s[scores={cutscene=126}] at @s positioned ~~1~ run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={cutscene=126}] at @s positioned ~~1~ run playsound portal.trigger @a[r=90] ~~~ 99999 4 99999


execute as @s[scores={cutscene=129..}] at @s anchored eyes run camera @a[r=30] set minecraft:free ease 0.5 in_out_circ pos ^ ^-1.25 ^4 rot ~-15 ~180
execute as @s[scores={cutscene=117}] at @s anchored eyes run camera @a[r=30] set minecraft:free ease 1 in_sine pos ^ ^ ^2 rot ~ ~180

execute as @s[scores={cutscene=91..}] at @s run particle ds:finger_awaken7 ~~1.2~
execute as @s[scores={cutscene=91..}] at @s run particle ds:finger_awaken6 ~~1.2~
execute as @s[scores={cutscene=91..120}] at @s run particle ds:finger_shockwavecharge1 ~~1.2~
execute as @s[scores={cutscene=91..120}] at @s run particle ds:finger_shockwavecharge2 ~~1.2~
execute as @s[scores={cutscene=91..120}] at @s run particle ds:finger_shockwavecharge3 ~~1.2~

execute as @s[scores={cutscene=65..90}] at @s run particle ds:finger_awaken1 ~~1.2~
execute as @s[scores={cutscene=65..90}] at @s run particle ds:finger_awaken2 ~~1.2~
execute as @s[scores={cutscene=65..90}] at @s run particle ds:finger_awaken3 ~~1.2~
execute as @s[scores={cutscene=65..90}] at @s run particle ds:finger_awaken4 ~~1.2~
execute as @s[scores={cutscene=65..90}] at @s run particle ds:finger_awaken5 ~~1.2~
execute as @s[scores={cutscene=65..90}] at @s run damage @e[r=10,rm=0.5] 1 override 

execute as @s[scores={cutscene=55..56}] at @s unless block ~~-1~ air run particle ds:crater4 ~~~
execute as @s[scores={cutscene=55..77}] at @s unless block ~~-1~ air run particle ds:large_slam1 ~~~
execute as @s[scores={cutscene=55..77}] at @s unless block ~~-1~ air run particle ds:large_slam2 ~~~
execute as @s[scores={cutscene=55..77}] at @s unless block ~~-1~ air run particle ds:large_slam1 ~~~
execute as @s[scores={cutscene=55..56}] at @s unless block ~~-1~ air run particle ds:dirt0
execute as @s[scores={cutscene=55..56}] at @s unless block ~~-1~ air run particle ds:ground_slam2 ~~~
execute as @s[scores={cutscene=55..56}] at @s unless block ~~-1~ air run particle ds:impact1 

execute as @s[scores={cutscene=45..56}] at @s run scoreboard players set @e[type=ds:projectile,r=50,scores={Deleter=9..}] Deleter 7

execute as @s[scores={cutscene=1..}] at @s run title @a[r=30,tag=!impactframesoff] title 

execute as @s[scores={cutscene=55..90}] at @s run camerashake add @a[r=60] 4 0.15

execute as @s[scores={cutscene=100}] at @s run camera @a[r=30] fade time 0.5 0.25 0.25 color 255 255 255

execute as @s[scores={cutscene=66}] at @s run camera @a[r=30] fade time 0.5 0.25 0.25 color 0 0 0


execute as @s[scores={cutscene=65..90}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.25 99999
execute as @s[scores={cutscene=55..90}] at @s run playsound mob.burn @a[r=200] ~~~ 99999 1 99999
execute as @s[scores={cutscene=85..90}] at @s run playsound mob.shock1 @a[r=200] ~~~ 99999 0.35 99999


execute as @s[scores={cutscene=80}] at @s anchored eyes run camera @a[r=30] set minecraft:free pos ^7 ^15 ^22 rot ~40 ~160

execute as @s[scores={cutscene=47}] at @s anchored eyes run camera @a[r=30] set minecraft:free pos ^-9 ^-0.5 ^4 rot ~-3 ~-120
execute as @s[scores={cutscene=45}] at @s anchored eyes run camera @a[r=30] set minecraft:free ease 2 in_sine pos ^-12 ^-0.5 ^5 rot ~-3 ~-110

execute as @s[scores={cutscene=1..15}] at @s run tag @s add serious
execute as @s[scores={cutscene=15}] at @s run camera @a[r=30] fade time 0.7 0.25 0.25 color 0 0 0 

execute as @s[scores={cutscene=1..5}] at @s run tag @s remove phase2cutscene