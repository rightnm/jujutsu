particle ds:impact
particle ds:rubble
particle ds:energy_explode1
particle ds:energy_explode2
particle ds:energy_explode3
particle ds:lightning_area1a
camerashake add @a[r=100] 3 0.25
execute as @p[tag=griefable] run summon ds:energy_explosion
execute as @p[tag=griefable] run summon ds:energy_explosion ^8^^
execute as @p[tag=griefable] run summon ds:energy_explosion ^-8^^
particle ds:finger_shockwave2 ~~~
playsound random.explode @a[r=300] ~~~ 999999 0.5 999999
playsound random.explode @a[r=300] ~~~ 999999 0.35 999999
playsound mob.shock1 @a[r=300] ~~~ 999999 0.5 999999
scoreboard players set @s[scores={Deleter=3..}] Deleter 2

function damages/explosion_damage
function damages/electric_damage

damage @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 15 override
scoreboard players set @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] knockdown 50
scoreboard players set @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3
scoreboard players add @e[tag=!Frames,r=15,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 15