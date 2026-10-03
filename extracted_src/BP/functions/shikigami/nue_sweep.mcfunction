execute as @s at @s run tp @s ^^^1.33 facing ^^^20
effect @s instant_health 1 20 true
effect @s resistance 1 20 true

execute as @s at @s run function damages/air_damage

execute as @s[scores={Deleter=5..}] at @s run tp @e[tag=nuefly,c=1] ^^-0.5^-2.5
execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-50~
execute as @s[scores={Deleter=1..3}] at @s run tag @e[tag=nuefly] remove nuefly

execute as @s[scores={Deleter=1..2}] at @s run kill @s
execute as @s[scores={Deleter=1..8}] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s at @s run camerashake add @a[r=20] 0.15 0.1
execute as @s at @s run damage @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nue,tag=!nuefly] 8 entity_attack entity @s
execute as @s at @s run scoreboard players set @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nue,tag=!nuefly] Stun 35
execute as @s at @s run scoreboard players add @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nue,tag=!nuefly] Evade 6
execute as @s at @s if entity @e[r=6,tag=!Frames,family=!shikigami.,family=!nue,type=!ds:knockback,type=!ds:projectile,type=!ds:nue,tag=!nuefly] run summon ds:knockback

