tickingarea remove deadlysentencing
execute as @s run tickingarea add ~33 ~ ~33 ~-33 ~ ~-33 deadlysentencing

execute as @s[scores={Deleter=32..}] at @s run scoreboard players set @s Deleter 1200

tag @s[tag=!Frames] add Frames
tag @s[tag=!DomainExpansion] add DomainExpansion
effect @s instant_health 1 10 true
effect @s fire_resistance 1 10 true

execute as @s[scores={Deleter=32..}] at @s unless entity @e[r=50,tag=the_judge,scores={domainactive=1..}] run function judgeman/deadlysentencing_end

execute as @s[scores={Deleter=31..}] at @s run playsound ambient.soulsand_valley.mood @a[r=50] ^^^35 99999 0.35 9999

execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,family=mahoraga,r=50] at @s run function damages/deadlysentencing
execute as @s[scores={Deleter=1..}] at @s run execute as @e[c=1,scores={domain=0,domainactive=0,wheelactive=1..},r=50] at @s positioned ^^^2 run function damages/deadlysentencing

execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={BasicM1=!0},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] BasicM1 0
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={BasicM1s=!0},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] BasicM1s 0
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,tag=!the_judge,tag=!on_trial,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Stun 15
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Camera 5
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] infinity 5
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Frames 5
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability1=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability1 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability2=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability2 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability3=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability3 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability4=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability4 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability5=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability5 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability6=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability6 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability7=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability7 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability8=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability8 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability9=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability9 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability10=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability10 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability11=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability11 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={ability12=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] ability12 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={wep1=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] wep1 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={wep2=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] wep2 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={wep3=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] wep3 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={wep4=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] wep4 50
execute as @s[scores={Deleter=1..}] at @s run scoreboard players set @e[r=60,scores={wep5=0..1},type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] wep5 50

execute as @s[scores={Deleter=1..}] at @s run particle ds:deadly_sentencing1
execute as @s[scores={Deleter=1..}] at @s run particle ds:deadly_sentencing2


execute as @s[scores={Deleter=6..}] at @s run tp @e[tag=the_judge,r=40,c=1] ^^^5 facing ~~~
execute as @s[scores={Deleter=6..}] at @s run tp @e[tag=on_trial,r=40,c=1] ^^^-4.75 facing ~~~
execute as @s[scores={Deleter=1..}] at @s run tp @e[type=ds:judgeman,c=1,name=!Judgeman,r=40] ^^1^5.75 facing ~~1~


execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s[scores={Deleter=1..}] Energy 0
scoreboard players remove @s[scores={Energy=1..}] Energy 1
scoreboard players set @s[scores={Energy=0}] Energy 14

execute as @s[scores={Deleter=32..}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 barrier [] replace air
execute as @s[scores={Deleter=32..}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 barrier [] replace air
execute as @s[scores={Deleter=32..}] at @s run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={Deleter=32..}] at @s run fill ~33 299 ~33 ~-33 299 ~-33 barrier [] replace air

execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s @s
execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ^^^ facing @e[type=ds:deadly_sentencing,c=1]
execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=40,rm=31,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ^^5^5 facing @e[type=ds:deadly_sentencing,c=1]

execute as @s[scores={Deleter=1..}] at @s run tp @s @s
execute as @s[scores={Deleter=1..}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1

execute as @s[scores={Deleter=32..}] at @s run execute as @e[tag=!the_judge,tag=!on_trial,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,r=8] at @s run tp @s ~4~~

execute as @s[scores={Deleter=1..}] at @s run execute as @e[r=50,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ~~~


execute as @s[scores={Deleter=1..30}] at @s run scoreboard players set @e[r=90,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] Stun 6
execute as @s[scores={Deleter=26..27}] at @s run tp @e[scores={domainactive=1..},tag=judgeman,r=100] ~ ~1~
execute as @s[scores={Deleter=25}] at @s run camera @a[r=90] fade time 0.25 0.95 1.5 color 255 255 255
execute as @s[scores={Deleter=9..15}] at @s run title @a[tag=!impactframesoff,r=90] title 
execute as @s[scores={Deleter=1..2}] at @s run title @a[tag=!impactframesoff,r=90] title §l
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run fill ~30 301 ~33 ~-30 301 ~-30 air [] replace barrier
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run fill ~30 300 ~33 ~-30 300 ~-30 air [] replace barrier
execute as @s[scores={Deleter=1..21}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run fill ~30 299 ~33 ~-30 299 ~-30 air [] replace barrier

execute as @s[scores={Deleter=1..22}] at @s run execute as @e[r=50,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air [] replace barrier

execute as @s[scores={Deleter=1..21}] at @s run fill ~30 301 ~30 ~-30 301 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~30 300 ~30 ~-30 300 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~30 299 ~30 ~-30 299 ~-30 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 301 ~34 ~-34 301 ~-34 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 300 ~34 ~-34 300 ~-34 air
execute as @s[scores={Deleter=1..21}] at @s run fill ~34 299 ~34 ~-34 299 ~-34 air
execute as @s[scores={Deleter=1..15}] at @s run camerashake add @a[r=100] 2 2
execute as @s[scores={Deleter=20}] at @s run playsound music.domainbreak @a[r=1000] ~~~ 100000 1 10000
execute as @s[scores={Deleter=14..25}] at @s run scoreboard players set @e[name="Judgeman",r=50] Deleter 5
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=deadlysentencingBarrier,c=1] at @s run particle ds:domain_smash1
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=deadlysentencingBarrier,c=1] at @s run particle ds:domain_smash2
execute as @s[scores={Deleter=1..15}] at @s positioned ~~-200~0 run execute as @e[name=deadlysentencingBarrier,c=1] at @s run particle ds:domain_smash3
execute as @s[scores={Deleter=9..12}] at @s positioned ~~-200~0 run kill @e[name=deadlysentencingBarrier,c=1] 
execute as @s[scores={Deleter=9..10}] at @s run scoreboard players set @e[scores={domainactive=3..},r=90,tag=judgeman] domainactive 2

execute as @s[scores={Deleter=5..8}] at @s run execute as @e[r=360,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal] at @s run tp @s ~~0.8~0


execute as @s[scores={Deleter=1..10}] at @s run scoreboard players set @e[r=90,type=!item,family=!despawncito,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:judgeman,type=!ds:deadly_sentencing] tpdown 4

