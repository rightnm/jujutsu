
# Startup
execute as @s[scores={domain=1..200}] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 malevolentshrine


execute as @s[scores={domain=220}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=220}] at @s run kill @e[type=!item,type=ds:malevolent_shrine1,r=33]
execute as @s[scores={domain=220}] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=220}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=220}] at @s run playanimation @a[r=33,rm=0.33] animation.stunned
execute as @s[scores={domain=220}] at @s run tp @s @s
playanimation @s[scores={domain=220..}] animation.malevolent_shrine2


execute as @s[scores={domain=170,Energy=1..50}] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=220}] at @s run execute as @a[r=40] at @s run playsound music.malevolentshrine2 @s ~~~ 100000 1 10000


execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0

# invincibility during startup
scoreboard players add @s[scores={domain=190..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1
scoreboard players set @s[scores={domain=1..}] ProjImmune 50


scoreboard players set @s[scores={domain=1..18}] infinity 0


# transition to domain
execute as @s[scores={domain=170..}] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=170..}] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=160..170}] at @s run particle ds:chimera_blackv2 ~~~
execute as @s[scores={domain=160..}] at @s run particle ds:cutscene_black4 ~~0.1~

# barrier
execute as @s[scores={domain=220}] at @s run summon ds:projectile ShrineBarrier ~~~
execute as @s[scores={domain=220}] at @s run scoreboard players set @e[type=!item,name=ShrineBarrier] Deleter 550
execute as @s[scores={domain=220}] at @s run scoreboard players set @e[type=!item,name=ShrineBarrier] Energy 35

# domain placement
execute as @s[scores={domain=201..}] at @s run tp @s @s

execute as @s[scores={domain=205..220}] at @s run camera @a[r=40] set minecraft:free ease 0.2 in_sine pos ^^1.5^2 facing ~~1.5~
execute as @s[scores={domain=199..200}] at @s run camera @a[r=40] set minecraft:free ease 1.5 in_sine pos ^^0.5^2 facing ^^-2^1.5

execute as @s[scores={domain=180}] at @s run camera @a[r=40] fade time 0.5 2.5 1 color 0 0 0

execute as @s[scores={domain=146..160}] at @s run tp @s @s
execute as @s[scores={domain=140..145}] at @s anchored eyes run camera @a[r=40] set minecraft:free pos ^^^3 facing ^^20^1
execute as @s[scores={domain=139..141}] at @s anchored eyes run camera @a[r=40] set minecraft:free ease 2 in_sine pos ^^-0.25^1 facing ~~~

execute as @s[scores={domain=79..80}] at @s anchored eyes run camera @a[r=40] set minecraft:free ease 0.3 in_out_circ pos ^^-0.35^22 facing ^^^1
execute as @s[scores={domain=72..73}] at @s anchored eyes run camera @a[r=40] set minecraft:free ease 2 in_sine pos ^^-0.35^24 facing ^^^1

execute as @s[scores={domain=100..}] at @s  run effect @a[r=40] darkness 2 1 true

execute as @s[scores={domain=170}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=169}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=168}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=167}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=165}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=164}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=163}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=162}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=161}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=160}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=159}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=158}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=157}] at @s run title @a[r=40,tag=!impactframesoff] title  
execute as @s[scores={domain=156}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=154}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=153}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=152}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=151}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=150}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=149}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=148}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=147}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=146}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=145}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=144}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=143}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=142}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=141}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=140}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=139}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=138}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=137}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={domain=136}] at @s run title @a[r=40,tag=!impactframesoff] title §l


execute as @s[scores={domain=164}] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=160..169}] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=160..164}] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=1..60}] at @s positioned ~ ~ ~ run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[scores={domain=1..60}] at @s positioned ~ ~ ~ run fill ~33 302 ~33 ~-33 302 ~-33 air

execute as @s[scores={domain=169}] at @s run execute as @e[type=!item,r=47,name=!ShrineBarrier,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=163..169}] at @s run execute as @e[type=!item,r=47,name=!ShrineBarrier,tag=!domainunselect] at @s run tp @s ~ 301.1 ~
execute as @s[scores={domain=1..70}] at @s run effect @e[type=!item,r=33] night_vision 2 1 true

execute as @s[scores={domain=150}] at @s run summon ds:malevolent_shrine1 ~ 301.05 ~ facing ^^300^25 none "malevolentshrine"

execute as @s[scores={domain=100..150}] at @s if entity @e[type=ds:malevolent_shrine1,r=4] run execute as @e[type=ds:malevolent_shrine1,c=1,r=4] at @s run tp @s @s
execute as @s[scores={domain=100..150}] at @s if entity @e[type=ds:malevolent_shrine1,r=4] run execute as @e[type=ds:malevolent_shrine1,c=1,r=4] at @s run tp @s ^^^-6

execute as @s[scores={domain=150}] at @s run scoreboard players add @e[type=ds:malevolent_shrine1,name=malevolentshrine,c=1] Deleter 331
execute as @s[scores={domain=150}] at @s run scoreboard players operation @e[type=ds:malevolent_shrine1,name=malevolentshrine,c=1] Deleter += @s Energy
execute as @s[scores={domain=149..150}] at @s run scoreboard players operation @s domainactive = @e[type=ds:malevolent_shrine1,name=malevolentshrine,c=1] Deleter

execute as @s[scores={domain=158}] at @s run scoreboard players add @e[type=!item,name=ShrineBarrier,c=1] Deleter 331
execute as @s[scores={domain=158}] at @s  run scoreboard players operation @e[type=!item,name=ShrineBarrier,c=1] Deleter += @s Energy


execute as @s[scores={domain=1..30}] at @s  run particle ds:malevolent_shrine_slashes1 ~~1~
execute as @s[scores={domain=1..30}] at @s  run camerashake add @a[r=50] 0.25 0.15 rotational
execute as @s[scores={domain=1..30}] at @s  run  particle ds:malevolent_shrine_slashes9 ~~1~
execute as @s[scores={domain=1..30}] at @s  run scoreboard players set @e[type=ds:malevolent_shrine1,c=1] Evade 150

execute as @s[scores={domain=1..5}] at @s anchored eyes run camera @a[r=40] clear

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..4}] remove sukunadomain1
tag @s[scores={domain=1..4}] remove domainlayout
scoreboard players set @s[scores={domain=1..}] Camera 7



