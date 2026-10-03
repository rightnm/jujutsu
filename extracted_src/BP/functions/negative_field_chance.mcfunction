summon ds:projectile negativefieldchance
scoreboard players set @e[name=negativefieldchance,c=1] Deleter 5
scoreboard players random @e[name=negativefieldchance,c=1] chance 2 3
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run summon ds:negative_field ~~1.5~
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run execute as @e[type=ds:negative_field,c=1,rm=2] at @s run particle ds:negative_area_build1 ~~1~
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run execute as @e[type=ds:negative_field,c=1,rm=2] at @s run particle ds:negative_area_build2 ~~1~
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run execute as @e[type=ds:negative_field,c=1,rm=2] at @s run playsound particle.soul_escape @a[r=100] ~~~ 9999 0.5 9999
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run execute as @e[type=ds:negative_field,c=1,rm=2] at @s run playsound mob.wither.hurt @a[r=100] ~~~ 9999 1.5 9999
execute as @e[name= negativefieldchance,scores={chance=2..}] at @s run execute as @e[type=ds:negative_field,c=1,rm=2] at @s run camerashake add @a[r=33] 2 0.15
kill @e[name=negativefieldchance,c=1]

scoreboard players add @e[type=ds:negative_field,r=33] negative_field 5
scoreboard players set @e[type=ds:negative_field,r=33] negative_field_timer 600
