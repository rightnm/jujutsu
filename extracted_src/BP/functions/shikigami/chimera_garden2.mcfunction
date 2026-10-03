execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players remove @s[scores={Energy=1..}] Energy 1
execute as @s[scores={Energy=0}] at @s run playsound music.shadowgarden @a[r=33] ~~~ 0.1 0.95 99999 
execute as @s[scores={Energy=0}] at @s run scoreboard players set @s Energy 600

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

tag @a[scores={domainactive=1..},r=50,tag=!form12b] remove form12b

execute as @s at @s if entity @a[scores={domain=1..},tag=shikigami,r=50] run scoreboard players set @s endurance 50

execute unless entity @s[scores={endurance=0..}] run scoreboard players add @s endurance 0
scoreboard players remove @s[scores={endurance=1..}] endurance 1
scoreboard players random @s[scores={endurance=0..1}] chance 1 7

effect @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=33,tag=!heavenlyrestriction,family=!heavenlyrestriction,tag=!domainimmune,tag=!unselect] slowness 1 1 true

execute as @s[scores={chance=1,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=rabbit_tame] run function shikigami/shikigami/shadowrabbit_spawn

execute as @s[scores={chance=2,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=toad_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=33,tag=!unselect] at @s unless entity @e[type=!item,type=ds:shadowtoads,r=1.5] run summon ds:shadowtoads ~~~
execute as @s[scores={chance=2,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=toad_tame] run scoreboard players set @e[type=!item,type=ds:shadowtoads,r=33] Deleter 70

execute as @e[type=!item,type=ds:shadowtoads,r=33,family=shadows] at @s run tp @s @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=33,c=1,type=!ds:shadowtoads,tag=!unselect]
execute as @e[type=!item,type=ds:shadowtoads,r=33,family=shadows] at @s run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=33,tag=!unselect,c=1] at @s if block ~~-0.4~ air run tp @s ~~-0.4~
execute as @e[type=!item,type=ds:shadowtoads,r=33,family=shadows] at @s run effect @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=33,tag=!unselect,c=1] slowness 1 4 true

execute as @s[scores={chance=3,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=dog_tame] run summon ds:shadowwolf ~ ~ ~
execute as @s[scores={chance=3,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=dog_tame] run summon ds:shadowwolf ~ ~ ~
execute as @s[scores={chance=3,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=dog_tame] run scoreboard players set @e[type=!item,type=ds:shadowwolf,c=2] Deleter 300
execute as @s[scores={chance=3,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=dog_tame] run spreadplayers ~ ~ 1 25 @e[type=!item,type=ds:shadowwolf,c=2]

execute as @e[type=!item,family=shadows,type=ds:shadownue,r=33] at @s run function shikigami/nue_sweep

execute as @e[type=!item,family=shadows,type=ds:shadowwolf,r=33] at @s run function shikigami/shikigami/shadowdog
execute as @e[type=!item,family=shadows,type=ds:shadowserpent,r=33] at @s run function shikigami/shikigami/shadowserpent
execute as @e[type=!item,family=shadows,type=ds:shadowox,r=33] at @s run function shikigami/shikigami/piercingox_rush
execute as @e[type=!item,family=shadows,type=ds:shadowelephant,r=33] at @s run function shikigami/shikigami/maxelephantstomp


execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,family=mahoraga,c=1,r=50] at @s run function damages/shadowgarden
execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,scores={wheelactive=1..},r=50,c=1,tag=!domainactive] at @s positioned ^^^2 run function damages/shadowgarden

execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=60,tag=!domainactive,tag=!domainimmune] infinity 3

execute as @s[scores={Deleter=1..}] run tp @s ~~~

execute as @s[scores={Deleter=32..}] at @s positioned ~~-33~ run  effect @e[tag=!Frames,r=25,tag=!unselect] blindness 1 1 true
execute as @s[scores={Deleter=32..}] at @s positioned ~~-33~ run damage @e[tag=!Frames,r=25,tag=!unselect] 1 override

execute as @s[scores={Deleter=32..}] at @s unless entity @e[type=!item,tag=shadowgardendomain2,r=35] run scoreboard players set @s Deleter 31

execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability1=3..}] ability1 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability2=3..}] ability2 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability3=3..}] ability3 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability4=3..}] ability4 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability5=3..}] ability5 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability6=3..}] ability6 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability7=3..}] ability7 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability8=3..}] ability8 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability9=3..}] ability9 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability10=3..}] ability10 3
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain2,r=33,scores={ability11=3..}] ability11 3

tickingarea remove shadowgarden
execute as @s[scores={Deleter=1..}] at @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 shadowgarden

execute as @s[scores={chance=4,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=nue_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run summon ds:shadownue ~ ~ ~

playanimation @e[type=!item,type=ds:shadownue,r=40,scores={Deleter=30..}] animation.nue.sweep
execute as @s[scores={chance=4,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=nue_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run scoreboard players set @e[type=!item,type=ds:shadownue,c=1] Deleter 32
execute as @s[scores={chance=4,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=nue_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run spreadplayers ~ ~ 1 25 @e[type=!item,type=ds:shadownue,c=1]

execute as @s[scores={chance=5,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=serpent_tame] run summon ds:shadowserpent ~ ~ ~
execute as @s[scores={chance=5,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=serpent_tame] run scoreboard players set @e[type=!item,type=ds:shadowserpent,c=1] Deleter 300
execute as @s[scores={chance=5,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=serpent_tame] run spreadplayers ~ ~ 1 25 @e[type=!item,type=ds:shadowserpent,c=1]

execute as @s[scores={chance=6,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=ox_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run summon ds:shadowox ~ ~ ~
execute as @s[scores={chance=6,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=ox_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run scoreboard players set @e[type=!item,type=ds:shadowox,c=1] Deleter 26
execute as @s[scores={chance=6,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=ox_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run spreadplayers ~ ~ 1 25 @e[type=!item,type=ds:shadowox,c=1]

execute as @s[scores={chance=7,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=elephant_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run summon ds:shadowelephant ~ ~ ~
execute as @s[scores={chance=7,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=elephant_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run scoreboard players set @e[type=!item,type=ds:shadowelephant,c=1] Deleter 53
execute as @s[scores={chance=7,endurance=0}] if entity @p[tag=shadowgardendomain2,c=1,scores={domainactive=1..},r=50,tag=elephant_tame] run execute as @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=50,tag=!unselect,c=1] at @s run spreadplayers ~ ~ 1 25 @e[type=!item,type=ds:shadowelephant,c=1]

execute as @s[scores={chance=1..,endurance=0}] run execute as @e[type=!item,family=shadows,scores={Deleter=199..},r=50] at @s run tp @s ~ 301.15 ~ facing @e[type=!item,tag=!shadowgardendomain2,family=!shikigami,family=!damage,family=!projectile,tag=!Frames,type=!ds:projectile,type=!item,type=!arrow,type=!xp_orb,r=53,c=1,tag=!unselect]

execute as @s[scores={endurance=0}] at @s run scoreboard players set @s endurance 50



execute as @s at @s run particle ds:chimera_garden_aura1 ~~1~
execute as @s at @s run particle ds:chimera_background1 ~~1~

execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,r=40,type=!arrow,type=!xp_orb] at @s run fill ~30 300 ~33 ~-30 300 ~-30 barrier [] replace air



execute as @s at @s run particle ds:chimera_spine_aura1 ~~12.5 ~


execute as @s[scores={Deleter=1..}] run tp @s ~~~

execute as @e[type=!item,type=ds:projectile,c=1,name=ChimeraBarrier] at @s run function shikigami/chimera_barrier

execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,r=40,rm=31,type=!ds:projectile] at @s run tp @s @s
execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^^ facing @e[type=!item,name=ChimeraGarden2,c=1]
execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s run execute as @e[type=!item,r=40,rm=31,type=!ds:projectile] at @s run tp @s ^^1^1 facing @e[type=!item,name=ChimeraGarden2,c=1]




execute as @s[name=ChimeraGarden2,scores={Deleter=1..}] at @s if entity @p[scores={domainactive=1..,ab=1..,move=1..},tag=shikigami,r=90] run scoreboard players add @s Deleter 1

execute as @s[name=ChimeraGarden2,scores={Deleter=1..30}] at @s run execute as @e[type=!item,family=shadows,r=90] at @s run function shikigami/shikigami_callback
execute as @s[name=ChimeraGarden2,scores={Deleter=1..30}] at @s run tag @e[type=!item,r=90,tag=shadowgardendomain2] remove shadowgardendomain2
execute as @s[name=ChimeraGarden2,scores={Deleter=1..30}] at @s run scoreboard players set @e[type=!item,r=90] Stun 6
execute as @s[name=ChimeraGarden2,scores={Deleter=26..27}] at @s run tp @e[type=!item,scores={domainactive=1..},tag=shikigami,r=100] ~ ~1~
execute as @s[name=ChimeraGarden2,scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[name=ChimeraGarden2,scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[name=ChimeraGarden2,scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run execute as @e[type=!item,r=50] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run execute as @e[type=!item,r=50] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run execute as @e[type=!item,r=50] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run execute as @e[type=!item,r=50] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..19}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[name=ChimeraGarden2,scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[name=ChimeraGarden2,scores={Deleter=20}] at @s run stopsound @a[r=90] music.shadowgarden
execute as @s[name=ChimeraGarden2,scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=90] ~~~ 100000 1 10000
execute as @s[name=ChimeraGarden2,scores={Deleter=1..15}] at @s run execute as @e[type=!item,name=ChimeraBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[name=ChimeraGarden2,scores={Deleter=1..15}] at @s run execute as @e[type=!item,name=ChimeraBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[name=ChimeraGarden2,scores={Deleter=1..15}] at @s run execute as @e[type=!item,name=ChimeraBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[name=ChimeraGarden2,scores={Deleter=9..12}] at @s run kill @e[type=!item,name=ChimeraBarrier,c=1] 
execute as @s[name=ChimeraGarden2,scores={Deleter=9..10}] at @s run scoreboard players set @e[type=!item,scores={domainactive=1..},r=90] domainactive 2
execute as @s[name=ChimeraGarden2,scores={Deleter=9..30}] at @s run scoreboard objectives add tpdown dummy
execute as @s[name=ChimeraGarden2,scores={Deleter=6..10}] at @s run scoreboard players set @e[type=!item,r=90,type=!ds:projectile,type=!ds:shadowgarden] tpdown 4
execute as @s[name=ChimeraGarden2,scores={Deleter=5..8}] at @s run execute as @e[type=!item,r=360,type=!ds:projectile,type=!ds:shadowgarden] at @s run tp @s ~~0.8~-0