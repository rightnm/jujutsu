playanimation @s[scores={move=20}] animation.volcanic_launch

tag @s[scores={move=1..2},tag=form5b] remove form5b

tag @s[scores={move=17..,Stun=1..},tag=form5b] remove form5b
playanimation @s[scores={move=17..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=17..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..17}] Frames 4
scoreboard players set @s[scores={move=1..}] Move 4

execute as @s[scores={move=17..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=16}] at @s unless score griefing Mode = three Mode unless block ~~-1~ air if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] run fill ~3~1~3 ~-3~~-3 lava [] replace air
execute as @s[scores={move=16}] at @s unless score griefing Mode = three Mode unless block ~~-1~ air if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] run fill ~5~~5 ~-5~~-5 lava [] replace air
execute as @s[scores={move=16}] at @s unless block ~~-1~ air if entity @e[tag=griefable] run function heat12x12

execute as @s[scores={move=1..16}] at @s run damage @e[tag=!Frames,type=!ds:ember_insect,r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 1 override
execute as @s[scores={move=1..16}] at @s run scoreboard players add @e[tag=!Frames,type=!ds:ember_insect,r=7,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 2

execute as @s[scores={move=16}] at @s run  function damages/fire_damage
execute as @s[scores={move=16}] at @s run particle ds:volcanic_launch1
execute as @s[scores={move=16}] at @s run particle ds:volcanic_launch2
execute as @s[scores={move=16}] at @s run particle ds:volcanic_launch3
execute as @s[scores={move=16}] at @s run particle ds:volcanic_launch4
execute as @s[scores={move=16}] at @s run particle ds:volcanic_launch5
execute as @s[scores={move=15..16}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=16}] at @s run particle ds:ground_slam1
execute as @s[scores={move=16}] at @s run particle ds:ground_slam2
execute as @s[scores={move=16}] at @s run particle ds:ground_slam3
execute as @s[scores={move=16}] at @s run effect @s levitation 1 60 true
execute as @s[scores={move=5}] at @s run effect @s levitation 0 70 true
execute as @s[scores={move=15..16}] at @s run playsound random.explode @a[r=200] ~~~ 9999 0.25 9999
execute as @s[scores={move=10..16}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 0.25 9999
execute as @s[scores={move=10..16}] at @s run playsound bubble.up @a[r=200] ~~~ 9999 0.7 9999