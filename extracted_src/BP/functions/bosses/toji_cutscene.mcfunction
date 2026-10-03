playanimation @s[scores={Deleter=400..}] animation.toji_awaken
execute as @s[scores={Deleter=400..}] at @s run tp @s ~~~ facing @e[c=1,rm=0.15]

execute as @s[scores={Deleter=400..}] at @s run summon ds:knockback
execute as @s[scores={Deleter=1..}] at @s run tp @s ~~~

execute as @s[scores={Deleter=370}] at @s run execute as @a[r=40] run playsound music.toji_awaken @s ~~~ 0.2 1

tag @s[scores={Deleter=399..}] add Frames

execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[r=20] Camera 5
execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[r=20] Stun 5
execute as @s[scores={Deleter=5..}] at @s run scoreboard players set @e[r=20] Move 5
execute as @s[scores={Deleter=5..395}] at @s run scoreboard players set @e[r=20] Frames 5

execute as @s[scores={Deleter=20..394}] at @s run title @a[r=20,tag=!impactframesoff] title 

execute as @s[scores={Deleter=400}] at @s run camera @a[r=20] fade time 0.25 0.25 0.15 color 0 0 0
execute as @s[scores={Deleter=393}] at @s run camera @a[r=20] set minecraft:free pos ^0.33 ^0.44 ^2 facing ~~0.35~
execute as @s[scores={Deleter=392}] at @s run camera @a[r=20] set minecraft:free ease 5 in_sine pos ^0.33 ^0.44 ^3 facing ~~0.5~

execute as @s[scores={Deleter=280}] at @s run camera @a[r=20] set minecraft:free  pos ^-2.5 ^1.5 ^6 facing ~~5~
execute as @s[scores={Deleter=279}] at @s run camera @a[r=20] set minecraft:free ease 2 in_sine pos ^-2.5 ^2 ^8 facing ~~4.5~

execute as @s[scores={Deleter=215}] at @s run camera @a[r=20] set minecraft:free  pos ^-2 ^1.5 ^8 facing ~~0.5~
execute as @s[scores={Deleter=214}] at @s run camera @a[r=20] set minecraft:free ease 8 in_sine pos ^ ^1.25 ^2.5 facing ~~1.5~

execute as @s[scores={Deleter=300}] at @s run particle ds:toji_awaken_text1 ^2^1^
execute as @s[scores={Deleter=260}] at @s run particle ds:toji_awaken_text2 ^-1.25^2.5^2

execute as @s[scores={Deleter=220}] at @s run camera @a[r=20] fade time 0.1 0.15 0.25 color 0 0 0


execute as @s[scores={Deleter=279..280}] at @s run particle ds:toji_awaken_jump ~~0.15~
execute as @s[scores={Deleter=279..280}] at @s run playsound random.splash @a[r=20] ~~~ 9999 1 9999
execute as @s[scores={Deleter=279..280}] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={Deleter=220}] at @s run tp @s ~ ~ ~ facing @e[type=!item,family=!projectile,type=!xp_orb,c=1,r=20]

execute as @s[scores={Deleter=80..185}] at @s run tp @s ^^^0.0085

execute as @s[scores={Deleter=220..}] at @s run playsound random.swim @a ~~~ 0.05 0.7

execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken1
execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken2
execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken3
execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken4 ~~0.1~
execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken5
execute as @s[scores={Deleter=220..}] at @s run particle ds:toji_awaken6

execute as @s[scores={Deleter=40}] at @s run camera @a[r=60] fade time 0.5 0.5 0.5 color 0 0 0
execute as @s[scores={Deleter=40}] at @s run execute as @a[r=60] at @s run playsound music.prowess @s ~~~ 0.5 1

execute as @s[scores={Deleter=20}] at @s run summon ds:toji_reawakened
execute as @s[scores={Deleter=20}] at @s run tp @s ~~-50~
execute as @s[scores={Deleter=10}] at @s run kill @s