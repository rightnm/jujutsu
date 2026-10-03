playsound particle.soul_escape @s ~~1~ 1 1.2
scoreboard players add @s[hasitem={item=ds:cursed_object_v1,location=slot.weapon.mainhand}] EnergyCap 20
scoreboard players add @s[hasitem={item=ds:cursed_object_v2,location=slot.weapon.mainhand}] EnergyCap 40
scoreboard players add @s[hasitem={item=ds:cursed_object_v3,location=slot.weapon.mainhand}] EnergyCap 60
scoreboard players add @s[hasitem={item=ds:cursed_object_v4,location=slot.weapon.mainhand}] EnergyCap 100
clear @s[hasitem={item=ds:cursed_object_v1,location=slot.weapon.mainhand}] ds:cursed_object_v1 0 1
clear @s[hasitem={item=ds:cursed_object_v2,location=slot.weapon.mainhand}] ds:cursed_object_v2 0 1
clear @s[hasitem={item=ds:cursed_object_v3,location=slot.weapon.mainhand}] ds:cursed_object_v3 0 1
clear @s[hasitem={item=ds:cursed_object_v4,location=slot.weapon.mainhand}] ds:cursed_object_v4 0 1