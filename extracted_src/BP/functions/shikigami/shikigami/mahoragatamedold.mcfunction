scoreboard players add @s Stun 0
scoreboard players add @s move 0
scoreboard players add @s Disabled 0
scoreboard players add @s Energy 0
scoreboard players add @s endurance 0
scoreboard players add @s cutscene 0
scoreboard players remove @s[scores={Energy=1..}] Energy 1

execute as @s if entity @e[type=!item,tag=griefable] run kill @e[type=item,r=20]

execute as @s[tag=explosion_adapted] run kill @e[type=!item,type=ds:knockback,r=15]

effect @s[scores={Energy=0..1}] regeneration 2 3 true
effect @s[scores={Energy=0}] instant_health 1 0 true
scoreboard players set @s[scores={Energy=0}] Energy 90

scoreboard players set @s[scores={cutscene=1..}] Disabled 25
scoreboard players set @s[scores={cutscene=1..}] move 0
scoreboard players set @s[scores={cutscene=1..}] chance 0

scoreboard players set @s[scores={adapttimer=1}] move 0
tag @s[scores={adapttimer=1..2}] add adapting
scoreboard players set @s[scores={adapttimer=1,move=0}] cutscene 80
scoreboard players set @s[scores={cutscene=1..}] Disabled 6
scoreboard players remove @s[scores={adapttimer=1..},tag=!ClashBarrage] adapttimer 1
tag @s[tag=ClashBarrage] remove adapting
tag @s[scores={cutscene=1..2}] remove adapting
execute as @s[scores={cutscene=1..},tag=adapting] at @s run function shikigami/shikigami/mahoraga_adapt2

execute as @s at @s if entity @e[type=!item,name=AirCannon] run execute as @e[type=!item,name=AirCannon] at @s run function shikigami/shikigami/mahoraga/air_cannon
execute as @s at @s if entity @e[type=!item,name=RockThrow] run execute as @e[type=!item,name=RockThrow] at @s run function shikigami/shikigami/mahoraga/rocks

execute as @s unless entity @e[type=!item,tag=mahoraga_tame,r=200] run kill @s

execute as @s unless block ~~~ air unless block ~~~ water unless block ~~~ tallgrass unless block ~ ~ ~ double_plant run tp @s ~~1~
execute as @s if block ~~-0.6~ water run tp @s ~~-0.78~

execute as @s run effect @a[r=4.5] weakness 2 0 true

execute as @s unless entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=80,m=!c] run effect @s slowness 1 3 true
execute as @s if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=80,m=!c,rm=7] run effect @s speed 1 2 true
execute as @s if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,m=!c,r=7] run effect @s speed 0 20 true

execute as @s[type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0},tag=!serious] at @s if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=7.5] run scoreboard players random @s chance 0 10
execute as @s[type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0},tag=serious] at @s if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=7.5] run scoreboard players random @s chance 0 10

execute as @s[type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0},tag=!serious] at @s unless entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=7.5] if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,rm=7.5,r=21] run scoreboard players random @s chance 11 12
execute as @s[type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0},tag=serious] at @s unless entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=7.5] if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,rm=7.5,r=21] run scoreboard players random @s chance 11 16

execute as @s[type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0},tag=!serious] at @s unless entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=21] if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,rm=21,r=90] run scoreboard players random @s chance 14 19
execute as @s[type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0},tag=serious] at @s unless entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,r=21] if entity @e[type=!item,type=!item,type=!xp_orb,type=!ds:projectile,type=!armor_stand,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami,c=1,tag=!mahoraga_tame,type=!arrow,rm=21,r=90] run scoreboard players random @s chance 14 19

execute as @s[scores={move=0}] if block ~~~ water run scoreboard players set @s chance 97

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=1,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=2,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=3,Stun=0,move=0}] move 35
scoreboard players set @s[scores={chance=3,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=4,Stun=0,move=0}] move 30
scoreboard players set @s[scores={chance=4,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=5,Stun=0,move=0}] move 75
scoreboard players set @s[scores={chance=5,Stun=0,move=1..}] Disabled 35

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=6,Stun=0,move=0}] move 28
scoreboard players set @s[scores={chance=6,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=7,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=7,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=8,Stun=0,move=0}] move 61
scoreboard players set @s[scores={chance=8,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=10,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=10,move=1..}] Disabled 40
execute as @s[scores={cutscene=1..},tag=ClashBarrage] at @s run function shikigami/shikigami/mahoraga_clash_barrage
execute as @s[tag=makorabarragewin,scores={move=1..},c=1,family=mahoraga] at @s run function shikigami/shikigami/mahoraga/barrage_win_makora
execute as @e[type=!item,tag=makorabarragewin,scores={move=1..},c=1,family=!mahoraga,tag=!mahoraga_tame,family=!shikigami] at @s run function shikigami/shikigami/mahoraga/barrage_win_challenger

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=11,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=11,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=12,Stun=0,move=0}] move 26
scoreboard players set @s[scores={chance=12,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=13,Stun=0,move=0}] move 30
scoreboard players set @s[scores={chance=13,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=14,Stun=0,move=0}] move 96
scoreboard players set @s[scores={chance=14,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=15,Stun=0,move=0}] move 28
scoreboard players set @s[scores={chance=15,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=16,Stun=0,move=0}] move 28
scoreboard players set @s[scores={chance=16,Stun=0,move=1..}] Disabled 8

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=98,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=98,Stun=0,move=1..}] Disabled 8

execute as @s[scores={move=0,Disabled=0,chance=0..97}] if block ~~~ water run scoreboard players set @s chance 97
scoreboard players set @s[type=ds:mahoragatamed,scores={chance=97,Stun=0,move=0}] move 35
scoreboard players set @s[scores={chance=97,Stun=0,move=8..}] Disabled 5



scoreboard players set @s[scores={chance=99,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[scores={move=1..4}] chance 0

scoreboard players set @s Hyper 5
tag @s[type=ds:mahoragatamed] add Big

execute as @s[scores={chance=1,move=1..}] at @s run function shikigami/shikigami/mahoraga/slash1
execute as @s[scores={chance=2,move=1..}] at @s run function shikigami/shikigami/mahoraga/slash_down
execute as @s[scores={chance=3,move=1..}] at @s run function shikigami/shikigami/mahoraga/slash_double
execute as @s[scores={chance=4,move=1..}] at @s run function shikigami/shikigami/mahoraga/kick1
execute as @s[scores={chance=5,move=1..}] at @s run function shikigami/shikigami/mahoraga/kick2
execute as @s[scores={chance=6,move=1..}] at @s run function shikigami/shikigami/mahoraga/airswipe
execute as @s[scores={chance=7,move=1..}] at @s run function shikigami/shikigami/mahoraga/punch1
execute as @s[scores={chance=8,move=1..}] at @s run function shikigami/shikigami/mahoraga/grab_drag
execute as @s[scores={chance=10,move=1..}] at @s run function shikigami/shikigami/mahoraga/barrage_windup

execute as @s[scores={chance=11,move=1..}] at @s run function shikigami/shikigami/mahoraga/ground_pound
execute as @s[scores={chance=12,move=1..}] at @s run function shikigami/shikigami/mahoraga/sprint_slashes
execute as @s[scores={chance=13,move=1..}] at @s run function shikigami/shikigami/mahoraga/charge_punch
execute as @s[scores={chance=99,move=1..}] at @s run function shikigami/shikigami/mahoraga/grow_punch
execute as @s[scores={chance=14,move=1..}] at @s run function shikigami/shikigami/mahoraga/slamdown
execute as @s[scores={chance=15,move=1..}] at @s run function shikigami/shikigami/mahoraga/aircannon

execute as @s[scores={chance=16,move=1..}] at @s run function shikigami/shikigami/mahoraga/rocktoss
execute as @s[scores={chance=98,move=1..}] at @s run function shikigami/shikigami/mahoraga/tp_headslam
execute as @s[scores={chance=97,move=1..}] at @s run function shikigami/shikigami/mahoraga/water_burst