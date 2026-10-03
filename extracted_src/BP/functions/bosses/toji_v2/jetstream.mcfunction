playanimation @s[scores={move=58..}] animation.toji.jetstream

effect @s slowness 1 9 true

scoreboard players set @e[tag=jetstream] Move 5
scoreboard players set @e[tag=jetstream] Camera 5

execute as @s[scores={move=60}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @s ~~~ facing @e[type=ds:toji_reawakened,c=1]
execute as @s[scores={move=60}] at @s run tp @s ~~~ facing @e[tag=jetstream,c=1]

execute as @s[scores={move=60}] at @s run tag @e[tag=!Frames,type=!ds:toji_reawakened,type=!item,family=!projectile,family=!damage,family=!despawncito,type=!ds:dash,type=!ds:lapse_explode,type=!arrow,type=!xp_orb,r=46,c=1] add jetstream
execute as @s[scores={move=60}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @e[type=ds:toji_reawakened,c=1,scores={move=1..60}] ~5~~-9 facing @s
execute as @s[scores={move=40..43}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @s ~~~ facing @e[type=ds:toji_reawakened,c=1,scores={move=1..60}]
execute as @s[scores={move=30..33}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @s ~~~ facing @e[type=ds:toji_reawakened,c=1,scores={move=1..60}]
execute as @s[scores={move=22..26}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @s ~~~ facing @e[type=ds:toji_reawakened,c=1,scores={move=1..60}]
execute as @s[scores={move=1..}] at @s run execute as @e[tag=jetstream,c=1] at @s anchored eyes run camera @s set minecraft:free ease 0.08 in_sine pos ^1^1^-2 facing @e[type=ds:toji_reawakened]

#start
execute as @s[scores={move=40..44}] at @s run titleraw @a[tag=jetstream,c=1] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}

execute as @s[scores={move=40..43}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] add parried

execute as @s[scores={move=40..44}] at @s run scoreboard objectives add clash dummy
execute as @s[scores={move=40..44}] at @s run scoreboard players set @s clash 2

execute as @s[scores={move=40}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact1 ~~1~
execute as @s[scores={move=40}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact2 ~~1~
execute as @s[scores={move=40}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact3 ~~1~
execute as @s[scores={move=40}] at @s run execute as @e[tag=parried,c=1] at @s run playsound random.anvil_land @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=40}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry1 ~~1.25~
execute as @s[scores={move=40}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry2 ~~1.25~
execute as @s[scores={move=40}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry3 ~~1.25~
execute as @s[scores={move=40}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry4 ~~1.25~
execute as @s[scores={move=40}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Hit 5
execute as @s[scores={move=40}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Stun 15
execute as @s[scores={move=40}] at @s run execute as @e[tag=jetstream,tag=!parried] at @s run playsound mob.sword @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=40}] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=40}] at @s run camerashake add @a[r=30] 0.25 0.15
execute as @s[scores={move=40}] at @s run damage @e[tag=jetstream,tag=!parried] 7 none entity @e[type=ds:toji_reawakened,c=1]
execute as @s[scores={move=40}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @e[type=ds:toji_reawakened,c=1,scores={move=1..60}] ~-5~~9 facing @s

execute as @s[scores={move=38..40}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] remove parried

#start
execute as @s[scores={move=30..34}] at @s run titleraw @a[tag=jetstream,c=1] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}

execute as @s[scores={move=30..33}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] add parried

execute as @s[scores={move=30..34}] at @s run scoreboard objectives add clash dummy
execute as @s[scores={move=30..34}] at @s run scoreboard players set @s clash 2

execute as @s[scores={move=30}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact1 ~~1~
execute as @s[scores={move=30}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact2 ~~1~
execute as @s[scores={move=30}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact3 ~~1~
execute as @s[scores={move=30}] at @s run execute as @e[tag=parried,c=1] at @s run playsound random.anvil_land @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=30}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry1 ~~1.25~
execute as @s[scores={move=30}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry2 ~~1.25~
execute as @s[scores={move=30}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry3 ~~1.25~
execute as @s[scores={move=30}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry4 ~~1.25~
execute as @s[scores={move=30}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Hit 5
execute as @s[scores={move=30}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Stun 15
execute as @s[scores={move=30}] at @s run execute as @e[tag=jetstream,tag=!parried] at @s run playsound mob.sword @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=30}] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=30}] at @s run camerashake add @a[r=30] 0.25 0.15
execute as @s[scores={move=30}] at @s run damage @e[tag=jetstream,tag=!parried] 7 none entity @e[type=ds:toji_reawakened,c=1]
execute as @s[scores={move=30}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @e[type=ds:toji_reawakened,c=1,scores={move=1..60}] ~5~~-12 facing @s

execute as @s[scores={move=28..30}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] remove parried

#start
execute as @s[scores={move=22..26}] at @s run titleraw @a[tag=jetstream,c=1] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§r§f§l< §ePUNCH §l§f>\n\n"}]}

execute as @s[scores={move=22..25}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] add parried

execute as @s[scores={move=22..25}] at @s run scoreboard objectives add clash dummy
execute as @s[scores={move=22..25}] at @s run scoreboard players set @s clash 2


execute as @s[scores={move=22}] at @s run execute as @e[tag=parried,c=1] at @s run playsound random.anvil_land @a[r=50] ~~~ 9999 1.5 9999
execute as @s[scores={move=22}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry1 ~~1.25~
execute as @s[scores={move=22}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry2 ~~1.25~
execute as @s[scores={move=22}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry3 ~~1.25~
execute as @s[scores={move=22}] at @s run execute as @e[tag=parried,c=1] at @s run  particle ds:parry4 ~~1.25~
execute as @s[scores={move=22}] at @s run playsound mob.slice @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=22}] at @s run camerashake add @a[r=30] 0.25 0.15
execute as @s[scores={move=22}] at @s run damage @e[tag=jetstream,tag=!parried] 7 none entity @e[type=ds:toji_reawakened,c=1]
execute as @s[scores={move=22}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Hit 5
execute as @s[scores={move=22}] at @s run scoreboard players add @e[tag=jetstream,tag=!parried] Stun 15
execute as @s[scores={move=22}] at @s run execute as @e[tag=jetstream,tag=!parried] at @s run playsound mob.sword @a[r=50] ~~~ 9999 1.6 9999
execute as @s[scores={move=22}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact1 ~~1~
execute as @s[scores={move=22}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact2 ~~1~
execute as @s[scores={move=22}] at @s run execute as @e[tag=jetstream,c=1] at @s run  particle ds:red_impact3 ~~1~
execute as @s[scores={move=22}] at @s run execute as @e[tag=jetstream,c=1] at @s run tp @e[type=ds:toji_reawakened,c=1,scores={move=1..60}] ~-4 ~ ~12 facing @s

execute as @s[scores={move=38..40}] at @s run tag @e[scores={punch=1},tag=jetstream,c=1] remove parried

execute as @s[scores={move=1..20}] at @s run tag @e[tag=jetstream] remove jetstream



