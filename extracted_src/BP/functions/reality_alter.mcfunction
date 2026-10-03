gamerule domobspawning false
time set midnight
scoreboard objectives add sight dummy
scoreboard players add @a sight 0
event entity @e[type=ds:heroic_npc] despawn






























































# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN














 


























execute as @a at @s run function clear_skills
execute as @a[tag=sukuna] at @s run function sukuna/sukuna_clear
replaceitem entity @a slot.hotbar 0 ds:truesword  1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @a slot.hotbar 2 ds:truegrimoire 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @a slot.hotbar 3 ds:truephaser 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
replaceitem entity @a slot.hotbar 4 ds:trueamulet 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
setmaxplayers 1
effect @a health_boost 0 255 true
effect @a health_boost infinite 244 true
effect @a instant_health 2 25 true
scoreboard objectives add lives dummy
scoreboard players set @a lives 3
gamerule dodaylightcycle false
gamerule mobgriefing false
gamerule showcoordinates false
scoreboard players set griefing Mode 1
scoreboard players set mobeventstoggle Mode 1
scoreboard players set @a Camera 12
scoreboard players set @a Move 12
function bosses/file/arena_load
tp @a -59985 240 -59973
fog @a push minecraft:fog_the_end reality_arena
camera @a clear


