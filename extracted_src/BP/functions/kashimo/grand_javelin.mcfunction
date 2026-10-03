execute as @s[name="GrandJavelin"] at @s run tp @s ^^^1.93 facing @e[name=GrandJavelinTRG,c=1]
execute as @s[name="GrandJavelin"] at @s run tp @s ^^^1.93 facing @e[name=GrandJavelinTRG,c=1]

execute as @s[scores={Deleter=1..5}] at @s run scoreboard players set @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] knocked 50
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players set @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] shocked 75
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players add @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Evade 3
execute as @s[scores={Deleter=1..5}] at @s run scoreboard players add @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Hit 3
execute as @s[scores={Deleter=1..5},tag=!amber] at @s run damage @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 15 override 
execute as @s[scores={Deleter=1..5},tag=amber] at @s run damage @e[tag=!Frames,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] 30 override 
execute as @s[scores={Deleter=9..}] at @s if entity @e[tag=!Frames,r=9,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] run scoreboard players set @s Deleter 8

execute as @s[scores={Deleter=9..}] at @s if entity @e[type=ds:projectile,name=GrandJavelinTRG,c=1,r=5] run scoreboard players set @s Deleter 8
execute as @s[scores={Deleter=5}] at @s run playsound random.explode @a[r=500] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=5}] at @s run playsound item.trident.thunder @a[r=500] ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=5}] at @s run playsound random.explode @a[r=500] ~~~ 99999 0.35 99999
execute as @s[scores={Deleter=5}] at @s run playsound mob.shock1 @a[r=500] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=5}] at @s run playsound mob.shock1 @a[r=500] ~~~ 99999 0.35 99999
execute as @s[scores={Deleter=5}] at @s run playsound mob.electricity @a[r=500] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=5}] at @s run playsound mob.electricity @a[r=500] ~~~ 99999 0.35 99999
execute as @s[scores={Deleter=5}] at @s run playsound mob.shocked3 @a[r=500] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=4}] at @s run execute as @a[r=300] at @s run playsound music.loudimpact @s ~~~ 1 0.35
execute as @s[scores={Deleter=5}] at @s run camerashake add @a[r=300] 4 1.5 rotational
execute as @s[scores={Deleter=5}] at @s run effect @a[r=100] night_vision 2 1 true

execute as @s[scores={Deleter=7..},tag=!amber] at @s run particle ds:electro_carve1
execute as @s[scores={Deleter=7..},tag=!amber] at @s run particle ds:electro_carve2
execute as @s[scores={Deleter=7..},tag=!amber] at @s run particle ds:electro_carve3
execute as @s[scores={Deleter=7..},tag=!amber] at @s run particle ds:electro_carve4
execute as @s[scores={Deleter=7..},tag=!amber] at @s run particle ds:impact1

execute as @s[scores={Deleter=1..7}] at @s run function damages/electric_damage

execute as @s[scores={Deleter=3}] at @s run camerashake add @a[r=200,rm=100] 4 1.25
execute as @s[scores={Deleter=1}] at @s run camerashake add @a[r=300,rm=200] 4 1.25
execute as @s[scores={Deleter=8}] at @s run particle ds:large_shockwave

execute as @s[scores={Deleter=7..},tag=amber] at @s run particle ds:electro_carve1a
execute as @s[scores={Deleter=7..},tag=amber] at @s run particle ds:electro_carve2a
execute as @s[scores={Deleter=7..},tag=amber] at @s run particle ds:electro_carve3a
execute as @s[scores={Deleter=7..},tag=amber] at @s run particle ds:electro_carve4a
execute as @s[scores={Deleter=7..},tag=amber] at @s run particle ds:impact1

execute as @s[scores={Deleter=1..8}] at @s run title @a[r=133,tag=!impactframesoff] title 

tickingarea remove grandjavelin
tickingarea remove grandjavelin2
execute as @s[scores={Deleter=6..}] at @s run tickingarea add ~20~~20~-20~~-20 grandjavelin

execute as @s[scores={Deleter=1..}] at @s run effect @e[tag=electric_adapted,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] resistance 1 3 true
execute as @s[scores={Deleter=1..5}] at @s run function damages/electric_damage
execute as @s[scores={Deleter=1..5}] at @s run effect @e[tag=electric_adapted,r=25,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] instant_health 2 3 true

execute as @s[scores={Deleter=9..}] at @s unless block ~~~ air run particle ds:ground_slam1 ~~~
execute as @s[scores={Deleter=9..}] at @s unless block ~~~ air run particle ds:ground_slam2 ~~~
execute as @s[scores={Deleter=9..}] at @s unless block ~~~ air run particle ds:ground_slam3 ~~~
execute as @s[scores={Deleter=9..}] at @s unless block ~~~ air run particle ds:rubble3 ~~~
execute as @s[scores={Deleter=9..}] at @s unless block ~~~ air run scoreboard players set @s Deleter 8

execute as @s[scores={Deleter=1..7}] at @s run tp @s @e[type=!ds:projectile,r=2,c=1] 

execute as @s[scores={Deleter=6}] at @s run particle ds:invert
execute as @s[scores={Deleter=6}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.5 99999
execute as @s[scores={Deleter=6}] at @s run playsound random.explode @a[r=100] ~~~ 99999 1.85 99999
execute as @s[scores={Deleter=6}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={Deleter=6}] at @s run playsound mob.electricity @a[r=100] ~~~ 99999 0.85 99999

execute as @s[scores={Deleter=4..6},tag=!amber] at @s run particle ds:grand_shockwave1
execute as @s[scores={Deleter=4..6},tag=!amber] at @s run particle ds:grand_shockwave2
execute as @s[scores={Deleter=4..6},tag=!amber] at @s run particle ds:grand_shockwave3
execute as @s[scores={Deleter=4..6},tag=!amber] at @s run particle ds:grand_shockwave5
execute as @s[scores={Deleter=4..6},tag=!amber] at @s run particle ds:grand_shockwave4

execute as @s[scores={Deleter=2..6},tag=amber] at @s run particle ds:grand_shockwave1a
execute as @s[scores={Deleter=2..6},tag=amber] at @s run particle ds:grand_shockwave2a
execute as @s[scores={Deleter=2..6},tag=amber] at @s run particle ds:grand_shockwave3a
execute as @s[scores={Deleter=2..6},tag=amber] at @s run particle ds:grand_shockwave4a
execute as @s[scores={Deleter=2..6},tag=amber] at @s run particle ds:grand_shockwave5a

execute as @s[scores={Deleter=7}] at @s run effect @e[r=30,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] resistance 1 10 true
execute as @s[scores={Deleter=7},tag=amber] at @s run summon ds:limitless_explosion ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=7}] at @s run summon ds:red_reversal ~~~
execute as @s[scores={Deleter=1..6}] at @s run kill @e[type=item,r=50]
execute as @s[scores={Deleter=2..6}] at @s run particle ds:large_slam1
execute as @s[scores={Deleter=2..6}] at @s run particle ds:large_slam2
execute as @s[scores={Deleter=2..6}] at @s run particle ds:large_slam3
execute as @s[scores={Deleter=2..6}] at @s run particle ds:large_slam4
execute as @s[scores={Deleter=2..6}] at @s run particle ds:large_slam5
execute as @s[scores={Deleter=2..6}] at @s run particle ds:dirt4
execute as @s[scores={Deleter=2..6}] at @s run particle ds:impact2 ~~~
execute as @s[scores={Deleter=2..6}] at @s run particle ds:heavy_impact1 ~~~
execute as @s[scores={Deleter=2..6}] at @s run particle ds:heavy_impact2 ~~~
execute as @s[scores={Deleter=2..6}] at @s run particle ds:heavy_impact3 ~~~
execute as @s[scores={Deleter=1..2}] at @s run tp @s ~~-200~

