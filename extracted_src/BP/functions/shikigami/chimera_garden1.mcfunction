execute as @s at @s run particle ds:chimera_garden1 ~~0.77~
execute as @s at @s run particle ds:chimera_garden2 ~~0.2~
execute as @s at @s run particle ds:chimera_garden3 ~~0.2~
execute as @s at @s run particle ds:chimera_garden4 ~~-0.22~
execute as @s at @s run particle ds:chimera_garden5~~0.1~

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

tag @a[scores={domainactive=1..},r=50,tag=form12] remove form12

execute as @s[scores={Deleter=1..}] run tp @s ~~~

execute as @s[scores={Deleter=1..}] run kill @e[type=item,r=35]
execute as @s[scores={Deleter=1..}] run kill @e[type=falling_block,r=35]
execute as @s[scores={Deleter=1..}] run scoreboard players set @a[tag=!shadowgardendomain,r=35,tag=!unselect] DashCD 55

execute as @s[scores={Deleter=11..}] at @s unless entity @e[type=!item,tag=shadowgardendomain,r=35] run scoreboard players set @s Deleter 10

execute as @s[scores={Deleter=6..}] at @s if score mobeventstoggle Mode = two endurance unless entity @s[scores={Mode=69}] run scoreboard players random @s Mode 1 10000
execute as @s[scores={Deleter=6..,Mode=69}] run scoreboard players set @s Deleter 5
execute as @s[scores={Deleter=5,Mode=69}] at @s run function toji_spawn

execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability1=2..}] ability1 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability2=2..}] ability2 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability3=2..}] ability3 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability4=2..}] ability4 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability5=2..}] ability5 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability6=2..}] ability6 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability7=2..}] ability7 2
execute as @s[scores={Deleter=6..}] run scoreboard players remove @a[tag=shadowgardendomain,r=33,scores={ability8=2..}] ability8 2

execute as @s[scores={Deleter=6..}] run execute as @e[tag=!unselect,type=!item,r=33,rm=31] at @s run tp @s ^^^2 facing @e[type=!item,name=ChimeraGarden1,c=1]

tickingarea remove shadowgarden
execute as @s[scores={Deleter=11..}] at @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 shadowgarden
execute as @s[scores={Deleter=11..}] at @s run fill ~33 ~-1 ~33 ~-33 ~-1 ~-33 barrier [] replace air
execute as @s[scores={Deleter=1..10}] at @s run fill ~33 ~ ~33 ~-33 ~ ~-33 air [] replace barrier
execute as @s[scores={Deleter=1..10}] at @s run fill ~33 ~-1 ~33 ~-33 ~-1 ~-33 air [] replace barrier
execute as @s[scores={Deleter=1..10}] at @s run fill ~33 ~1 ~33 ~-33 ~1 ~-33 air [] replace barrier

execute as @s[scores={Deleter=10..}] run execute as @e[type=!item,type=ds:shadowtoads,r=33,tag=!deleting] at @s unless entity @e[tag=!unselect,type=!item,r=0.6,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=!Frames] run tag @s add deleting
execute as @s[scores={Deleter=10..}] run execute as @e[type=!item,type=ds:shadowtoads,r=33,tag=deleting] at @s unless entity @e[tag=!unselect,type=!item,r=0.6,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=!Frames] run tp @s ~~-30~

execute as @s[scores={Deleter=10..}]  if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=10..}]  if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}]  if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}]  if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}]  if block ~~-0.3~ air run tp @s ~~-0.3~

execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,tag=!shadowgardendomain,tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!ds:projectile,type=!armor_stand,tag=!Frames] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,tag=!shadowgardendomain,tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!ds:projectile,type=!armor_stand,tag=!Frames] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,tag=!shadowgardendomain,tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!ds:projectile,type=!armor_stand,tag=!Frames] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,tag=!shadowgardendomain,tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!ds:projectile,type=!armor_stand,tag=!Frames] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,tag=!shadowgardendomain,tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!ds:projectile,type=!armor_stand,tag=!Frames] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=10..}] run effect @e[tag=!unselect,type=!item,r=33,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=!Frames] slowness 3 4 true
execute as @s[scores={Deleter=10..}] run effect @e[tag=!unselect,type=!item,r=33,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=limitlessinfinity,tag=Frames] slowness 3 1 true
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=!Frames] at @s run tp @e[type=!item,type=ds:shadowtoads,r=1,c=1] ~~-0.15~
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33,type=!item,type=!xp_orb,family=!projectile,family=!shikigami,family=!damage,family=!despawncito,type=!ds:projectile,tag=!shadowgardendomain,type=!falling_block,type=!arrow,type=!ds:dash,type=!ds:knockback,tag=!Frames] at @s unless entity @e[type=!item,type=ds:shadowtoads,r=1.5] run summon ds:shadowtoads ~~~
execute as @s[scores={Deleter=10..}] run scoreboard players set @e[tag=!deleting,type=!item,type=ds:shadowtoads] Deleter 9


execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33] at @s run playsound random.swim @a ~~~ 0.05 0.5
execute as @s[scores={Deleter=10..}] run execute as @e[tag=!unselect,type=!item,r=33] at @s run playsound random.swim @a ~~~ 0.025 0.4
execute as @s[scores={Deleter=0..}] run fog @a[rm=66] remove shadowgarden
execute as @s[scores={Deleter=0..5}] run fog @a remove shadowgarden
execute as @s[scores={Deleter=0..8}] run scoreboard players set @a[tag=shadowgardendomain,scores={domain=!0}] domain 0
execute as @s[scores={Deleter=0..8}] run scoreboard players set @a[tag=shadowgardendomain,scores={domainactive=!0}] domainactive 0
execute as @s[scores={Deleter=0..8}] run tag @a[tag=shadowgardendomain] remove shadowgardendomain

execute as @s[scores={Deleter=0..5}] run particle ds:chimera_garden_bye

execute as @s[name=ChimeraGarden1,scores={Deleter=1..}] at @s run execute as @e[type=!item,family=mahoraga,c=1,r=50] at @s run function damages/shadowgarden
execute as @s[name=ChimeraGarden1,scores={Deleter=1..}] at @s run execute as @e[tag=!unselect,type=!item,scores={domain=0,domainactive=0,wheelactive=1..},r=50,c=1] at @s positioned ^^^2 run function damages/shadowgarden



execute as @s[scores={Deleter=1..4}] run execute as @e[type=!item,family=shikigami,r=33,type=!ds:toji_awakening] at @s run function shikigami/shikigami_callback

