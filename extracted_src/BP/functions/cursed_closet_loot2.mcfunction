scoreboard players set @s Stun 5
tp @s ~~~
execute as @p[r=40,tag=cursed_box_mission] at @s run function missions/rewards/cursed_box_mission2

summon ds:projectile cursed_box_loot
summon ds:projectile cursed_box_loot
summon ds:projectile cursed_box_loot
summon ds:projectile cursed_box_loot
summon ds:projectile cursed_box_loot
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
summon xp_bottle ~~~
scoreboard players random @e[name=cursed_box_loot,c=5] chance 450 1000
scoreboard players set @e[name=cursed_box_loot,c=5] Deleter 5


execute as @e[name=cursed_box_loot,c=1,scores={chance=999}] at @s if entity @a[r=50] run summon ds:sukuna_finger_drop ~~1~-1
execute as @e[name=cursed_box_loot,c=1,scores={chance=999}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:sukuna_finger_drop,c=1] Deleter 12000
execute as @e[name=cursed_box_loot,c=1,scores={chance=999}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:sukuna_finger_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=960..1000}] at @s if entity @a[r=50] run summon ds:inverted_spear_drop ~~1~1
execute as @e[name=cursed_box_loot,c=1,scores={chance=960..1000}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:inverted_spear_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=960..1000}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:inverted_spear_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=910..912}] at @s if entity @a[r=50] run summon ds:soul_sword_drop ~~1~-1
execute as @e[name=cursed_box_loot,c=1,scores={chance=910..912}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:soul_sword_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=910..912}] at @s if entity @a[r=50] run scoreboard players set @e[type=ds:soul_sword_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=850..883}] at @s run summon ds:sharpened_cloud_drop ~1~1~
execute as @e[name=cursed_box_loot,c=1,scores={chance=850..883}] at @s run scoreboard players set @e[type=ds:sharpened_cloud_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=850..883}] at @s run scoreboard players set @e[type=ds:sharpened_cloud_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=884..907}] at @s run summon ds:playful_cloud_drop ~-1~1~
execute as @e[name=cursed_box_loot,c=1,scores={chance=884..907}] at @s run scoreboard players set @e[type=ds:playful_cloud_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=884..907}] at @s run scoreboard players set @e[type=ds:playful_cloud_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=993}] at @s run summon ds:strange_vile_drop ~~1~
execute as @e[name=cursed_box_loot,c=1,scores={chance=993}] at @s run scoreboard players set @e[type=ds:strange_vile_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=993}] at @s run scoreboard players set @e[type=ds:strange_vile_drop,c=1] itemdrop 1


execute as @e[name=cursed_box_loot,c=1,scores={chance=988..989}] at @s run summon ds:dread_bell_drop ~~1~-1
execute as @e[name=cursed_box_loot,c=1,scores={chance=988..989}] at @s run scoreboard players set @e[type=ds:dread_bell_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=988..989}] at @s run scoreboard players set @e[type=ds:dread_bell_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=990..992}] at @s run summon ds:cursed_eye_drop ~~1~-1
execute as @e[name=cursed_box_loot,c=1,scores={chance=990..992}] at @s run scoreboard players set @e[type=ds:cursed_eye_drop,c=1] Deleter 3600
execute as @e[name=cursed_box_loot,c=1,scores={chance=990..992}] at @s run scoreboard players set @e[type=ds:cursed_eye_drop,c=1] itemdrop 1

execute as @e[name=cursed_box_loot,c=1,scores={chance=301..340}] at @s run structure load loot2 ~~~

execute as @e[name=cursed_box_loot,c=1,scores={chance=700..}] at @s run function random_crystal_drop


execute as @e[name=cursed_box_loot,c=1,scores={chance=989}] at @s run structure load diamondblock ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=986..988}] at @s run structure load emeraldblock ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=982..985}] at @s run structure load ironblock ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=976..981}] at @s run structure load goldblock ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=975}] at @s run structure load gapple ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=970..974}] at @s run structure load diamonds3 ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=969}] at @s run structure load netherite ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=451..475}] at @s run structure load trident ~~~
execute as @e[name=cursed_box_loot,c=1,scores={chance=461..480}] at @s run structure load nyoistaff ~~~


execute as @e[name=cursed_box_loot,c=1,scores={chance=451..500}] at @s run loot spawn ~~1~ loot monster_room
execute as @e[name=cursed_box_loot,c=1,scores={chance=501..700}] at @s run loot spawn ~~1~ loot igloo_chest
execute as @e[name=cursed_box_loot,c=1,scores={chance=701..800}] at @s run loot spawn ~~1~ loot jungle_temple
execute as @e[name=cursed_box_loot,c=1,scores={chance=801..850}] at @s run loot spawn ~~1~ loot ruined_portal
execute as @e[name=cursed_box_loot,c=1,scores={chance=851..875}] at @s run loot spawn ~~1~ loot shipwreck
execute as @e[name=cursed_box_loot,c=1,scores={chance=876..890}] at @s run loot spawn ~~1~ loot village_blacksmith
execute as @e[name=cursed_box_loot,c=1,scores={chance=891..900}] at @s run loot spawn ~~1~ loot desert_pyramid
execute as @e[name=cursed_box_loot,c=1,scores={chance=901..905}] at @s run loot spawn ~~1~ loot bastion_treasure
execute as @e[name=cursed_box_loot,c=1,scores={chance=906..908}] at @s run loot spawn ~~1~ loot end_city_treasure

execute as @e[name=cursed_box_loot,c=1,scores={chance=700..}] at @s run loot spawn ~~1~ loot fishtreasure

particle ds:large_impact1 ~~-0.25~
particle ds:large_impact2 ~~-0.25~
playsound random.explode @a[r=500] ~~~ 999999 2 99999
playsound mob.wither.hurt @a[r=500] ~~~ 999999 2 99999
playsound random.levelup @a[r=500] ~~~ 999999 2 99999



scoreboard players random @a[scores={combat=1..},r=50] expadd 500 2000

kill @s