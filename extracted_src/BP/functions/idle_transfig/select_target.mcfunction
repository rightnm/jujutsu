# start
scoreboard players set @s Disabled 10

# tag new valid target nearby
execute unless entity @e[tag=idle_target,r=5] run tag @e[r=5,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!ds:gojo_knockback,type=!gg:impact_frame,type=!armor_stand,family=!transfigured_human] add idle_target

# familiar aggro
execute if entity @e[tag=idle_target,r=5] at @s as @e[family=transfigured_human,family=familiar] if score @s familiarID = @e[scores={uniqueid=1..},r=1,c=1] uniqueid run event entity @s reselect_target

# feedback
execute if entity @e[tag=idle_target,r=5] run tellraw @s[type=player] {"rawtext":[{"text":"§aTarget locked: §r§f"},{"selector":"@e[tag=idle_target,r=5,c=1]"}]}
execute if entity @e[tag=idle_target,r=5] run playsound random.orb @s[type=player]

# continue further if needed
execute unless entity @e[tag=idle_target,r=5] positioned ^^^5 if entity @s[r=100] run function idle_transfig/select_target