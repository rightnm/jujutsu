playanimation @s[scores={move=55}] animation.finger_bearer.kick_shoot
effect @s[scores={move=16..}] speed 1 4 true

execute as @s[scores={move=1..50}] at @s run tp @s ~~~

scoreboard players set @s[scores={Stun=1..,move=51..}] move 3

execute as @s[scores={move=50}] at @s run function damages/blunt_damage
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Stun 50
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] knockdown 95
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Evade 12
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run scoreboard players add @e[r=2.249,tag=!Frames] Hit 8
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run effect @e[r=2.249,tag=!Frames] slow_falling 2 1 true
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run damage @e[r=2.249,tag=!Frames] 6 entity_attack entity @s
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run playsound random.explode @a[r=90] ~~~ 90 1.85 90
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run playsound random.explode @a[r=90] ~~~ 90 1.5 90
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run playsound mob.wither.shoot @a[r=90] ~~~ 90 1 90
execute as @s[scores={move=50}] at @s positioned ^^^2.25 run camerashake add @a[r=30] 2 0.25



scoreboard players set @s[type=ds:finger_bearer,scores={chance=8,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 55
execute as @s[scores={move=49}] at @s run particle ds:ground_slam2 ^^1^
execute as @s[scores={move=49}] at @s run particle ds:ground_slam1 ^^1^
execute as @s[scores={move=49}] at @s run particle ds:leap ^^1^
execute as @s[scores={move=49}] at @s run particle ds:dirt0

execute as @s[scores={move=49..50}] at @s positioned ^^^2.25 run tag @e[r=2.249,tag=!Frames,c=1] add kickshot

execute as @s[scores={move=49}] at @s positioned ^^^2.25 run tp @e[r=2.249,tag=!Frames] ~~9~

execute as @s[scores={move=1..48}] at @s positioned ^^^2.25 run tp @e[tag=kickshot,r=20] ~~9~

execute as @s[scores={move=5..35}] at @s positioned ^^^2.25 run camera @a[tag=kickshot] set minecraft:free pos ^ ^-8 ^20 rot ~165 ~180
execute as @s[scores={move=1..35}] at @s positioned ^^^2.25 run  scoreboard players set @a[r=20] Camera 15

tag @e[scores={Evasive=1..}] remove kickshot


execute as @s[scores={move=4..48}] at @s unless entity @e[tag=kickshot] run playanimation @s animation.stunned i 0.25
execute as @s[scores={move=4..48}] at @s unless entity @e[tag=kickshot] run scoreboard players set @s move 3


execute as @s[scores={move=1..15}] at @s positioned ~~15~ run function damages/rct_damage

execute as @s[scores={move=46}] at @s positioned ~~7~ run playsound beacon.activate @a[r=90] ~~~ 99999 0.55 99999
execute as @s[scores={move=46}] at @s positioned ~~7~ run playsound portal.trigger @a[r=90] ~~~ 99999 2 99999

execute as @s[scores={move=5..15}] at @s positioned ~~7~ run scoreboard players set @e[tag=kickshot,tag=!Frames] Stun 30
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run scoreboard players set @e[tag=kickshot,tag=!Frames] Evade 6
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run scoreboard players set @e[tag=kickshot,tag=!Frames] Hit 8
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run damage @e[tag=kickshot,tag=!Frames] 2 override

execute as @s[scores={move=15}] at @s positioned ~~7~ run playsound mob.shock1 @a[r=90] ~~~ 99999 1.85 99999
execute as @s[scores={move=15}] at @s positioned ~~7~ run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=15}] at @s positioned ~~7~ run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run playsound mob.burn @a[r=90] ~~~ 99999 0.8 99999
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run playsound mob.blaze.shoot @a[r=90] ~~~ 99999 0.45 99999
execute as @s[scores={move=5..15}] at @s positioned ~~7~ run playsound random.fizz @a[r=90] ~~~ 99999 0.85 99999

execute as @s[scores={move=5..15}] at @s positioned ~~7~ run camerashake add @a[r=30] 0.2 0.25
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ~~3~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ~~3~
execute as @s[scores={move=15}] at @s run particle ds:impact1 ~~3~
execute as @s[scores={move=15}] at @s run particle ds:dirt0
execute as @s[scores={move=15}] at @s run particle ds:fingerer_ex1 ~~2~
execute as @s[scores={move=15}] at @s run particle ds:fingerer_ex1 ~~6~
execute as @s[scores={move=15}] at @s run particle ds:fingerer_ex1 ~~10~

execute as @s[scores={move=15}] at @s run title @a[tag=kickshot,r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=14}] at @s run title @a[tag=kickshot,r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=13}] at @s run title @a[tag=kickshot,r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=12}] at @s run title @a[tag=kickshot,r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=11}] at @s run title @a[tag=kickshot,r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=1..11}] at @s run title @a[r=20,c=1,tag=!impactframesoff] title 
execute as @s[scores={move=18}] at @s run camera @a[r=20] fade time 0.2 0.5 0.25 color 255 255 255

execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave1 ~~2.5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave1 ~~5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave1 ~~7.5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave1 ~~10~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave3 ~~2.5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave3 ~~5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave3 ~~7.5~
execute as @s[scores={move=14..15}] at @s run particle ds:finger_shockwave3 ~~10~

execute as @s[scores={move=1..5}] run tag @e[tag=kickshot] remove kickshot



