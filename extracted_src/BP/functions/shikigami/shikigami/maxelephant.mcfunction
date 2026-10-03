execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[type=ds:maxelephant,scores={Disabled=0,move=0}] at @s if entity @e[tag=!Frames,r=30,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows,c=1] run scoreboard players random @s chance 0 2

scoreboard players set @s[type=ds:maxelephant,scores={chance=1,Stun=0,move=0}] move 41
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 250

scoreboard players set @s[type=ds:maxelephant,scores={chance=2,Stun=0,move=0}] move 71
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 250

scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0

scoreboard players set @s Hyper 5
tag @s[type=ds:maxelephant,tag=!Big] add Big

playanimation @s[scores={chance=1,move=40}] animation.maxelephant.stomp
execute as @s[scores={chance=1,move=40}] at @s run playsound mob.elephant @a ^^3^6 100000 0.85 10000

execute as @s[scores={chance=1,move=1..}] at @s run tp @s ~~~ facing @p[tag=!unselect,tag=!elephant_tame,r=50]
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 if entity @e[family=mahoraga,r=35] run function damages/explosion_damage
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/explosion_damage
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.5 1000000
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.75 1000000
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 1 1000000
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 run playsound random.explode @a ~~~ 1000000 0.35 1000000
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^0.5 run camerashake add @a[r=40] 4 0.25
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=8.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 20
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=8.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 20 entity_attack entity @s
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=8.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 40
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=8.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] knock 40
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:large_slam1
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:large_slam2
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:large_slam3
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:dirt4
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:leap
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:impact
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run particle ds:crater3

execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] Hit 10
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run damage @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] 10 entity_attack entity @s
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] Stun 40
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run effect @e[type=!item,tag=!Frames,tag=!elephant_tame,rm=8.5,r=15,family=!shikigami] levitation 1 30 true
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=8.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 20
execute as @s[scores={chance=1,move=20}] at @s positioned ^^^1.5 run summon ds:red_reverse ~~~

playanimation @s[scores={chance=2,move=70}] animation.maxelephant.hose

execute as @s[scores={chance=2,move=70}] at @s run playsound mob.elephant @a ^^3^6 100000 1.25 10000
execute as @s[scores={chance=2,move=1..}] at @s run tp @s @s
execute as @s[scores={chance=2,move=1..}] at @s run tp @s ~~~ facing @e[name=HoseTRG,c=1]
execute as @s[scores={chance=2,move=55}] at @s positioned ^^^5 run summon ds:projectile HoseTRG
execute as @s[scores={chance=2,move=54..55}] at @s positioned ^^^15 run scoreboard players set @e[name=HoseTRG,c=1] Deleter 54
execute as @s[scores={chance=2,move=15..55}] at @s positioned ^3^^16 run playsound random.splash @a ~~~ 1000000 0.25 1000000
execute as @s[scores={chance=2,move=15..55}] at @s positioned ^-6^2^22 run playsound random.splash @a ~~~ 1000000 0.5 1000000
execute as @s[scores={chance=2,move=15..55}] at @s positioned ^^-4^5 run playsound random.splash @a ~~~ 1000000 1.15 1000000
execute as @s[scores={chance=2,move=15..55}] at @s positioned ^^^4 run playsound random.splash @a ~~~ 1000000 0.75 1000000
execute as @s[scores={chance=2,move=15..55}] at @s positioned ^^^9 run playsound random.swim @a ~~~ 1000000 1.35 1000000
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 8 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^3 run effect @e[tag=!Frames,r=3,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^7 run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^7 run damage @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 6 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^7 run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^7 run scoreboard players add @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^7 run effect @e[tag=!Frames,r=4,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^14 run scoreboard players add @e[tag=!Frames,r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^14 run damage @e[tag=!Frames,r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 5 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^14 run scoreboard players add @e[tag=!Frames,r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^14 run scoreboard players add @e[tag=!Frames,r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^14 run effect @e[tag=!Frames,r=7,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^20 run scoreboard players add @e[tag=!Frames,r=14,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^20 run damage @e[tag=!Frames,r=14,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 4 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^20 run scoreboard players add @e[tag=!Frames,r=14,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^20 run scoreboard players add @e[tag=!Frames,r=14,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^20 run effect @e[tag=!Frames,r=14,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 if entity @e[family=mahoraga,r=35] run function damages/water_damage
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^10 if entity @e[family=mahoraga,r=35] run function damages/water_damage
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 if entity @e[family=mahoraga,r=35] run function damages/water_damage
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/water_damage
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^10 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/water_damage
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/water_damage

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 run scoreboard players add @e[tag=!Frames,r=22,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 run damage @e[tag=!Frames,r=22,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 4 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 run scoreboard players add @e[tag=!Frames,r=22,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^30 run scoreboard players add @e[tag=!Frames,r=22,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^30 run effect @e[tag=!Frames,r=22,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true

execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 run scoreboard players add @e[tag=!Frames,r=32,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Hit 1
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 run damage @e[tag=!Frames,r=32,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] 2 entity_attack entity @s
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 run scoreboard players add @e[tag=!Frames,r=32,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Stun 2
execute as @s[scores={chance=2,move=5..55}] at @s positioned ^^^44 run scoreboard players add @e[tag=!Frames,r=32,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] Evade 5
execute as @s[scores={chance=2,move=25..55}] at @s positioned ^^^44 run effect @e[tag=!Frames,r=32,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,tag=!elephant_tame,family=!shikigami,family=!shadows] wither 1 5 true
execute as @s[scores={chance=2,move=15..55}] at @s run camerashake add @a[r=40] 0.3 0.15



