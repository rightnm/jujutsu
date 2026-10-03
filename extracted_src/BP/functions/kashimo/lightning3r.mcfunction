playanimation @s[scores={move=80,amberbeast=0}] animation.electro_carve
playanimation @s[scores={move=80,amberbeast=1..}] animation.electro_carve2

tag @s[scores={move=1..2},tag=form1c] remove form1c

scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=10..60}] Frames 5
scoreboard players set @s[scores={move=10..32}] atk 2

execute as @s[scores={move=65..}] at @s if block ~~-0.22~ air run tp @s ~~-0.22~
execute as @s[scores={move=65..}] at @s if block ~~-0.44~ air run tp @s ~~-0.44~
execute as @s[scores={move=65..}] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=1..50}] at @s run tp @s @s


execute as @s[scores={move=50}] at @s run playsound mob.electricity @a ~~~


title @s[scores={move=40},tag=!impactframesoff,type=player] title 
title @s[scores={move=38},tag=!impactframesoff,type=player] title §l

title @s[scores={move=30},tag=!impactframesoff,type=player] title 
title @s[scores={move=28},tag=!impactframesoff,type=player] title §l

title @s[scores={move=22},tag=!impactframesoff,type=player] title 
title @s[scores={move=20},tag=!impactframesoff,type=player] title §l
title @s[scores={move=17},tag=!impactframesoff,type=player] title 
title @s[scores={move=15},tag=!impactframesoff,type=player] title §l
title @s[scores={move=14},tag=!impactframesoff,type=player] title 
title @s[scores={move=12},tag=!impactframesoff,type=player] title §l
camera @s[scores={move=14},type=player] fade time 0 0.5 0.75 color 255 255 255

execute as @s[scores={move=37..60,amberbeast=0}] at @s   run particle ds:lightning_shockwave1
execute as @s[scores={move=37..60,amberbeast=0}] at @s   run particle ds:lightning_sparkle1
execute as @s[scores={move=37..60,amberbeast=1..}] at @s   run particle ds:lightning_shockwave1a
execute as @s[scores={move=37..60,amberbeast=1..}] at @s   run particle ds:lightning_sparkle1a

execute as @s[scores={move=60}] at @s unless block ~~-1~ air  run playsound random.explode @a[r=299] ~~~ 9999 0.25 9999
execute as @s[scores={move=60}] at @s unless block ~~-1~ air  run playsound random.explode @a[r=299] ~~~ 9999 0.35 9999
execute as @s[scores={move=60}] at @s unless block ~~-1~ air  run playsound mob.wither.break_block @a[r=299] ~~~ 9999 0.25 9999
execute as @s[scores={move=60}] at @s unless block ~~-1~ air  run particle ds:crater3
execute as @s[scores={move=60}] at @s   run particle ds:heavy_impact1
execute as @s[scores={move=60}] at @s   run particle ds:heavy_impact2
execute as @s[scores={move=60}] at @s   run particle ds:heavy_impact3
execute as @s[scores={move=60}] at @s   run particle ds:heavy_impact5
execute as @s[scores={move=60}] at @s   run particle ds:ground_slam3
execute as @s[scores={move=60}] at @s   run camerashake add @a[r=16] 4 0.5

execute as @s[scores={move=10..50}] at @s   run camerashake add @a[r=16] 2 0.15
execute as @s[scores={move=10..50}] at @s run effect @a[r=60] night_vision 1 1 true

execute as @s[scores={move=10..50,amberbeast=0}] at @s run particle ds:electro_carve1
execute as @s[scores={move=10..50,amberbeast=0}] at @s run particle ds:electro_carve2
execute as @s[scores={move=10..50,amberbeast=0}] at @s run particle ds:electro_carve3
execute as @s[scores={move=10..50,amberbeast=0}] at @s run particle ds:electro_carve4
execute as @s[scores={move=50,amberbeast=0}] at @s run particle ds:lightning_shockwave1 ~~1~
execute as @s[scores={move=30,amberbeast=0}] at @s run particle ds:lightning_shockwave1 ~~1~
execute as @s[scores={move=20,amberbeast=0}] at @s run particle ds:lightning_shockwave1 ~~1~


execute as @s[scores={move=10..60},type=player] at @s run camera @s set minecraft:free pos ~ ~14~ rot ~90 ~
execute as @s[scores={move=3..60}] at @s run scoreboard players set @s Camera 5


execute as @s[scores={move=10..50,amberbeast=1..}] at @s run particle ds:electro_carve1a
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run particle ds:electro_carve2a
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run particle ds:electro_carve3a
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run particle ds:electro_carve4a
execute as @s[scores={move=50,amberbeast=1..}] at @s run particle ds:lightning_shockwave1a ~~1~
execute as @s[scores={move=30,amberbeast=1..}] at @s run particle ds:lightning_shockwave1a ~~1~
execute as @s[scores={move=20,amberbeast=1..}] at @s run particle ds:lightning_shockwave1a ~~1~

execute as @s[scores={move=10..50}] at @s run playsound mob.shocked3 @a[r=120] ~~~ 99999 1.23 99999
execute as @s[scores={move=10..50}] at @s run playsound mob.electricity @a[r=120] ~~~ 99999 1.15 99999

execute as @s[scores={move=10..50}] at @s  positioned ^^^5 run function damages/electric_damage

execute as @s[scores={move=10..50,amberbeast=0}] at @s run damage @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 1 override
execute as @s[scores={move=10..50,amberbeast=0}] at @s run scoreboard players add @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 2
execute as @s[scores={move=10..50,amberbeast=0}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=10..50,amberbeast=0}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 60
execute as @s[scores={move=10..50,amberbeast=0}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2


execute as @s[scores={move=10..50,amberbeast=1..}] at @s run damage @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run scoreboard players add @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 3
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 50
execute as @s[scores={move=10..50,amberbeast=1..}] at @s run scoreboard players set @e[tag=!Frames,r=12,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2
