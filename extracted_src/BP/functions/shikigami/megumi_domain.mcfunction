execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run stopsound @a[r=33]
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run kill @e[type=!item,type=ds:projectile,r=33]
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players set @e[type=!item,r=33,rm=0.2] Stun 15
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players set @a[r=33,rm=0.2,scores={move=4..}] move 3
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run playanimation @a[r=33,rm=0.2] animation.stunned
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run tp @s @s
playanimation @s[scores={domain=200..},tag=shikigami,tag=!shadowgardendomain2] animation.chimera_domain2
execute as @s[scores={domain=190,Energy=1..50},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run playsound music.chimera @a[r=33] ~~~ 0.4 1 10000

execute as @s[scores={domain=80},tag=shikigami,tag=!shadowgardendomain2] at @s run playsound music.chimera2 @a[r=33] ~~~ 10000 1 10000

tag @s[scores={domain=1..190}] remove form12
tag @s[scores={domain=1..190}] remove form12b
execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0


scoreboard players add @s[scores={domain=200..},tag=shikigami,tag=!shadowgardendomain2] infinity 15
scoreboard players add @s[scores={domain=9..},tag=shikigami,tag=!shadowgardendomain2] infinity 1
scoreboard players set @s[scores={domain=9..},tag=shikigami,tag=!shadowgardendomain2] ProjImmune 50

scoreboard players set @s[scores={domain=1..8},tag=shikigami,tag=!shadowgardendomain2] infinity 0

execute as @s[scores={domain=1..},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=shikigami,tag=!shadowgardendomain2] remove form6
tag @s[scores={domain=1..5},tag=shikigami,tag=!shadowgardendomain2] remove domainlayout
scoreboard players set @s[scores={domain=1..},tag=shikigami,tag=!shadowgardendomain2] Camera 4

execute as @s[scores={domain=148},tag=shikigami,tag=!shadowgardendomain2] at @s run summon ds:projectile ChimeraGarden1
execute as @s[scores={domain=146..148},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players set @e[type=!item,name=ChimeraGarden1,c=1] Deleter 200
execute as @s[scores={domain=145},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players operation @e[type=!item,name=ChimeraGarden1,c=1] Deleter += @s Energy
execute as @s[scores={domain=144},tag=shikigami,tag=!shadowgardendomain2] at @s run scoreboard players operation @s domainactive = @e[type=!item,name=ChimeraGarden1,c=1] Deleter

execute as @s[scores={domain=135..145},tag=shikigami,tag=!shadowgardendomain2] at @s run execute as @e[type=!item,name=ChimeraGarden1,c=1] at @s run particle ds:chimera_start1 ~~1~
execute as @s[scores={domain=130..145},tag=shikigami,tag=!shadowgardendomain2] at @s run execute as @e[type=!item,name=ChimeraGarden1,c=1] at @s run particle ds:chimera_start2 ~~0.2~
execute as @s[scores={domain=135..145},tag=shikigami,tag=!shadowgardendomain2] at @s run execute as @e[type=!item,name=ChimeraGarden1,c=1] at @s run particle ds:chimera_start3 ~~0.2~
execute as @s[scores={domain=135..145},tag=shikigami,tag=!shadowgardendomain2] at @s run execute as @e[type=!item,name=ChimeraGarden1,c=1] at @s run particle ds:chimera_start4 ~~~
execute as @s[scores={domain=135},tag=shikigami,tag=!shadowgardendomain2] at @s if entity @e[type=!item,tag=griefable] run fill ~33 ~ ~33 ~-33 ~1 ~-33 air
execute as @s[scores={domain=134},tag=shikigami,tag=!shadowgardendomain2] at @s if entity @e[type=!item,tag=griefable]  run fill ~33 ~1 ~33 ~-33 ~2 ~-33 air
execute as @s[scores={domain=100..},tag=shikigami,tag=!shadowgardendomain2] at @s run kill @e[type=!item,type=item,r=66]
tag @e[type=!item,name=ChimeraGarden1] add Frames

execute as @s[scores={domain=1..110},tag=shikigami,tag=!shadowgardendomain2] at @s run tag @s add shadowgardendomain
execute as @s[scores={domain=100},tag=shikigami,tag=!shadowgardendomain2] at @s run tag @e[type=!item,name=ChimeraGarden1,c=1] add shadowgarden
execute as @s[scores={domain=160},tag=shikigami,tag=!shadowgardendomain2] at @s run fog @a[rm=66] remove shadowgarden
execute as @s[scores={domain=160},tag=shikigami,tag=!shadowgardendomain2] at @s run fog @a[r=66] push minecraft:fog_hell shadowgarden

execute as @s[scores={domain=160},tag=shikigami,tag=!shadowgardendomain2] at @s run camera @a[r=33] fade time 0.25 0.5 0.5 color 0 0 0

execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.25 in_out_circ pos ^ ^-0.75 ^1.15 rot ~-41 ~180
execute as @s[scores={domain=194},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.25 in_out_circ pos ^ ^-0.5 ^1.5 rot ~-13 ~180

execute as @s[scores={domain=164},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_out_circ pos ^18 ^17 ^15 rot ~25 ~80
execute as @s[scores={domain=124},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2 in_out_circ pos ^-7 ^25 ^25 rot ~35 ~200

execute as @s[scores={domain=200},tag=shikigami,tag=!shadowgardendomain2] at @s run effect @a[r=66] night_vision 8 1 true
execute as @s[scores={domain=1..6},tag=shikigami,tag=!shadowgardendomain2] at @s run fog @a remove shadowgarden
execute as @s[scores={domain=90},tag=shikigami,tag=!shadowgardendomain2] at @s run camera @a[r=33] fade time 0.45 0.5 0.5 color 0 0 0

execute as @s[scores={domain=89..94},tag=shikigami,tag=!shadowgardendomain2] at @s run particle ds:shadowgarden_red1 ~~1~
execute as @s[scores={domain=89..94},tag=shikigami,tag=!shadowgardendomain2] at @s run particle ds:shadowgarden_red2 ~~0.67~
execute as @s[scores={domain=80},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.25 in_out_circ pos ^ ^-0.5 ^2.5  rot ~-25 ~180
execute as @s[scores={domain=74},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.25 in_out_circ pos ^ ^-0.25 ^1  rot ~-10 ~180


execute as @s[scores={domain=1..5},tag=shikigami,tag=!shadowgardendomain2] at @s anchored eyes run camera @a[r=33] clear


