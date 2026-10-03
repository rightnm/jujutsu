fill ~5~5~5~-5~-5~-5 air [] replace repeating_command_block
fill ~15~15~15~-15~-15~-15 air [] replace tnt
function flames/heat15x15
particle ds:gas_explosion1 ~~2~
particle ds:gas_explosion3 ~~2~
particle ds:gas_explosion4 ~~2~
camerashake add @a[r=100] 4 1.5
camera @a[r=50] fade time 0 0.25 1.5 color 255 255 255
playsound mob.shock1 @a[r=400] ~~~ 99999 0.5 99999
playsound mob.shock1 @a[r=400] ~~~ 99999 0.55 99999
playsound mob.shock1 @a[r=400] ~~~ 99999 0.45 99999
playsound mob.shock1 @a[r=400] ~~~ 99999 0.35 99999
playsound random.explode @a[r=400] ~~~ 99999 0.5 99999
playsound random.explode @a[r=400] ~~~ 99999 0.45 99999
playsound random.explode @a[r=400] ~~~ 99999 0.35 99999
playsound random.explode @a[r=400] ~~~ 99999 0.25 99999
damage @e[r=45,tag=!Frames] 75 override
scoreboard players add @e[r=45,tag=!Frames] onfire 50
effect @e[r=50] resistance 1 20 true
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:energy_explosion ~~~ 
execute as @p[tag=griefable] run summon ds:mahoraga_knockback2 ~~2~
execute as @p[tag=griefable] run spreadplayers ~~ 1 25 @e[type=ds:energy_explosion,r=20]