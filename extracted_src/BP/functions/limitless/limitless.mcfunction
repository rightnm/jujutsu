
execute as @a[scores={bluefist=1..}] run function limitless/blue_h2h

execute as @a[tag=blackflash_finisher_gojo,scores={blackflashing=1..}] at @s run function blackflash_finisher_gojo

execute as @e[name=Lapse] at @s run function limitless/lapseblue
execute as @e[name=Lapse2] at @s run function limitless/lapseblue2
execute as @e[type=ds:projectile,name="Blue Core"] at @s run function limitless/bluecore
execute as @e[name=phaseblue,c=2] at @s run function limitless/phaseblue
execute as @e[name=twilight,c=6] at @s run function limitless/twilightblue
execute as @e[name=wisdomblue,c=2] at @s run function limitless/wisdomblue
execute as @e[name=phasered,c=2] at @s run function limitless/phasered
execute as @e[name=Reversal] at @s run function limitless/reversal
execute as @e[name=HollowP] at @s run function limitless/hollow_purple
execute as @e[name=200HollowP] at @s run function limitless/200hollow_purple
execute as @e[name=ImaginaryP] at @s run function limitless/imaginary_purple
execute as @e[name=UnlimitedVoid] at @s run function limitless/unlimited_void
execute as @e[name=UnlimitedBarrier] at @s run function limitless/unlimited_barrier

execute as @a[scores={levitate=2..},c=1] at @s unless block ~~-0.25~ air run scoreboard players set @s levitate 1
scoreboard players set @a[scores={levitate=1..},tag=doublesneak] levitate 2
effect @a[tag=limitless,scores={levitate=1..2}] slow_falling 0 7 true
effect @a[tag=limitless,scores={levitate=1..},tag=lookingup] levitation 1 7 true
effect @a[tag=limitless,scores={levitate=1..},tag=!uplook] levitation 0 20 true
scoreboard players remove @a[scores={levitate=1..}] countdown1 1
scoreboard players remove @a[scores={levitate=1..}] levitate 1
effect @a[scores={levitate=1..,countdown1=3}] levitation 1 2 true
effect @a[scores={levitate=1..,countdown1=6}] levitation 0 10 true
scoreboard players set @a[scores={countdown1=1..2}] countdown1 11
execute as @a[scores={levitate=1..}] at @s run particle ds:levitate_1 ~~~
execute as @a[scores={levitate=1..}] at @s run particle ds:levitate_2 ~~~

scoreboard players set @a[scores={infinity=1..,detect_left=1..},hasitem={item=ds:dash,location=slot.weapon.mainhand}] Dash 12
tag @a[scores={infinity=1..,detect_left=1..},hasitem={item=ds:dash,location=slot.weapon.mainhand},tag=!infinitydash] add infinitydash