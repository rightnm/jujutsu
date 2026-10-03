playanimation @s[scores={move=44}] animation.gavel3.ab2

effect @s[scores={move=21..}] slowness 1 2 true
scoreboard players set @s[scores={move=40..,Stun=1..}] move 2

tag @s[scores={move=1..2},tag=wep2] remove wep2


scoreboard players set @s[scores={move=23..40}] Frames 5
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..39}] AfterAnim 4

scoreboard players random @s[scores={move=30}] blackflashchance 1 269
scoreboard players set @s[scores={move=30},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=39..40}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=39}] at @s  run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=39}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact3  ~~1~
execute as @s[scores={move=39}] at @s  run particle ds:dirt0
execute as @s[scores={move=39}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=39}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=39}] at @s  run particle ds:rising_strike2 ~~1~
execute as @s[scores={move=39}] at @s  run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=40}] at @s  run playsound mob.heavy_swing @a[r=50] ~~~ 9999 1.4 9999
execute as @s[scores={move=39}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=39}] at @s  run damage @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=39}] at @s  run scoreboard players operation @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=39}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=39}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=39}] at @s run  function damages/blunt_damage

execute as @s[scores={move=34..35}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=34}] at @s  run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=34}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact3  ~~1~
execute as @s[scores={move=34}] at @s  run particle ds:dirt0
execute as @s[scores={move=34}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=34}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=34}] at @s  run camerashake add @a[r=30] 2 0.25
execute as @s[scores={move=35}] at @s  run playsound mob.heavy_swing @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=34}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=34}] at @s  run damage @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=34}] at @s  run scoreboard players operation @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=34}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=34}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=34}] at @s run  function damages/blunt_damage

execute as @s[scores={move=29..31}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=29}] at @s  run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=29}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:heavy_impact3  ~~1~
execute as @s[scores={move=29}] at @s  run particle ds:dirt0
execute as @s[scores={move=29}] at @s  run particle ds:sweep1 ~~1~
execute as @s[scores={move=29}] at @s  run particle ds:sweep2 ~~1~
execute as @s[scores={move=29}] at @s  run camerashake add @a[r=29] 2 0.25
execute as @s[scores={move=31}] at @s  run playsound mob.heavy_swing @a[r=50] ~~~ 9999 1.35 9999
execute as @s[scores={move=29}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=29}] at @s  run damage @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=29}] at @s  run scoreboard players operation @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damagehalf += @s damageadd
execute as @s[scores={move=29}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=29}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=29}] at @s run  function damages/blunt_damage

execute as @s[scores={move=24..25}] at @s  run scriptevent ds:knockback 2
execute as @s[scores={move=24}] at @s  run camerashake add @a[r=9] 1 0.15
execute as @s[scores={move=24}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run particle ds:large_impact1  ~~1~
execute as @s[scores={move=24}] at @s  run particle ds:dirt0
execute as @s[scores={move=24}] at @s  run particle ds:rising_strike2 ~~1~
execute as @s[scores={move=24}] at @s  run camerashake add @a[r=24] 2 0.25
execute as @s[scores={move=27}] at @s  run playsound mob.heavy_swing @a[r=50] ~~~ 9999 0.95 9999
execute as @s[scores={move=24}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound random.explode @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=24}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.wither.break_block @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=24}] at @s  run execute as @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 1.42 9999
execute as @s[scores={move=24}] at @s  run damage @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] 3 override
execute as @s[scores={move=24}] at @s  run scoreboard players operation @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] damage += @s damageadd
execute as @s[scores={move=24}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Evade 3
execute as @s[scores={move=24}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] Hit 3
execute as @s[scores={move=24}] at @s  run scoreboard players add @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] knockdown 90
execute as @s[scores={move=24}] at @s  run effect @e[tag=!Frames,r=4.5,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand] levitation 1 15 true
execute as @s[scores={move=21..24}] at @s  run  tp @s ~~~
execute as @s[scores={move=24}] at @s  run summon ds:red_reverse
execute as @s[scores={move=24}] at @s run  function damages/blunt_damage


