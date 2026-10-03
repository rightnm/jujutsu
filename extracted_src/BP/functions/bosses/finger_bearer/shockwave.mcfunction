playanimation @s[scores={move=30}] animation.finger_bearer.shockwave

execute as @s[scores={move=3..}] at @s run tp @s ~~~

execute as @s[scores={move=15}] at @s run function damages/explosion_damage

tag @s[scores={move=6..16}] add Frames
tag @s[scores={move=1..5}] remove Frames

execute as @s[scores={move=26}] at @s positioned ~~1~ run playsound beacon.activate @a[r=90] ~~~ 99999 0.85 99999
execute as @s[scores={move=26}] at @s positioned ~~1~ run playsound portal.trigger @a[r=90] ~~~ 99999 4 99999

execute as @s[scores={move=15}] at @s positioned ~~1~ run scoreboard players add @e[r=7.5,tag=!Frames] knockdown 95
execute as @s[scores={move=15}] at @s positioned ~~1~ run scoreboard players add @e[r=7.5,tag=!Frames] Evade 5
execute as @s[scores={move=15}] at @s positioned ~~1~ run scoreboard players add @e[r=7.5,tag=!Frames] Hit 8
execute as @s[scores={move=10..15}] at @s positioned ~~1~ run damage @e[r=7.5,tag=!Frames] 5 override entity @s
execute as @s[scores={move=15}] at @s unless entity @e[scores={ab=1..},r=7,rm=0.2] run summon ds:boss_knockback1
execute as @s[scores={move=14}] at @s positioned ~~1~ run effect @e[r=15] resistance 1 10 true
execute as @s[scores={move=11..13}] at @s positioned ~~1~ run summon ds:red_reversal

execute as @s[scores={move=15}] at @s positioned ~~1~ run playsound mob.shock1 @a[r=90] ~~~ 99999 0.5 99999
execute as @s[scores={move=15}] at @s positioned ~~1~ run playsound beacon.deactivate @a[r=90] ~~~ 99999 0.35 99999
execute as @s[scores={move=15}] at @s positioned ~~1~ run playsound mob.wither.shoot @a[r=90] ~~~ 99999 0.25 99999
execute as @s[scores={move=15}] at @s positioned ~~1~ run playsound mob.burn @a[r=90] ~~~ 99999 0.75 99999

execute as @s[scores={move=1..15}] at @s run title @a[r=33,tag=!impactframesoff] title 

execute as @s[scores={move=15}] at @s positioned ~~1~ run camerashake add @a[r=30] 4 0.35
execute as @s[scores={move=15}] at @s run particle ds:dirt0
execute as @s[scores={move=15}] at @s run particle ds:fingerer_ex1 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave1 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave2 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave3 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave4 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave5 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:finger_shockwave6 ~~1~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam3 ~~~
execute as @s[scores={move=15}] at @s run particle ds:ground_slam4 ~~~
execute as @s[scores={move=15}] at @s run particle ds:leap ~~~
execute as @s[scores={move=15}] at @s unless block ~~-0.5~ air run particle ds:crater2 ~~~
