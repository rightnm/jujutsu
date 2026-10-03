playanimation @s[scores={move=35,amberbeast=0}] animation.shock
playanimation @s[scores={move=35,amberbeast=1..}] animation.shock2

tag @e[scores={move=1..2},tag=form1b] remove form1b

tag @s[scores={move=3..,Stun=1..},tag=form1b] remove form1b
scoreboard players set @s[scores={move=3..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4

scoreboard players set @s[scores={move=10..31}] atk 2
scoreboard players set @s[scores={move=10..31}] Frames 4


execute as @s[scores={move=31}] at @s run playsound mob.electricity @a ~~~



execute as @s[scores={move=17..30,amberbeast=0}] at @s  run scriptevent ds:lightning 1.5,1.5,2.5, 0.35,0.65,1, 0.35,0.65,1, 0,0,5, 1,0,0
execute as @s[scores={move=17..30,amberbeast=1..}] at @s  run scriptevent ds:lightning 1.5,1.5,2.5, 1,0.25,0.75, 1,0.25,0.75, 0,0,5, 1,0,0

execute as @s[scores={move=31,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1
execute as @s[scores={move=31,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1
execute as @s[scores={move=31,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1a
execute as @s[scores={move=31,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1a

execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact1
execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact2
execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact3
execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run particle ds:heavy_impact5
execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=31}] at @s anchored eyes positioned ^^^1 run camerashake add @a[r=16] 4 0.15

execute as @s[scores={move=17..30}] at @s anchored eyes positioned ^^^3 run effect @a[r=40] night_vision 1 1 true


execute as @s[scores={move=17..30}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 99999 1.23 99999
execute as @s[scores={move=17..30}] at @s anchored eyes positioned ^^^1.5 run playsound mob.electricity @a[r=100] ~~~ 99999 1.15 99999

execute as @s[scores={move=17..30}] at @s anchored eyes positioned ^^^5 run function damages/electric_damage

execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^3 run damage @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 30
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^7 run damage @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^7 run scoreboard players add @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 30
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^12 run damage @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 2 override
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^12 run scoreboard players add @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 30
execute as @s[scores={move=17..30,amberbeast=0}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2


execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^3 run damage @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 3 override
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^3 run scoreboard players add @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 40
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^7 run damage @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 3 override
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^7 run scoreboard players add @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 40
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^7 run scoreboard players set @e[tag=!Frames,r=3.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^12 run damage @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] 3 override
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^12 run scoreboard players add @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Evade 1
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Stun 5
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] shocked 40
execute as @s[scores={move=17..30,amberbeast=1..}] at @s anchored eyes positioned ^^^12 run scoreboard players set @e[tag=!Frames,r=4.99,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode] Hit 2