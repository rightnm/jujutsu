tickingarea remove malevolentshrine
execute as @s run tickingarea add ~50 ~ ~50 ~-50 ~ ~-50 malevolentshrine

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

scoreboard players set @a[scores={domainactive=1..35,move=2445..3001},r=200,tag=fuga_use,tag=sukuna] domainactive 40
execute if entity @a[scores={domainactive=1..,move=2445..3001},r=200,tag=fuga_use,tag=sukuna] run scoreboard players set @s[scores={Deleter=..35}] Deleter 40

execute if entity @a[scores={domainactive=1..,Energy=0..1,domain=0,Disabled=0,Disabled2=0},r=200] run scoreboard players set @s[scores={Deleter=32..}] Deleter 31

execute as @s[scores={Deleter=50..}] at @s unless entity @e[tag=sukuna,scores={domainactive=1..},r=200] run scoreboard players set @s Deleter 32

execute as @s[scores={Deleter=1..}] at @s run kill @e[type=item,r=200]

execute as @s[scores={Deleter=1..}] at @s run kill @e[type=arrow,r=200]

tag @s[tag=!Big] add Big

execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=200] at @s run function damages/sukuna_domain
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=200] at @s run function damages/cleave_damage
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=200] at @s run function damages/slash_damage
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,scores={domain=0,domainactive=0,wheelactive=1..},r=200] at @s positioned ^^^2 run function damages/sukuna_domain
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,scores={domain=0,domainactive=0,wheelactive=1..},r=200] at @s positioned ^^^2 run function damages/slash_damage
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,scores={domain=0,domainactive=0,wheelactive=1..},r=200] at @s positioned ^^^2 run function damages/cleave_damage

execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[scores={infinity=4..},r=200,tag=!domainactive,type=!ds:shrine_dmg,tag=!domainimmune] infinity 3

execute as @s[scores={Deleter=31..,Evade=0..}] at @s run camerashake add @a[tag=!fuga_use,r=200] 0.1 0.08

execute as @s[scores={Deleter=31..,Evade=0..}] at @s run particle ds:malevolent_shrine_floor ~~0.1~

execute as @s[scores={Deleter=31..,Evade=125}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes1 ~~1~

execute as @s[scores={Deleter=31..}] at @s run execute as @a[r=10,tag=domainactive] at @s if block ~~~ barrier run tp @s ~~1~

execute as @s[scores={Deleter=31..,Evade=0..}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250] run particle ds:malevolent_kitchen ~~~

execute as @s[scores={Deleter=31..,Evade=125}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes9 ~~1~
execute as @s[scores={Deleter=31..,Evade=75}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes10 ~~1~
execute as @s[scores={Deleter=31..,Evade=55}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes9 ~~1~
execute as @s[scores={Deleter=31..,Evade=15}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes9 ~~1~
execute as @s[scores={Deleter=31..,Evade=15}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_kitchen_slashes10 ~~1~

execute as @s[scores={Deleter=31..,Evade=0..,Energy=1..3}] at @s run scoreboard players add @p[tag=domainactive,tag=sukuna,r=250] fuga 1

execute as @s[scores={Deleter=31..,Evade=125}] at @s run particle ds:malevolent_shockwave2 ~~7~

execute as @s[scores={Deleter=31..,Evade=0..}] at @s unless entity @e[tag=fuga_use,tag=domainactive,r=250] run particle ds:malevolent_kitchen_slashes1 ~~1~
execute as @s[scores={Deleter=31..,Evade=0..}] at @s if entity @e[tag=fuga_use,tag=domainactive,r=250,scores={move=2751..}] run particle ds:malevolent_kitchen_slashesv2 ~~1~


execute as @s[scores={Energy=1..2}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run particle ds:malevolent_dust1

execute as @s[scores={Deleter=31..,Evade=0..}] at @s run gamerule dotiledrops false


#shrine cutscene mahoraga
execute as @s[tag=!mahoraga_shrine_cutscene] at @s if entity @e[tag=sukuna,scores={domain=1..110},c=1] if entity @e[family=mahoraga,r=250] run scoreboard players set @s sukunacutscene 1001
execute as @s[tag=!mahoraga_shrine_cutscene] at @s if entity @e[tag=sukuna,scores={domain=1..110},c=1] if entity @e[family=mahoraga,r=250] run tag @s add mahoraga_shrine_cutscene
execute as @s[scores={sukunacutscene=1..},tag=mahoraga_shrine_cutscene] at @s run function sukuna/attacks/domains/mahoraga_shrine_cutscene



execute as @s[scores={Deleter=31..,Evade=0..,Energy=1}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run playsound mob.shrine_slashes @a ^55^12^25 99999 1.35 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=1}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250] run playsound mob.shrine_slashes @a ^^4^ 99999 1.35 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250] run playsound mob.shrine_slashes @a ^^12^-62 99999 1.5 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=2}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250] run playsound mob.shrine_slashes @a ^32 ^ ^ 99999 1.75 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=3}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250] run playsound mob.shrine_slashes @a ^^4^56 99999 1.35 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=4}] at @s unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run playsound mob.shrine_slashes @a ^-7 ^-18 ^3 99999 2 99999

execute as @s at @s unless entity @s[scores={EnergyCap=0..}] run scoreboard players add @s EnergyCap 0
scoreboard players remove @s[scores={EnergyCap=1..}] EnergyCap 1

execute as @s[scores={Evade=0..,EnergyCap=1..3}] at @s run tickingarea remove shrinedmg1

execute as @s[scores={Evade=0..,EnergyCap=0}] at @s if entity @e[tag=griefable,c=1] run summon ds:shrine_dmg ~~-50~
execute as @s[scores={Evade=0..,EnergyCap=0,Energy=1..3}] at @s if entity @e[tag=griefable,c=1]  positioned ~~-50~ run spreadplayers ~ ~ 60 80 @e[type=ds:shrine_dmg,c=1]
execute as @s[scores={Evade=0..,EnergyCap=0,Energy=4..}] at @s if entity @e[tag=griefable,c=1]  positioned ~~-50~ run spreadplayers ~ ~ 60 180 @e[type=ds:shrine_dmg,c=1]
execute as @s[scores={Evade=0..,EnergyCap=0}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:shrine_dmg,c=1] at @s if entity @e[tag=sukuna,tag=domainactive,r=33] run kill @s
execute as @s[scores={Evade=0..,EnergyCap=0}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:shrine_dmg,c=1] at @s if entity @e[type=ds:malevolent_kitchen,r=33] run kill @s
execute as @s[scores={Evade=0..,EnergyCap=0}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:shrine_dmg,c=1] at @s run effect @e[r=20] resistance 1 20 true
execute as @s[scores={Evade=0..,EnergyCap=0}] at @s if entity @e[tag=griefable,c=1]  run execute as @e[type=ds:shrine_dmg,c=1] at @s run tickingarea add ~15~~15~-15~~-15 shrinedmg1

execute as @s at @s unless entity @s[scores={energystat=0..}] run scoreboard players set @s energystat 3241

effect @e[family=mahoraga,r=200] slowness 1 4 true

scoreboard players remove @s[scores={energystat=1..}] energystat 1
execute as @s[scores={energystat=0..1}] at @s  unless entity @e[tag=fuga_use,scores={move=2000..2750},r=250]  run execute as @a[r=300] at @s run playsound music.malevolent_kitchen2 @s ~~~ 9999 1 9999
scoreboard players set @s[scores={energystat=0}] energystat 650


scoreboard players set @s[scores={EnergyCap=0}] EnergyCap 17

execute as @s at @s unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players remove @s[scores={Energy=1..}] Energy 1

scoreboard players set @a[tag=!domainactive,r=200,tag=!unselect] DashCD 20

execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run kill @e[type=falling_block,r=200]
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run execute as @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=!domainimmune,r=200,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] at @s run playsound mob.sword @a[r=200] ~~~ 99999 2 99999
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run execute as @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=!domainimmune,r=200,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] at @s run particle ds:carve1 ~~1~
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run execute as @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=!domainimmune,r=200,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] at @s run particle ds:malevolent_shrine_slashes10 ~~1~
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run damage @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=!domainimmune,r=200,tag=!heavenlyrestriction,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] 3 override
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run damage @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=heavenlyrestriction,tag=!domainimmune,r=200,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] 1 override
execute as @s[scores={Deleter=31..,Evade=0..,Energy=0}] at @s run scoreboard players set @e[tag=!domainactive,type=!ds:shrine_dmg,family=!projectile,family=!damage,family=!despawncito,tag=!domainimmune,r=200,type=!xp_orb,type=!ds:projectile,tag=!unselect,type=!armor_stand] Hit 2

scoreboard players random @s[scores={Energy=0}] Energy 1 4

scoreboard players remove @s[scores={Evade=1..}] Evade 1
scoreboard players set @s[scores={Evade=0}] Evade 150

execute as @s[scores={Deleter=22..,Evade=5..}] at @s run fill ~9~3~9 ~-9~~-9 barrier [] replace air
execute as @s[scores={Deleter=22..,Evade=5..}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~5~21~5 ~-5~~-5 barrier [] replace air
execute as @s[scores={Deleter=22..,Evade=5..}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~10~2~10 ~-10~~-10 barrier [] replace air
execute as @s[scores={Deleter=22..,Evade=5..}]  at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~11~1~11 ~-11~~-11 barrier [] replace air
execute as @s[scores={Deleter=22..,Evade=5..}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~12~~12 ~-12~~-12 barrier [] replace air
execute as @s[scores={Deleter=22..,Evade=5..}] at @s run execute as @e[type=ds:malevolent_kitchen,c=1] at @s run fill ~~1~ ~~~ air [] replace barrier


execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=44] at @s run fill ~15 ~ ~15 ~-15 -15 ~-15 air [] replace barrier

tp @s ~~~
tp @s @s
