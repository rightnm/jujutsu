execute as @s[name=twilight,tag=!Stopped,scores={Deleter=25..}] at @s run tp @s ^^^1.5 facing @e[name=twilightTRG,c=1]
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=1..24}] at @s run tp @s ^^^2.2 facing @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,c=1]

execute as @s[name=twilight,tag=!Stopped,scores={Deleter=26..}] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,c=1,r=40] run scoreboard players set @s Deleter 25
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=4..}] at @s if entity @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,c=1,r=2] run scoreboard players set @s Deleter 3
playanimation @s animation.twilight_blue

tag @s[tag=!GojoProj] add GojoProj

function damages/pull_damage

execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:lapse_pull2 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run playsound random.fizz @a[r=70] ~~~ 9999 5 9999
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run playsound beacon.deactivate @a[r=70] ~~~ 99999 2 9999
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:heavy_impact1 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:heavy_impact3 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:twilight_ex1 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:twilight_ex2 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run particle ds:twilight_ex3 ~~1.5~
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run damage @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,r=3] 8 override
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run scoreboard players set @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,r=3] Stun 25
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run scoreboard players add @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,r=3] Hit 2
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=2}] at @s run scoreboard players add @e[tag=!Frames,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!limitless,type=!bat,r=3] Evade 4
execute as @s[name=twilight,tag=!Stopped,scores={Deleter=1}] at @s run kill @s

