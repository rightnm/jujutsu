execute as @s run tp @s ^^^2 facing @e[name=SharpenedCloudTRG,c=1] 

execute as @s if entity @e[name=SharpenedCloudTRG,c=1,r=3] run kill @e[family=projectile,r=3.5]

execute as @s[scores={Deleter=4..}] if entity @e[family=!projectile,tag=!Frames,r=2.85] run scoreboard players set @s Deleter 3

execute as @s[scores={Deleter=2}] if entity @e[family=!projectile,tag=!Frames,r=2.85]  run playsound mob.sword @a[r=56] ~~~ 9999 2 9999
execute as @s[scores={Deleter=2}] if entity @e[family=!projectile,tag=!Frames,r=2.85]  run playsound item.trident.throw @a[r=56] ~~~ 9999 2 9999
execute as @s[scores={Deleter=2}] run function damages/slash_damage
execute as @s[scores={Deleter=2}] run execute as @e[family=!projectile,tag=!Frames,r=2.85] at @s run tp @e[scores={Deleter=1..2},type=ds:sharpened_cloud,c=1] ~~1~
execute as @s[scores={Deleter=2}] run damage @e[family=!projectile,tag=!Frames,r=2.85] 20 entity_attack entity @s
execute as @s[scores={Deleter=2}] run scoreboard players set @e[family=!projectile,tag=!Frames,r=2.85] Stun 25
execute as @s[scores={Deleter=2}] run scoreboard players set @e[family=!projectile,tag=!Frames,r=2.85] Hit 3
execute as @s[scores={Deleter=2}] run scoreboard players add @e[family=!projectile,tag=!Frames,r=2.85] Evade 20
execute as @s[scores={Deleter=2}] run tag @e[family=!projectile,tag=!Frames,r=2.85] add SharpenedCloudTRG
execute as @s[scores={Deleter=2}] run scoreboard players operation @e[family=!projectile,tag=!Frames,r=2.85] damagehalf += @e[tag=wep2,scores={move=1..},c=1,tag=sharpenedcloud] damageadd
execute as @s[scores={Deleter=2}] run particle ds:punch1 ~~~
execute as @s[scores={Deleter=2}] run particle ds:punch2 ~~~
execute as @s[scores={Deleter=2}] run particle ds:punch3 ~~~
execute as @s[scores={Deleter=2}] run particle ds:punch4 ~~~