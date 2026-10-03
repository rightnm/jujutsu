scoreboard players set @s Stun 5
tp @s ~~~
summon ds:projectile crystalloot
scoreboard players random @e[name=crystalloot,c=1] chance 1 4
scoreboard players set @e[name=crystalloot,c=1] Deleter 5
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=1}] if entity @a[r=50] run summon ds:undying_crystal_drop ~~1~
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=1}] if entity @a[r=50] run scoreboard players set @e[type=ds:undying_crystal_drop] Deleter 3600
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=1}] if entity @a[r=50] run scoreboard players set @e[type=ds:undying_crystal_drop] itemdrop 1

execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=2}] if entity @a[r=50] run summon ds:rough_crystal_drop ~~1~
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=2}] if entity @a[r=50] run scoreboard players set @e[type=ds:rough_crystal_drop] Deleter 3600
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=2}] if entity @a[r=50] run scoreboard players set @e[type=ds:rough_crystal_drop] itemdrop 1

execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=3}] if entity @a[r=50] run summon ds:blitz_crystal_drop ~~1~
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=3}] if entity @a[r=50] run scoreboard players set @e[type=ds:blitz_crystal_drop] Deleter 3600
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=3}] if entity @a[r=50] run scoreboard players set @e[type=ds:blitz_crystal_drop] itemdrop 1

execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=4}] if entity @a[r=50] run summon ds:cursed_crystal_drop ~~1~
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=4}] if entity @a[r=50] run scoreboard players set @e[type=ds:cursed_crystal_drop] Deleter 3600
execute as @e[name=crystalloot,c=1] at @s if entity @s[scores={chance=4}] if entity @a[r=50] run scoreboard players set @e[type=ds:cursed_crystal_drop] itemdrop 1


damage @s 2 override