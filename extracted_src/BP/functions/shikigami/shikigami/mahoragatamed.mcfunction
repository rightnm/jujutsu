execute unless entity @s[scores={Exp=0..}] run scoreboard players add @s Exp 0
scoreboard players add @s[scores={Exp=0}] Stun 0
scoreboard players add @s[scores={Exp=0}] knock 0
scoreboard players add @s[scores={Exp=0}] knockdown 0
scoreboard players add @s[scores={Exp=0}] move 0
scoreboard players add @s[scores={Exp=0}] Disabled 0
scoreboard players add @s[scores={Exp=0}] Energy 0
scoreboard players add @s[scores={Exp=0}] endurance 0
scoreboard players add @s[scores={Exp=0}] cutscene 0
scoreboard players add @s[scores={Exp=0}] chance 0
scoreboard players add @s[scores={Exp=0}] agility 0
scoreboard players add @s[scores={Exp=0}] BasicM1 0
scoreboard players add @s[scores={Exp=0}] strength 45
scoreboard players add @s[scores={Exp=0}] damageadd 16
execute as @s[scores={Exp=0}] at @s run scoreboard objectives add adaptsmall dummy
scoreboard players add @s[scores={Exp=0}] adaptsmall 0
scoreboard players set @s[scores={Exp=0}] Exp 1

scoreboard players remove @s[scores={Energy=1..}] Energy 1
scoreboard players remove @s[scores={Stun=2..}] Stun 1
scoreboard players remove @s[scores={agility=1..}] agility 1
scoreboard players remove @s[scores={BasicM1=1..}] BasicM1 1

execute as @s[tag=soul_adapted,scores={move=1..}] at @s positioned ^^^5 run scoreboard players set @e[scores={Hit=1..},r=4.9] antiheal 50

execute as @s at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @e[tag=shikigami,tag=mahoraga_tame,c=1] ability11 12000

execute as @s[scores={Disabled=8..,move=0,cutscene=0,BasicM1=0}] at @s if entity @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance -20 -21
execute as @s[scores={Disabled=8..,move=0,cutscene=0,BasicM1=0}] at @s if entity @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players set @s BasicM1 7

execute as @s at @s run execute as @e[tag=!Frames,r=1.5,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!mahoraga] at @s run scriptevent ds:knockback -1

execute as @s[scores={cutscene=0}] unless entity @a[r=8,tag=!unselect] if entity @a[r=50,rm=8,tag=!unselect] run scoreboard players add @s strength 1
execute as @s[scores={cutscene=0}] unless entity @a[r=8,tag=!unselect] if entity @a[r=50,rm=8,scores={ltncloak=1..},tag=!unselect] run scoreboard players add @s strength 4

scoreboard players set @s[scores={strength=400..}] flashstep 6
execute as @s[scores={flashstep=2..3}] at @s run tp @s @p[r=50,tag=!unselect]
execute as @s[scores={flashstep=1..}] at @s run particle ds:agito_dash1 ~~~
execute as @s[scores={flashstep=1..}] at @s run particle ds:agito_dash2 ~~~
execute as @s[scores={flashstep=1..}] at @s run scoreboard players set @p[r=50,tag=!Frames,tag=!unselect] Stun 5
scoreboard players set @s[scores={flashstep=1..,strength=1..}] strength 0

execute as @s[scores={BasicM1=1..}] at @s run function shikigami/shikigami/mahoraga/m1s


execute as @s[tag=adapted_1,tag=!rct_adapting,tag=!rct_adapted] at @s if entity @e[scores={hakarimode=1..,detect_health=0..},r=20] run tag @s add rct_adapting

execute as @s[tag=adapted_1,tag=!rct_adapting,tag=!rct_adapted] at @s if entity @e[scores={rct=1..,detect_health=0..},r=20] run tag @s add rct_adapting
execute as @s[tag=rct_adapted] at @s positioned ^^^5 run execute as @e[scores={rct=1..},r=12] at @s run function rct_countered
execute as @s[tag=rct_adapted] at @s positioned ^^^5 run execute as @e[scores={hakarimode=1..},r=12] at @s run function rct_countered


scoreboard players set @s[scores={adaptsmall=0..2,adapttimer=1..}] adapttimer 500

execute as @s[scores={agility=0,adapttimer=0..,move=0,cutscene=0}] run tag @s add small_adapt
execute as @s[scores={agility=0,adapttimer=0..,move=0,cutscene=0}] run scoreboard players set @s move 27
scoreboard players set @s[tag=small_adapt] agility 400
tag @s[scores={move=0,cutscene=0},tag=small_adapt] remove small_adapt

scoreboard players set @s[tag=!small_adapt,scores={move=1..,agility=0..2}] agility 30

playanimation @s[scores={move=25..},tag=small_adapt] animation.mahoraga.small_adaption

execute as @s[scores={move=5..},tag=small_adapt] at @s run tp @s ~~~
effect @s[scores={move=7},tag=small_adapt] instant_health 1 5 true
execute as @s[scores={move=7},tag=small_adapt] at @s run playsound music.adapt @a[r=200]
execute as @s[scores={move=7},tag=small_adapt] at @s run tellraw @a[r=200] {"rawtext":[{"text":"§o§gThe Eight Handled Wheel revolves..."}]}
scoreboard players add @s[scores={move=5},tag=small_adapt] adaptsmall 1
tag @s[scores={move=1..3},tag=small_adapt] remove small_adapt

tag @s[scores={cutscene=1..},tag=small_adapt] remove small_adapt

scoreboard players set @s[scores={cutscene=1..}] Hyper 5
scoreboard players set @s[scores={move=1..}] Hyper 5

execute as @s if entity @e[type=!item,tag=griefable] run kill @e[type=item,r=20]

execute as @s[tag=explosion_adapted] run kill @e[type=!item,type=ds:knockback,r=15]

effect @s[scores={Energy=0..1}] regeneration 2 3 true
effect @s[scores={Energy=0}] instant_health 1 0 true
scoreboard players set @s[scores={Energy=0}] Energy 75

scoreboard players set @s[scores={cutscene=1..}] Disabled 25
scoreboard players set @s[scores={cutscene=1..,move=1..}] move 0
scoreboard players set @s[scores={cutscene=1..,chance=!0}] chance 0

scoreboard players set @s[scores={adapttimer=1,move=1..}] move 0
tag @s[scores={adapttimer=1..2,adaptsmall=3..},tag=!adapting] add adapting
scoreboard players set @s[scores={adapttimer=1..2,move=0,adaptsmall=3..}] cutscene 80
scoreboard players set @s[scores={cutscene=1..}] Disabled 6
scoreboard players set @s[scores={cutscene=1..}] agility 420
scoreboard players remove @s[scores={adapttimer=1..},tag=!ClashBarrage] adapttimer 1
scoreboard players set @s[scores={cutscene=1..,adaptsmall=1..},tag=adapting] adaptsmall 0
tag @s[tag=ClashBarrage,tag=adapting] remove adapting
tag @s[scores={cutscene=1..2},tag=adapting] remove adapting
execute as @s[scores={cutscene=1..},tag=adapting] at @s run function shikigami/shikigami/mahoraga_adapt2

execute as @s at @s if entity @e[type=!item,name=AirCannon] run execute as @e[type=!item,name=AirCannon] at @s run function shikigami/shikigami/mahoraga/air_cannon
execute as @s at @s if entity @e[type=!item,name=RockThrow] run execute as @e[type=!item,name=RockThrow] at @s run function shikigami/shikigami/mahoraga/rocks

execute as @s unless entity @e[tag=mahoraga_tame,r=300] run kill @s

execute as @s unless block ~~~ air unless block ~~~ water unless block ~~~ tallgrass unless block ~ ~ ~ double_plant run tp @s ~~1~
execute as @s if block ~~-0.6~ water run tp @s ~~-0.78~

execute as @s run effect @a[r=4.5,tag=!unselect] weakness 2 3 true

execute as @s[scores={endurance=700},tag=serious] at @s run scoreboard players set @s chance 99
execute as @s[scores={endurance=700},tag=serious] at @s run scoreboard players set @s move 51


execute as @s if entity @e[rm=7,r=80,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run effect @s speed 1 2 true
execute as @s if entity @e[r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run effect @s speed 0 20 true


execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0,knock=0,knockdown=0},tag=!serious,tag=!small_adapt] at @s if entity @e[r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance -1 10
execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0,Stun=0,knock=0,knockdown=0},tag=serious,tag=!small_adapt] at @s if entity @e[r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance -3 10

execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0,knock=0,knockdown=0},tag=!serious,tag=!small_adapt] at @s unless entity @e[r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] if entity @e[rm=7.5,r=21,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance 11 12
execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0,knock=0,knockdown=0},tag=serious,tag=!small_adapt] at @s unless entity @e[r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] if entity @e[rm=7.5,r=21,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance 11 16

effect @s[tag=testmode] slowness 1 99 true

execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0,move=0,cutscene=0,knock=0,knockdown=0},tag=!serious,tag=!small_adapt] at @s unless entity @e[r=21,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] if entity @e[rm=21,r=90,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance 14 19
execute as @s[tag=!testmode,type=ds:mahoragatamed,scores={Disabled=0..5,move=0,cutscene=0,knock=0,knockdown=0},tag=serious,tag=!small_adapt] at @s unless entity @e[r=21,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] if entity @e[rm=21,r=90,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!mahoraga_tame,family=!mahoraga,c=1] run scoreboard players random @s chance 14 19

execute as @s[scores={Disabled=0,move=0,cutscene=0,knock=0,knockdown=0,chance=!97}] if block ~~~ water run scoreboard players set @s chance 97

execute as @s[type=ds:mahoragatamed,scores={cutscene=0,move=1..}] at @s unless entity @p[r=58,tag=!unselect] if entity @p[r=90,rm=59,tag=!unselect] run scoreboard players set @s move 0
execute as @s[type=ds:mahoragatamed,scores={cutscene=0}] at @s unless entity @p[r=58,tag=!unselect] if entity @p[r=90,rm=59,tag=!unselect] run scoreboard players set @s chance 98

scoreboard players set @s[scores={Stun=0,move=1..}] Disabled 15

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=-3,Stun=0,move=0}] move 31

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=-2,Stun=0,move=0}] move 21

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=-1,Stun=0,move=0}] move 21

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=1,Stun=0,move=0}] move 21

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=2,Stun=0,move=0}] move 21

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=3,Stun=0,move=0}] move 35

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=4,Stun=0,move=0}] move 30

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=5,Stun=0,move=0}] move 75

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=6,Stun=0,move=0}] move 28

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=7,Stun=0,move=0}] move 31

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=8,Stun=0,move=0}] move 61

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=10,Stun=0,move=0}] move 41
execute as @s[scores={cutscene=1..},tag=mahoraga_cutscene2b] at @s run function shikigami/shikigami/mahoraga/cutscene2
execute as @s[scores={cutscene=1..},tag=ClashBarrage] at @s run function shikigami/shikigami/mahoraga_clash_barrage
execute as @s[tag=makorabarragewin,scores={move=1..},c=1,family=mahoraga] at @s run function shikigami/shikigami/mahoraga/barrage_win_makora
execute as @e[type=!item,tag=makorabarragewin,scores={move=1..},c=1,family=!mahoraga] at @s run function shikigami/shikigami/mahoraga/barrage_win_challenger

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=11,Stun=0,move=0}] move 31

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=12,Stun=0,move=0}] move 26

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=13,Stun=0,move=0}] move 30

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=14,Stun=0,move=0}] move 96

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=15,Stun=0,move=0}] move 28

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=16,Stun=0,move=0},tag=!infinity_adapted] move 28
scoreboard players set @s[type=ds:mahoragatamed,scores={chance=16,Stun=0,move=0},tag=infinity_adapted] move 137

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=17,Stun=0,move=0}] move 31

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=18,Stun=0,move=0}] move 16

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=97,Stun=0,move=0}] move 35

scoreboard players set @s[type=ds:mahoragatamed,scores={chance=98,Stun=0,move=0}] move 31

scoreboard players set @s[scores={move=1..4,chance=!0}] chance 0

tag @s[type=ds:mahoragatamed,tag=!Big] add Big

execute as @s[scores={chance=-3,move=1..}] at @s run function shikigami/shikigami/mahoraga/combo1
execute as @s[scores={chance=-2,move=1..}] at @s run function shikigami/shikigami/mahoraga/cutscene2_start
execute as @s[scores={chance=-1,move=1..}] at @s run function shikigami/shikigami/mahoraga/barrage
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
execute as @s[scores={chance=17,move=1..}] at @s run function shikigami/shikigami/mahoraga/stomp
execute as @s[scores={chance=13,move=1..}] at @s run function shikigami/shikigami/mahoraga/charge_punch
execute as @s[scores={chance=99,move=1..}] at @s run function shikigami/shikigami/mahoraga/grow_punch
execute as @s[scores={chance=14,move=1..}] at @s run function shikigami/shikigami/mahoraga/slamdown
execute as @s[scores={chance=15,move=1..}] at @s run function shikigami/shikigami/mahoraga/aircannon
execute as @s[scores={chance=18,move=1..}] at @s run function shikigami/shikigami/mahoraga/distraction

execute as @s[scores={chance=16,move=1..},tag=!infinity_adapted] at @s if block ~~-1~ air run scoreboard players set @s chance 14
execute as @s[scores={chance=16,move=1..},tag=!infinity_adapted] at @s run function shikigami/shikigami/mahoraga/rocktoss
execute as @s[scores={chance=16,move=1..},tag=infinity_adapted] at @s run function sukuna/attacks/worldslash/world_slash1

execute as @s[scores={chance=98,move=1..}] at @s run function shikigami/shikigami/mahoraga/tp_headslam
execute as @s[scores={chance=97,move=1..}] at @s run function shikigami/shikigami/mahoraga/water_burst