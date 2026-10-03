execute as @s[tag=!NueBoltEX] at @s run tp @s ^^^0.433 facing @e[name=NueBoltTRG,c=1]
execute as @s[tag=!NueBoltEX] at @s run tp @s ^^^0.433 facing @e[name=NueBoltTRG,c=1]
execute as @s[tag=!NueBoltEX] at @s run tp @s ^^^0.433 facing @e[name=NueBoltTRG,c=1]
execute as @s[tag=!NueBoltEX] at @s run tp @s ^^^0.433 facing @e[name=NueBoltTRG,c=1]
execute as @s[tag=!NueBoltEX] at @s run tp @s ^^^0.433 facing @e[name=NueBoltTRG,c=1]

execute as @s at @s run playsound mob.electricity @a ~~~ 100000 1.15 100000
execute as @s at @s run particle ds:nue_bolt1 ~~~
execute as @s at @s run particle ds:nue_bolt2 ~~~
execute as @s at @s run particle ds:nue_bolt3 ~~~
execute as @s at @s run particle ds:nue_bolt4 ~~~

execute as @s[tag=NueBoltEX] at @s run  function damages/explosion_damage
execute as @s[tag=NueBoltEX] at @s run  function damages/electric_damage

execute as @s at @s unless block ~~-0.25~ air run tag @s add NueBoltEX
execute as @s at @s if entity @e[type=!ds:projectile,family=!shikigami,tag=!Frames,r=3,family=!nue] run tag @s add NueBoltEX

execute as @s[tag=NueBoltEX] at @s run playsound mob.electricity @a ~~~ 100000 0.5 100000
execute as @s[tag=NueBoltEX] at @s run playsound mob.electricity @a ~~~ 100000 0.85 100000
execute as @s[tag=NueBoltEX] at @s run camerashake add @a[r=40] 2 0.15
execute as @s[tag=NueBoltEX] at @s run effect @a[r=40] night_vision 1 1 true
execute as @s[tag=NueBoltEX] at @s run particle ds:nue_boltex1 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:nue_boltex2 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:nue_boltex3 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:nue_boltex4 ~~~
execute as @s[tag=NueBoltEX] at @s run damage @e[type=!ds:projectile,family=!shikigami,tag=!Frames,r=7] 16 entity_attack entity @s
execute as @s[tag=NueBoltEX] at @s run scoreboard players add @e[type=!ds:projectile,family=!shikigami,tag=!Frames,r=7] Stun 40
execute as @s[tag=NueBoltEX] at @s run scoreboard players add @e[type=!ds:projectile,family=!shikigami,tag=!Frames,r=7] shocked 35
execute as @s[tag=NueBoltEX] at @s run scoreboard players add @e[type=!ds:projectile,family=!shikigami,tag=!Frames,r=7] Evade 16
execute as @s[tag=NueBoltEX] at @s run playsound random.explode @a ~~~ 100000 1 100000
execute as @s[tag=NueBoltEX] at @s run playsound random.explode @a ~~~ 100000 0.75 100000
execute as @s[tag=NueBoltEX] at @s run playsound random.explode @a ~~~ 100000 0.5 100000
execute as @s[tag=NueBoltEX] at @s run playsound mob.lightningexplode @a ~~~ 100000 0.5 100000
execute as @s[tag=NueBoltEX] at @s run playsound random.fizz @a ~~~ 100000 0.85 100000
execute as @s[tag=NueBoltEX] at @s run summon ds:bolt_explode
execute as @s[tag=NueBoltEX] at @s run particle ds:smoke
execute as @s[tag=NueBoltEX] at @s run particle ds:ground_slam1 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:ground_slam2 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:ground_slam3 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:ground_slam4 ~~~
execute as @s[tag=NueBoltEX] at @s run particle ds:leap
execute as @s[tag=NueBoltEX] at @s run particle ds:dirt2
execute as @s[tag=NueBoltEX] at @s run summon ds:red_reverse
execute as @s[tag=NueBoltEX] at @s run kill @s