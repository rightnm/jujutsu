playanimation @s[scores={move=25}] animation.gavel1.ab2

scoreboard players set @s[scores={move=23..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep2] remove wep2

scoreboard players set @s[scores={move=19..23}] Frames 4

execute as @s[scores={move=21}] at @s run playsound mob.witch.throw @a ~~~ 1 0.45
execute as @s[scores={move=21}] at @s run summon ds:gavel_throw ^^1^1 facing ^^1^20
execute as @s[scores={move=21}] at @s positioned ^^^40 run summon ds:projectile GavelTRG ~~~
execute as @s[scores={move=20..21}] at @s run scoreboard players set @e[type=ds:gavel_throw,c=1] Deleter 12
execute as @s[scores={move=20..21}] at @s run scoreboard players set @e[name=GavelTRG,c=1] Deleter 17

tag @e[type=ds:gavel_throw,c=1,tag=!Frames,r=50] add Frames
execute as @e[type=ds:gavel_throw,c=1,scores={Deleter=4..}] at @s  run tp @s ^^^3 facing @e[name=GavelTRG,c=1]
execute as @e[type=ds:gavel_throw,c=1,scores={Deleter=1..3}] at @s run tp @s ~~-50~
execute as @e[name=GavelTRG,c=1,scores={Deleter=1..3}] at @s run tp @s ~~-50~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run camerashake add @a[r=10] 1 0.15
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact1 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact2 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact3 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact5 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:parry1 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:parry2 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:ground_slam2 ~~1~
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2.25 9999
execute as @e[type=ds:gavel_throw,c=1] at @s  run execute as @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 1.45 9999
execute as @e[type=ds:gavel_throw,c=1] at @s  run damage @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 8
execute as @e[type=ds:gavel_throw,c=1] at @s  run scoreboard players add @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 7
execute as @e[type=ds:gavel_throw,c=1] at @s  run scoreboard players add @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Stun 25
execute as @e[type=ds:gavel_throw,c=1] at @s if entity @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run function damages/blunt_damage
execute as @e[type=ds:gavel_throw,c=1,scores={Deleter=6..}] at @s  if entity @e[tag=!Frames,r=1.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] run scoreboard players set @s Deleter 5

execute as @e[type=ds:gavel_throw,c=1,scores={Deleter=4}] at @s run particle ds:gavel_return1
execute as @e[type=ds:gavel_throw,c=1,scores={Deleter=4}] at @s run particle ds:gavel_return2

