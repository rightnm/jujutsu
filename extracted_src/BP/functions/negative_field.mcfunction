tp @s ~~~
tag @s add Frames

scoreboard players add @s Energy 0
execute as @s[scores={Energy=0}] run scoreboard objectives add negative_field dummy
execute as @s[scores={Energy=0}] run scoreboard objectives add negative_field_timer dummy
scoreboard players set @s[scores={Energy=0}] Deleter 1200
scoreboard players add @s[scores={Energy=0}] negative_field 10
scoreboard players set @s[scores={Energy=0}] negative_field_timer 600
scoreboard players add @s[scores={Energy=0}] Energy 1


execute as @e[type=xp_orb,r=33] at @s run scoreboard players add @e[type=ds:negative_field,r=33] negative_field 1
execute as @e[type=xp_orb,r=33] at @s run kill @s

execute as @s run execute as @e[type=ds:negative_field,r=33,c=1,rm=0.25] if score @s negative_field >= @e[type=ds:negative_field,r=33,c=1,rm=0.25] negative_field at @s run scoreboard players operation @s negative_field += @e[type=ds:negative_field,r=33,c=1,rm=0.25] negative_field
execute as @s run execute as @e[type=ds:negative_field,r=33,c=1,rm=0.25] if score @s negative_field >= @e[type=ds:negative_field,r=33,c=1,rm=0.25] negative_field at @s run scoreboard players set @s Deleter 800
execute as @s run execute as @e[type=ds:negative_field,r=33,c=1,rm=0.25] if score @s negative_field >= @e[type=ds:negative_field,r=33,c=1,rm=0.25] negative_field at @s run kill @e[type=ds:negative_field,r=33,c=1,rm=0.25] 

scoreboard players set @s[scores={Deleter=6001..}] Deleter 6000
playsound ambient.soulsand_valley.additions @a ~~~ 0.085 0.97


execute as @s[scores={negative_field=1..50}] at @s run particle ds:negative_field1 ~~~
execute as @s[scores={negative_field=51..100}] at @s run particle ds:negative_field2 ~~~
execute as @s[scores={negative_field=100..999}] at @s run particle ds:negative_field3 ~~~
execute as @s[scores={negative_field=1000..}] at @s run particle ds:negative_field4 ~~~
execute as @s[scores={negative_field=1000..}] at @s run particle ds:negative_field4b ~~~
execute as @s[scores={negative_field=1000..}] at @s run playsound ambient.soulsand_valley.additions @a ~~~ 0.085 0.77
execute as @s[scores={negative_field=1000..}] at @s run playsound ambient.soulsand_valley.mood @a ~~~ 0.085 1.25
execute as @s[scores={negative_field=1000..}] at @s run camerashake add @a[r=30] 0.5 0.08

scoreboard players set @s[scores={negative_field=-9999999..-1}] negative_field 4
scoreboard players set @e[scores={Deleter=-999999999..-1}] Deleter 5

scoreboard players set @s[scores={negative_field_timer=-99999..-1}] negative_field_timer 1
scoreboard players remove @s[scores={negative_field_timer=1..}] negative_field_timer 1

scoreboard players random @s[scores={negative_field_timer=0}]  chance 1 100


execute as @s[scores={chance=1..4,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:flyhead ~~1~
execute as @s[scores={chance=1..4,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:flyhead2 ~~1~
execute as @s[scores={chance=1..4,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:flyhead3 ~~1~
execute as @s[scores={chance=1..4,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:flyhead4 ~~1~
execute as @s[scores={chance=21..40,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:leech_curse ~~1~
execute as @s[scores={chance=21..40,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:leech_curse ~~1~
execute as @s[scores={chance=41..50,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:hair_curse ~~1~
execute as @s[scores={chance=51..66,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:mushroom_curse ~~1~-2
execute as @s[scores={chance=51..66,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:mushroom_curse ~~1~2
execute as @s[scores={chance=61..75,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:longshroom_curse ~~~4
execute as @s[scores={chance=76..,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:mouth_curse ~1~1~
execute as @s[scores={chance=76..,negative_field=1..50,negative_field_timer=0}] at @s run summon ds:mouth_curse ~~1~1


execute as @s[scores={chance=1..4,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:brute ~~1~
execute as @s[scores={chance=5..10,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:brute2 ~~1~
execute as @s[scores={chance=11..15,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:brute3 ~~1~
execute as @s[scores={chance=16..20,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:brute4 ~~1~
execute as @s[scores={chance=21..30,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:lizard_curse ~~1~
execute as @s[scores={chance=31..40,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:grasshopper_curse ~~1~
execute as @s[scores={chance=41..50,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:sharko ~~1~
execute as @s[scores={chance=51..,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:mushroom_curse_big ~~1~-2
execute as @s[scores={chance=51..,negative_field=51..100,negative_field_timer=0}] at @s run summon ds:mushroom_curse_big ~~1~2

execute as @s[scores={chance=1..50,negative_field=101..999,negative_field_timer=0}] at @s run summon ds:azureflames_curse ~~1~
execute as @s[scores={chance=51..,negative_field=101..999,negative_field_timer=0}] at @s run summon ds:centipede_grade1 ~~1~

execute as @s[scores={chance=1..49,negative_field=1000..,negative_field_timer=0}] at @s run summon ds:finger_bearer



scoreboard players remove @s[scores={negative_field_timer=0}] negative_field 15
scoreboard players remove @s[scores={negative_field_timer=0,Deleter=91..}] Deleter 90
scoreboard players set @s[scores={negative_field_timer=0}] chance 0

kill @s[scores={negative_field_timer=-999999..0}]