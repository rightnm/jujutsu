tag @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,scores={Flourish=1..},tag=!flourish] add flourish

playanimation @e[scores={Flourish=1..,move=0},tag=flourish,tag=!Frames] animation.stunned

execute as @e[type=!player,scores={Flourish=2..},tag=flourish] at @s run scoreboard players add @s Stun 1
execute as @e[type=!player,scores={Flourish=2..},tag=flourish] at @s run scoreboard players set @s Hit 4

execute as @e[scores={Flourish=1..3},tag=flourish] at @s run scriptevent ds:knockback -3.5
execute as @e[scores={Flourish=4..},tag=flourish] at @s run scriptevent ds:knockback -7

execute as @e[scores={Flourish=1..},tag=flourish,tag=!fallingflourish] at @s if block ~~-1~ air run tag @s add fallingflourish

execute as @e[scores={Flourish=1..},tag=flourish] at @s if block ~~-1~ air run tp @s @s
execute as @e[scores={Flourish=1..},tag=flourish] at @s if block ~~-1~ air rotated ~ 0 run tp @s ^^-0.8^-0.65
execute as @e[scores={Flourish=1..},tag=flourish] at @s if block ~~-1~ air rotated ~ 0 run tp @s ^^-0.8^-0.65

execute as @e[scores={Flourish=1..},tag=flourish] at @s unless block ~~-0.3~ air run particle ds:sprint ~~~

tag @e[scores={Flourish=1..},tag=flourish,tag=hardknockback] remove hardknockback

execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s if block ~~-0.5~ air run scoreboard players add @s Flourish 1
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run playsound mob.wither.break_block @a ~~~ 1 2.25
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run playsound mob.wither.break_block @a ~~~ 1 1.75
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run playsound random.explode @a ~~~ 1 2.25
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run playsound random.explode @a ~~~ 1 2
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run particle ds:dirt2
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run particle ds:crater
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run camerashake add @a[r=10] 4 0.25
execute as @e[scores={Flourish=1..,knock=0},tag=flourish,tag=fallingflourish] at @s unless block ~~-1~ air run scoreboard players set @s knock 25
tag @e[scores={Flourish=1..,knock=1..},tag=flourish,tag=fallingflourish] remove fallingflourish
scoreboard players set @e[scores={Flourish=1..,knock=1..},tag=flourish] Flourish 0
tag @e[scores={Flourish=0,knock=1..},tag=flourish] remove flourish

execute as @e[scores={Flourish=1..},tag=flourish] at @s anchored eyes rotated ~ 0 unless block ^^^-0.33 air unless block ^^^-0.33 tallgrass unless block ^^^-0.33 double_plant unless block ^^^-0.33 red_flower unless block ^^^-0.33 yellow_flower unless block ^^^-0.33 stone_slab unless block ^^^-0.33 stone_slab2 unless block ^^^-0.33 stone_slab3 unless block ^^^-0.33 stone_slab4 run function wallbang

tag @e[scores={Flourish=1..2},tag=fallingflourish] remove fallingflourish
tag @e[scores={Flourish=1..2},tag=flourish] remove flourish
