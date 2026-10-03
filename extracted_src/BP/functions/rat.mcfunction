execute if entity @e[tag=destabilizing_final,scores={move=1..}] run gamerule domobspawning false
time set midnight
scoreboard objectives add sight dummy
scoreboard players add @a sight 0
event entity @e[type=ds:heroic_npc] despawn






























































# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN














 


























execute if entity @e[tag=destabilizing_final,scores={move=1..}] run execute as @a at @s run function clear_skills
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run execute as @a[tag=sukuna] at @s run function sukuna/sukuna_clear
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run replaceitem entity @a slot.hotbar 0 ds:truesword  1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run replaceitem entity @a slot.hotbar 2 ds:truegrimoire 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run replaceitem entity @a slot.hotbar 3 ds:truephaser 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run replaceitem entity @a slot.hotbar 4 ds:trueamulet 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run setmaxplayers 1
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run effect @a health_boost 0 255 true
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run effect @a health_boost infinite 244 true
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run effect @a instant_health 2 25 true
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard objectives add lives dummy
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard players set @a lives 3
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run gamerule dodaylightcycle false
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run gamerule mobgriefing false
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run gamerule showcoordinates false
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard players set griefing Mode 1
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard players set mobeventstoggle Mode 1
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard players set @a Camera 12
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run scoreboard players set @a Move 12
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run function bosses/file/arena_load
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run tp @a -59985 240 -59973
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run fog @a push minecraft:fog_the_end reality_arena
execute if entity @e[tag=destabilizing_final,scores={move=1..}] run camera @a clear


