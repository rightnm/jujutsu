execute unless entity @s[scores={Energy=0..}] run scoreboard players add @s Energy 0
scoreboard players add @s[scores={Energy=0}] Stun 0
scoreboard players add @s[scores={Energy=0}] move 0
scoreboard players add @s[scores={Energy=0}] Disabled 0
scoreboard players add @s[scores={Energy=0}] chance 0
scoreboard players set @s[scores={Energy=0}] Energy 9999

execute as @s[type=ds:totality,scores={Disabled=0,move=0}] at @s positioned ^^^2.5 if entity @e[tag=!Frames,r=2.45,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!dog_tame,c=1] run scoreboard players random @s chance 1 2

scoreboard players set @s[type=ds:totality,scores={chance=1,Stun=0,move=0}] move 16
scoreboard players set @s[scores={chance=1,Stun=0,move=1..}] Disabled 25

scoreboard players set @s[type=ds:totality,scores={chance=2,Stun=0,move=0}] move 21
scoreboard players set @s[scores={chance=2,Stun=0,move=1..}] Disabled 25

kill @e[type=ds:totality,c=1,rm=1,r=50]

scoreboard players set @s[scores={move=1..4,chance=1..}] chance 0


playanimation @s[scores={chance=1,move=15}] animation.divinedog.bite_attack

execute as @s[scores={chance=1,move=6}] at @s positioned ^^^0.5 run playsound mob.wolf.growl @a ~~~
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^0.5 run playsound mob.evocation_fangs.attack @a ~~~ 1 1.75
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Hit 3
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1.85 run damage @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] 6 override entity @s
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Stun 2
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Evade 4

execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 run function punch
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 if entity @e[family=mahoraga,r=35] run function damages/slash_damage
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^1 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/slash_damage

execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Hit 3
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run damage @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] 7 override entity @s
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Stun 2
execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Evade 4


execute as @s[scores={chance=1,move=6}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=4.849,family=purecurse] 15 override
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^4.85 run damage @e[type=!item,tag=!Frames,r=4.849,family=purecurse] 11 override

playanimation @s[scores={chance=2,move=20}] animation.divinedog.slash_attack

execute as @s[scores={chance=2,move=16}] at @s positioned ^^^0.5 run playsound mob.wolf.growl @a ~~~
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^0.5 run playsound mob.sword @a ~~~ 1 1.25
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Hit 3
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1.85 run damage @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] 6 override entity @s
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Stun 2
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Evade 4
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1 run function punch
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1  if entity @e[family=mahoraga,r=35] run function damages/slash_damage
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^1 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/slash_damage
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Hit 3
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^4.85 run damage @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] 6 override entity @s
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Stun 2
execute as @s[scores={chance=2,move=16}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Evade 4

execute as @s[scores={chance=2,move=10}] at @s positioned ^^^0.5 run playsound mob.wolf.growl @a ~~~
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^0.5 run playsound mob.sword @a ~~~ 1 1.25
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Hit 3
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1.85 run damage @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] 6 override entity @s
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Stun 2
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1.85 run scoreboard players add @e[tag=!Frames,r=1.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=!Big] Evade 4
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1 run function punch
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1 if entity @e[family=mahoraga,r=35] run function damages/slash_damage
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^1 unless entity @e[family=mahoraga,r=35] if entity @e[scores={wheelactive=1..},r=35,tag=!unselect] run function damages/slash_damage
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Hit 3
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^4.85 run damage @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] 6 override entity @s
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Stun 2
execute as @s[scores={chance=2,move=10}] at @s positioned ^^^4.85 run scoreboard players add @e[tag=!Frames,r=4.8,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand,family=!shikigami,family=!shadows,tag=Big] Evade 4




