tag @s[tag=!fistenergy] add fistenergy

scoreboard players set @s[tag=!lightning,scores={amberbeast=4..},type=player] amberbeast 0

effect @s[tag=!mythicalbeastamber,scores={BasicM1s=0,BasicM1=0,AfterAnim=0,detect_sprint=1..}] speed 1 22 true
effect @s[tag=mythicalbeastamber,scores={BasicM1s=0,BasicM1=0,AfterAnim=0,detect_sprint=1..}] speed 1 25 true
effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0}] jump_boost 1 6 true
effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0}] saturation 1 1 true

scoreboard players set @s[scores={amberbeast=4..,nocts=1..}] amberbeast 3

execute as @s[scores={Energy=1..}] if block ~~~ water run function kashimo/water_conduct

replaceitem entity @s[tag=!mythicalbeastamber,tag=abilitying,hasitem={item=ds:amberbeast2a,location=slot.armor.chest,quantity=0}] slot.armor.chest 1 ds:amberbeast2a 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[tag=mythicalbeastamber,tag=abilitying,hasitem={item=ds:amberbeastfulla,location=slot.armor.chest,quantity=0}] slot.armor.chest 1 ds:amberbeastfulla 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}

execute as @s[hasitem={item=ds:amberbeast2,location=slot.armor.chest,quantity=0},scores={countdown=3..},tag=!abilitying] at @s run playsound random.break @a ~~~ 1 0.4
replaceitem entity @s[scores={countdown2=2},tag=!mythicalbeastamber,tag=!abilitying,hasitem={item=ds:amberbeast2,location=slot.armor.chest,quantity=0}] slot.armor.chest 1 ds:amberbeast2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={countdown2=2},tag=mythicalbeastamber,tag=!abilitying,hasitem={item=ds:amberbeastfull,location=slot.armor.chest,quantity=0}] slot.armor.chest 1 ds:amberbeastfull 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}
replaceitem entity @s[scores={countdown3=1..4},tag=!abilitying,hasitem={item=ds:amberbeastfull,location=slot.armor.chest,quantity=0}] slot.armor.chest 1 ds:amberbeastfull 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_slot"}}

scoreboard players set @s[scores={amberbeast=3..,respawn=1..},type=player] amberbeast 2

execute as @s[scores={amberbeast=1..3,respawn=0}] at @s run function kashimo/amber_end

execute as @s[scores={Energy=9..},tag=lightning] run scoreboard players operation @s amberbeast = @s Energy

scoreboard players remove @s[tag=mythicalbeastamber,scores={countdown2=1..10,Energy=10..}] Energy 2
scoreboard players remove @s[tag=mythicalbeastamber,scores={Energy=1..}] Energy 1

scoreboard players remove @s[scores={DashCD=2..}] DashCD 1
scoreboard players remove @s[scores={DashCD=2..},tag=mythicalbeastamber] DashCD 1

execute as @s[scores={Dash=3..10}] run particle ds:lightning_cloak_dash

execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:amber_beast3
execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:amber_beast4
execute as @s[scores={countdown2=1..3,Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak4

scoreboard players add @s ltncloak 1
scoreboard players add @s ability3 1

execute unless entity @s[scores={countdown2=0..}] run scoreboard objectives add countdown2 dummy
execute unless entity @s[scores={countdown2=0..}] run scoreboard players add @s countdown2 0

execute unless entity @s[scores={countdown3=0..}] run scoreboard objectives add countdown3 dummy
execute unless entity @s[scores={countdown3=0..}] run scoreboard players add @s countdown3 0
scoreboard players set @s[scores={countdown3=0},tag=!mythicalbeastamber] countdown3 2400

effect @s[type=!player,scores={countdown3=2..3}] instant_health 1 10 true
tellraw @s[scores={countdown3=2..3},tag=!mythicalbeastamber,type=player] {"rawtext":[{"text":"§6Mythical Beast Amber Transformation has been completed,\nyou will die when your Cursed Energy fully depletes."}]}
execute as @s[scores={countdown3=3}] at @s run playsound mob.enderdragon.growl @a ~~~ 99999 0.5 99999
execute as @s[scores={countdown3=2..3}] at @s run camerashake add @a[r=100] 4 1
execute as @s[scores={countdown3=1..4}] at @s run particle ds:finger_shockwave1 ~~1~
execute as @s[scores={countdown3=1..4}] at @s run particle ds:finger_shockwave2 ~~1~
execute as @s[scores={countdown3=1..4}] at @s run particle ds:finger_shockwave3 ~~1~
tag @s[scores={countdown3=1..3},tag=!mythicalbeastamber] add mythicalbeastamber

scoreboard players remove @s[scores={countdown2=1..}] countdown2 1

execute as @s[scores={countdown2=0}] at @s run playsound mob.electricity @a ~~~ 0.025 2
execute as @s[scores={countdown2=0..2}] at @s run playsound mob.electricity @a ~~~ 0.025 1.75
scoreboard players set @s[scores={countdown2=0}] countdown2 17

scoreboard players add @s[scores={amberbeast=1..3}] respawn 0
scoreboard players set @s[scores={amberbeast=1..3,countdown3=!0}] countdown3 0
kill @s[scores={amberbeast=1..3,respawn=0}]


