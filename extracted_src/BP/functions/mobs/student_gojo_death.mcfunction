scoreboard players set @s Stun 5
camera @a[r=20] fade time 0 1.5 1 color 255 255 255
summon ds:student_gojo2
tag @e[type=ds:student_gojo2,c=1] add hidden_inventory_cutscene
scoreboard players set @e[type=ds:student_gojo2,c=1] cutscene 2001
tp @s ~~~
damage @s 2 suicide