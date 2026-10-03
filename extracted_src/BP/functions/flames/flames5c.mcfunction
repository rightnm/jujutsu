playanimation @s[scores={move=35}] animation.volcanic_burst

tag @s[scores={move=1..2},tag=form5c] remove form5c

tag @s[scores={move=24..,Stun=1..},tag=form5c] remove form5c
playanimation @s[scores={move=24..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=24..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 4
scoreboard players set @s[scores={move=1..24}] Frames 4

execute as @s[scores={move=17..}] at @s if block ~~-0.1~ air run scriptevent ds:downfall

execute as @s[scores={move=23}] at @s run function damages/fire_damage
execute as @s[scores={move=23}] at @s run playsound random.explode @a[r=20] ~~~ 9999 1.2 9999
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam1
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam2
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam3
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam4
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam5
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam6
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam7
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam8
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam9
execute as @s[scores={move=23}] at @s run particle ds:fire_downslam10
execute as @s[scores={move=23}] at @s run particle ds:fire_crater2
execute as @s[scores={move=23}] at @s run particle ds:rubble3
execute as @s[scores={move=23}] at @s run particle ds:ground_slam2

execute as @s[scores={move=23}] at @s run execute as @e[tag=!Frames,type=!ds:ember_insect,c=3,r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run summon ds:projectile "Molten Burst" ~~~
execute as @s[scores={move=21..23}] at @s if entity @e[family=damage,tag=DomainExpansion,r=50,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] run tag @e[type=ds:projectile,name="Molten Burst",r=50,c=3] add lavaoff
execute as @s[scores={move=21..23}] at @s run scoreboard players set @e[type=ds:projectile,name="Molten Burst",r=50,c=3] Deleter 31

execute as @e[type=ds:projectile,name="Molten Burst",r=50,c=3] at @s run function flames/molten_burst
