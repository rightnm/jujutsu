execute as @s at @s run tp @s ^^^2 facing ^^^20
effect @s instant_health 1 20 true
effect @s resistance 1 20 true
playanimation @s animation.extermination.slice

execute as @s at @s run function damages/slash_damage

execute as @s[scores={Deleter=1..}] at @s positioned ^-3.5^^-1 unless block ~~-1~ air run particle ds:sprint

execute as @s[scores={Deleter=1..2}] at @s run kill @s

execute as @s  if entity @e[tag=griefable] positioned ^2.5^2^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s if entity @e[tag=griefable] positioned ^^^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s if entity @e[tag=griefable]  positioned ^1^1^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^2^1.5^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^-1^^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^-1^-0.5^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^1^0.5^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^-2^-1.5^ run fill ^^^2 ^^^-1 air [] destroy
execute as @s  if entity @e[tag=griefable] positioned ^-2.5^-2^ run fill ^^^2 ^^^-1 air [] destroy

execute as @s at @s run camerashake add @a[r=20] 0.1 0.1
execute as @s at @s run damage @e[r=6,tag=!Frames,type=!ds:knockback,type=!ds:projectile] 12 entity_attack entity @s
execute as @s at @s run damage @e[r=6,tag=!Frames,type=!ds:knockback,type=!ds:projectile,family=purecurse] 24 suicide entity @s
execute as @s at @s run scoreboard players set @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Stun 15
execute as @s at @s run scoreboard players set @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Hit 3
execute as @s at @s run scoreboard players add @e[r=3,tag=!Frames,type=!ds:knockback,type=!ds:projectile] Evade 8

execute as @s[scores={Deleter=4..}] at @s unless block ^^^2 air run scoreboard players set @s Deleter 3

