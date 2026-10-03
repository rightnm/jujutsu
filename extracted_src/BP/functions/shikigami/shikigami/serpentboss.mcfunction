execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s unless entity @e[tag=serpent_fight,r=100] run tag @e[tag=serpent_fight,tag=!shikigami] remove serpent_fight
execute as @s unless entity @e[tag=serpent_fight,r=100] run tag @e[tag=serpent_fight,tag=shikigami,c=1] remove serpent_fight
execute as @s unless entity @e[tag=serpent_fight,r=100] run kill @s

execute as @s[type=ds:serpentboss,scores={Disabled=0,move=0}] at @s positioned ^^^7.5 if entity @e[tag=!Frames,r=7.45,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,c=1] run scoreboard players random @s chance 1 2

scoreboard players set @s[type=ds:serpentboss,scores={chance=1,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 75

scoreboard players set @s[type=ds:serpentboss,scores={chance=2,Stun=0,move=0}] move 31
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 75

scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0

scoreboard players set @s Hyper 5
tag @s[type=ds:serpentboss,tag=!Big] add Big

playanimation @s[scores={chance=1,move=15}] animation.serpent.bite

execute as @s[scores={chance=1,move=8}] at @s positioned ^^^0.5 run playsound mob.evocation_fangs.attack @a ~~~ 1 0.85
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^0.5 run playsound mob.evocation_fangs.attack @a ~~~ 1 1.75
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^3.85 run scoreboard players add @e[tag=!Frames,r=3.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Hit 3
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^3.85 run damage @e[tag=!Frames,r=3.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] 6 entity_attack entity @s
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^3.85 run effect @e[tag=!Frames,r=3.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] poison 3 1 
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^3.85 run scoreboard players add @e[tag=!Frames,r=3.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Stun 6
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^3.85 run scoreboard players add @e[tag=!Frames,r=3.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Evade 6

execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 run function punch
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 if entity @e[family=mahoraga,r=35] run function damages/poison_damage
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/poison_damage

execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Hit 3
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run damage @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] 6 entity_attack entity @s
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run effect @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] poison 3 1
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Stun 2
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Evade 4


playanimation @s[scores={chance=2,move=30}] animation.serpent.slap

execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1 if entity @e[family=mahoraga,r=35] run function damages/blunt_damage
execute as @s[scores={chance=1,move=16}] at @s positioned ^^^1 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/blunt_damage
execute as @s[scores={chance=2,move=1..}] at @s run tp @s ~~~
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a ~~~ 1 2
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^0.5 run playsound mob.wither.shoot @a ~~~ 1 0.5
execute as @s[scores={chance=2,move=17}] at @s positioned ^^^0.5 run playsound mob.sword @a ~~~ 1 0.5
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Hit 6
execute as @s[scores={chance=2,move=16}] at @s run damage @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] 4 entity_attack entity @s
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Stun 2
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] Evade 4
execute as @s[scores={chance=2,move=16}] at @s run particle ds:dirt2
execute as @s[scores={chance=2,move=16}] at @s run particle ds:ground_slam1
execute as @s[scores={chance=2,move=16}] at @s run particle ds:ground_slam2
execute as @s[scores={chance=2,move=16}] at @s run particle ds:ground_slam3
execute as @s[scores={chance=2,move=16}] at @s run particle ds:ground_slam4
execute as @s[scores={chance=2,move=16}] at @s run particle ds:leap
execute as @s[scores={chance=2,move=16}] at @s run particle ds:spin_attack1 ~~1.5~
execute as @s[scores={chance=2,move=16}] at @s run particle ds:spin_attack2 ~~1.5~
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Hit 6
execute as @s[scores={chance=2,move=16}] at @s run damage @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] 4 entity_attack entity @s
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Stun 2
execute as @s[scores={chance=2,move=16}] at @s run scoreboard players add @e[tag=!Frames,r=7.5,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=Big] Evade 4
execute as @s[scores={chance=2,move=16}] at @s run execute as @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] at @s run tp @s ~~~ facing @e[type=ds:serpentboss,c=1]
execute as @s[scores={chance=2,move=16}] at @s run execute as @e[tag=!Frames,r=6,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,type=!ds:serpentboss,tag=!Big] at @s run summon ds:knockback ^^^1




