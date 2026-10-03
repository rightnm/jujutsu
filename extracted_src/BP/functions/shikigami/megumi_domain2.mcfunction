
# Startup
execute as @s[scores={domain=1..460},tag=shikigami,tag=shadowgardendomain2] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 shadowgarden

execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run effect @a[r=33] darkness 4 1 true
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run stopsound @a[r=33]
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run kill @e[type=!item,type=ds:projectile,r=33]
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @a[r=33,rm=0.2,scores={move=4..}] move 3
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run playanimation @a[r=33,rm=0.2] animation.stunned
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run tp @s @s
playanimation @s[scores={domain=440..},tag=shikigami,tag=shadowgardendomain2] animation.chimera_domain3
execute as @s[scores={domain=430,Energy=1..50},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=460},tag=shikigami,tag=shadowgardendomain2] at @s run playsound music.chimera2 @a[r=33] ~~~ 100000 1 10000
execute as @s[scores={domain=430},tag=shikigami,tag=shadowgardendomain2] at @s run playsound music.chimeragarden @a[r=33] ~~~ 100000 1 10000

execute as @s[scores={domain=1..440},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_void_start1 ~~~
execute as @s[scores={domain=1..440},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_void_start2 ~~~
execute as @s[scores={domain=1..440},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_void_start3 ~~~

tag @s[scores={domain=1..450}] remove form12
tag @s[scores={domain=1..450}] remove form12b
execute as @s[scores={domain=450..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0

# invincibility during startup
scoreboard players add @s[scores={domain=440..},tag=shikigami,tag=shadowgardendomain2] infinity 15
scoreboard players add @s[scores={domain=1..},tag=shikigami,tag=shadowgardendomain2] infinity 1
scoreboard players set @s[scores={domain=1..},tag=shikigami,tag=shadowgardendomain2] ProjImmune 50


scoreboard players set @s[scores={domain=1..18},tag=shikigami,tag=shadowgardendomain2] infinity 0

# misc
execute as @s[scores={domain=1..},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=shikigami,tag=shadowgardendomain2] remove form6
tag @s[scores={domain=1..5},tag=shikigami,tag=shadowgardendomain2] remove domainlayout
scoreboard players set @s[scores={domain=1..},tag=shikigami,tag=shadowgardendomain2] Camera 4

execute as @s[scores={domain=440},tag=shikigami,tag=shadowgardendomain2] at @s run camera @a[r=33] fade time 0.25 0.5 0.5 color 0 0 0

execute as @s[scores={domain=440},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 5 in_out_circ pos ^ ^-0.35 ^1 rot ~-21 ~180

# transition to domain
execute as @s[scores={domain=325},tag=shikigami,tag=shadowgardendomain2] at @s run camera @a[r=33] fade time 2.5 1.33 0.1 color 0 0 0
execute as @s[scores={domain=300..325},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=300..325},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=370..300},tag=shikigami,tag=shadowgardendomain2] at @s run particle ds:chimera_blackv2 ~~~

# barrier
execute as @s[scores={domain=350},tag=shikigami,tag=shadowgardendomain2] at @s run summon ds:projectile ChimeraBarrier ~~~
execute as @s[scores={domain=350},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @e[type=!item,name=ChimeraBarrier] Deleter 550
execute as @s[scores={domain=350},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @e[type=!item,name=ChimeraBarrier] Energy 35

# domain placement
execute as @s[scores={domain=221..260},tag=shikigami,tag=shadowgardendomain2] at @s run tp @s @s
execute as @s[scores={domain=221..259},tag=shikigami,tag=shadowgardendomain2] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=221..259},tag=shikigami,tag=shadowgardendomain2] at @s run tp @s ~ ~ ~ facing ^^^20
execute as @s[scores={domain=259},tag=shikigami,tag=shadowgardendomain2] at @s run tp @s ^^^1.5
execute as @s[scores={domain=261},tag=shikigami,tag=shadowgardendomain2] at @s run summon ds:projectile ChimeraVoidStart ~ 298.85 ~-0
execute as @s[scores={domain=260..261},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players set @e[type=!item,name=ChimeraVoidStart,c=1] Deleter 261
execute as @e[type=!item,name=ChimeraVoidStart] at @s run function shikigami/chimera_start
execute as @s[scores={domain=260},tag=shikigami,tag=shadowgardendomain2] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=200..247},tag=shikigami,tag=shadowgardendomain2] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=200..247},tag=shikigami,tag=shadowgardendomain2] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=250},tag=shikigami,tag=shadowgardendomain2] at @s run execute as @e[type=!item,r=47,name=!ChimeraBarrier,name=!ChimeraVoidStart,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=245..249},tag=shikigami,tag=shadowgardendomain2] at @s run execute as @e[type=!item,r=47,name=!ChimeraBarrier,name=!ChimeraVoidStart,tag=!domainunselect] at @s run tp @s ~ 301.1 ~
execute as @s[scores={domain=260},tag=shikigami,tag=shadowgardendomain2] at @s run effect @e[type=!item,r=33] night_vision 2 1 true

execute as @s[scores={domain=206},tag=shikigami,tag=shadowgardendomain2] at @s run summon ds:shadowgarden ChimeraGarden2 ~ 298.85 ~

execute as @s[scores={domain=180..206},tag=shikigami,tag=shadowgardendomain2] at @s run playanimation @e[type=!item,name=ChimeraGarden2,c=1] animation.chimera_spine.appear

execute as @s[scores={domain=171..260},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^^1 rot ~ ~180
execute as @s[scores={domain=170},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_out_circ pos ^^1^24 rot ~-32 ~180
execute as @s[scores={domain=130..170},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camerashake add @a[r=33] 0.1 0.1 


execute as @s[scores={domain=115},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^12.5^5 rot ~15 ~180
execute as @s[scores={domain=114},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_sine pos ^^12.5^14 rot ~7 ~180

execute as @s[scores={domain=73},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^15^22^2 rot ~25 ~170
execute as @s[scores={domain=72},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_sine pos ^15^22^2 rot ~45 ~80


execute as @s[scores={domain=40},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^-15^^14 rot ~-25 ~150
execute as @s[scores={domain=30},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] fade time 0.75 0.25 1 color 0 0 0
execute as @s[scores={domain=39},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.65 in_sine pos ^-15^^14 rot ~-15 ~260
execute as @s[scores={domain=1..16},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] clear

execute as @s[scores={domain=205..206},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players add @e[type=!item,name=ChimeraGarden2,c=1] Deleter 331
execute as @s[scores={domain=206},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players operation @e[type=!item,name=ChimeraGarden2,c=1] Deleter += @s Energy
execute as @s[scores={domain=203..205},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players operation @s domainactive = @e[type=!item,name=ChimeraGarden2,c=1] Deleter


execute as @s[scores={domain=251},tag=shikigami,tag=shadowgardendomain2] at @s run scoreboard players add @e[type=!item,name=ChimeraBarrier,c=1] Deleter 331
execute as @s[scores={domain=251},tag=shikigami,tag=shadowgardendomain2] at @s  run scoreboard players operation @e[type=!item,name=ChimeraBarrier,c=1] Deleter += @s Energy

execute as @s[scores={domain=15},tag=shikigami,tag=shadowgardendomain2] at @s run playsound music.shadowgarden @a[r=33] ~~~ 0.1 0.95 99999 

execute as @s[scores={domain=206},tag=shikigami,tag=shadowgardendomain2] at @s run effect @a[r=33] darkness 2 1 true


execute as @s[scores={domain=1..5},tag=shikigami,tag=shadowgardendomain2] at @s anchored eyes run camera @a[r=33] clear


