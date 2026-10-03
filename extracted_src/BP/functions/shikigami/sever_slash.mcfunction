execute as @s at @s run tp @s ^^^2.33 facing ^^^20
effect @s instant_health 1 20 true
effect @s resistance 1 20 true
playanimation @s animation.sever_slash

execute as @s at @s run function damages/slash_damage
execute as @s[scores={Deleter=1..}] at @s run particle ds:sever_slash4 ~~~
execute as @s[scores={Deleter=1..}] at @s run particle ds:sever_slash5 ~~~

execute as @s[scores={Deleter=1..}] at @s positioned ^-3.5^^-1 unless block ~~-1~ air run particle ds:sprint

execute as @s[scores={Deleter=1..2}] at @s run kill @s
execute as @s at @s run camerashake add @a[r=20] 0.1 0.1
execute as @s at @s run damage @e[r=7,tag=!Frames,type=!ds:knockback,type=!ds:projectile] 52 entity_attack entity @s
execute as @s at @s run damage @e[r=7,tag=!Frames,type=!ds:knockback,type=!ds:projectile,family=purecurse] 250 entity_attack entity @s
execute as @s at @s run damage @e[r=7,tag=!Frames,type=!ds:knockback,type=!ds:projectile,tag=curse] 250 entity_attack entity @s
execute as @s at @s run scoreboard players set @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Stun 35
execute as @s at @s run scoreboard players set @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Hit 25
execute as @s at @s run scoreboard players add @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Evade 52

