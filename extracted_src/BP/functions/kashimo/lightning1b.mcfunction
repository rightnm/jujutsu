

playanimation @s[scores={move=80,amberbeast=0}] animation.bolt_barrage
playanimation @s[scores={move=80,amberbeast=1..}] animation.bolt_barrage2

execute as @s[scores={move=79..}] at @s run tp @s @s


tag @e[scores={move=1..2},tag=wep2] remove wep2

tag @s[scores={move=76..,Stun=1..},tag=wep2] remove wep2
scoreboard players set @s[scores={move=76..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..75}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..}] Camera 4

execute as @s[scores={move=1..}] at @s run tp @s @s
camera @s[scores={move=74},type=player] fade time 0.2 0.1 0.25 color 0 0 0
execute as @s[scores={move=70},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^2 ^-3 rot ~25 ~
execute as @s[scores={move=70},type=player] at @s anchored eyes run camera @s set minecraft:free ease 1.5 in_sine pos ^ ^4 ^-4 rot ~35 ~
execute as @s[scores={move=35},type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.25 in_out_circ pos ^ ^16 ^ rot ~90 ~

execute as @s[scores={move=15}] at @s run function damages/blunt_damage
execute as @s[scores={move=15}] at @s run function damages/electric_damage

execute as @s[scores={move=25}] at @s run function damages/blunt_damage
execute as @s[scores={move=25}] at @s run function damages/electric_damage

execute as @s[scores={move=35}] at @s run function damages/blunt_damage
execute as @s[scores={move=35}] at @s run function damages/electric_damage

execute as @s[scores={move=45}] at @s run function damages/blunt_damage
execute as @s[scores={move=45}] at @s run function damages/electric_damage

execute as @s[scores={move=55}] at @s run function damages/blunt_damage
execute as @s[scores={move=55}] at @s run function damages/electric_damage


scoreboard players set @s[scores={move=31}] atk 2

scoreboard players random @s[scores={move=20}] blackflashchance 1 269
scoreboard players set @s[scores={move=20},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run playsound mob.shocked3 @a[r=199] ~~~ 99999 1.5 99999
execute as @s[scores={move=31..68}] at @s positioned ^^^3.05 run playsound random.explode @a[r=199] ~~~ 99999 2.25 99999
execute as @s[scores={move=31..68}] at @s run camerashake add @a[r=44] 1 0.15

execute as @s[scores={move=31..68,amberbeast=0}] at @s  run scriptevent ds:lightning 1,1,2, 0.35,0.65,1, 0.35,0.65,1, 0,0,5, 1,0,0
execute as @s[scores={move=31..68,amberbeast=1..}] at @s  run scriptevent ds:lightning 1,1,2, 1,0.25,0.75, 1,0.25,0.75, 0,0,5, 1,0,0

execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run damage @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 1 override
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run tp @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] ~~~ facing @s
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 2
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 45
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2

execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^6.05 run damage @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^6.05 run tp @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] ~~~ facing @s
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^6.05 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 3
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 45
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^6.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 3

execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run damage @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 1 override
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run tp @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] ~~~ facing @s
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 2
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 45
execute as @s[scores={move=31..68,amberbeast=1..}] at @s positioned ^^^3.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2

execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run damage @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run tp @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] ~~~ facing @s
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run scoreboard players add @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 3
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 45
execute as @s[scores={move=31..68,amberbeast=0}] at @s positioned ^^^6.05 run scoreboard players set @e[tag=!Frames,r=3,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 3


scoreboard players set @s[scores={move=15..16}] atk 2
execute as @s[scores={move=15}] at @s  run scoreboard players operation @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] damage += @s damageadd
execute as @s[scores={move=15}] at @s  run damage @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 25 override
execute as @s[scores={move=15}] at @s  run scoreboard players add @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 2
execute as @s[scores={move=15}] at @s  run scoreboard players set @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 25
execute as @s[scores={move=1..15}] at @s run tp @s ~~~
execute as @s[scores={move=15}] at @s  run scoreboard players set @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] knockdown 96
execute as @s[scores={move=15}] at @s  run scoreboard players set @e[tag=!Frames,r=7,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2

execute as @s[scores={move=27}] at @s anchored eyes positioned ^^^-1 run playsound mob.electricity @a ~~~ 1 0.75


title @s[scores={move=16},tag=!impactframesoff,type=player] title 
title @s[scores={move=15},tag=!impactframesoff,type=player] title 
title @s[scores={move=14},tag=!impactframesoff,type=player] title 
title @s[scores={move=13},tag=!impactframesoff,type=player] title 
title @s[scores={move=12},tag=!impactframesoff,type=player] title §l
camera @s[scores={move=14},type=player] fade time 0 0 0.25 color 255 255 255

execute as @s[scores={move=15}] at @s run particle ds:crater3
execute as @s[scores={move=15}] at @s run particle ds:large_slam1
execute as @s[scores={move=15}] at @s run particle ds:large_slam2
execute as @s[scores={move=15}] at @s run particle ds:large_slam3
execute as @s[scores={move=15}] at @s run particle ds:large_slam4
execute as @s[scores={move=15}] at @s run particle ds:dirt0
execute as @s[scores={move=5..15}] at @s run particle ds:lightning_area1 ~~~
execute as @s[scores={move=15,amberbeast=0}] at @s run particle ds:lightning_shockwave1 ~~~
execute as @s[scores={move=15,amberbeast=0}] at @s run particle ds:lightning_shockwave2 ~~~
execute as @s[scores={move=15,amberbeast=0}] at @s run particle ds:lightning_shockwave3 ~~~
execute as @s[scores={move=15,amberbeast=1..}] at @s run particle ds:lightning_shockwave1a ~~~
execute as @s[scores={move=15,amberbeast=1..}] at @s run particle ds:lightning_shockwave2a ~~~
execute as @s[scores={move=15,amberbeast=1..}] at @s run particle ds:lightning_shockwave3a ~~~
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=20] 3 0.15
execute as @s[scores={move=15}] at @s anchored eyes positioned ^^^2.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.5 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 0.3 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 2 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound random.explode @a[r=199] ~~~ 99999 1.65 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.75 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.shock1 @a[r=199] ~~~ 99999 0.4 99999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run playsound mob.bullet @a[r=199] ~~~ 99999 1 99999


