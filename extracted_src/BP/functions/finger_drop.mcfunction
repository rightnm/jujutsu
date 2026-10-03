scoreboard players set @s Stun 5
summon ds:projectile fingerdrop
scoreboard players set @e[name=fingerdrop,c=1] Deleter 5
execute as @e[name=fingerdrop,c=1] at @s if entity @a[r=50] run summon ds:sukuna_finger_drop ~~1~-1
execute as @e[name=fingerdrop,c=1] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:sukuna_finger_drop] Deleter 12000
execute as @e[name=fingerdrop,c=1] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:sukuna_finger_drop] itemdrop 1


damage @s 2 suicide