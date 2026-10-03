gamerule domobspawning false
gamerule dodaylightcycle false
gamerule mobgriefing false
gamerule showcoordinates false
function structure_void
scoreboard players set @a amt 0
scoreboard players set @a component 0
scoreboard players set @a consolerejected 0
scoreboard players set @a astarothdeath 0
scoreboard players set @a astaroth 0
scoreboard players set @a kaiguydeath 0
scoreboard players set @a kaiguy 0
scoreboard players set @a benedictusdeath 0
scoreboard players set @a benedictus 0
scoreboard players set @a duke 0
scoreboard players set @a dukedeath 0
event entity @e ds:disappear
event entity @e[type=ds:heroic_npc] despawn
gamemode s @a
tag @a remove darkness
fog @a remove reality_arena
stopsound @a
execute if entity @e[type=ds:primesoul] run tellraw @a[tag=arenaboss] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4Ｆｉｎａｌｌｙ．"}]}
clear @a ds:truesword
clear @a ds:truephaser
clear @a ds:truegrimoire
clear @a ds:trueamulet
tickingarea remove spawn
tickingarea remove kaiguy
tickingarea remove voidtower
tickingarea remove void_obelisk




























































# I RECOMMEND NOT TO SEARCH THROUGH THIS FILE AS IT MAY SPOIL OR RUIN STEPS REQUIRED FOR SECRETS IN THIS MOD. IF YOU WANT TO EXPERIENCE THE SECRETS PLEASE DO IT THE LEGITIMATE WAY AS IT WILL BE MORE INTERESTING AND FUN











































camera @a fade time 0 1 1 color 0 0 0
setmaxplayers 10
execute positioned -59936 239 -59937 run tp @a[r=200] 0 100 0
execute positioned -59936 239 -59937 run camera @a[r=200] fade time 0 2 1 color 255 255 255
fill -60000 237 -60000 -59871 237 -59872 air
fill -60000 238 -60000 -59871 238 -59872 air
fill -60000 239 -60000 -59871 239 -59872 air
fill -60000 240 -60000 -59871 240 -59872 air
fill -60000 241 -60000 -59871 241 -59872 air
fill -60000 242 -60000 -59871 242 -59872 air
fill -60000 243 -60000 -59871 243 -59872 air
fill -60000 244 -60000 -59871 244 -59872 air
fill -60000 245 -60000 -59871 245 -59872 air
fill -60000 246 -60000 -59871 246 -59872 air
gamerule showcoordinates true
scoreboard players set @a primesoul 0
scoreboard players set @a prison 0
scoreboard players set griefing Mode 2
scoreboard players set mobeventstoggle Mode 2
fog @a remove reality_arena
scoreboard players set @a dying 15
tickingarea remove reality_arena 
tag @a remove arenaboss