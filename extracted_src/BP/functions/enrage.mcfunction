tag @e[scores={enrage=1..},type=!player,tag=!undying,tag=!enrage_end] add undying
#tag @e[scores={enrage=1..},type=!player,tag=!insanity] add insanity

execute as @e[scores={enrage=1..,atk=1},tag=!enrage_end] at @s positioned ^^^3 run scoreboard players add @e[type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!Frames,r=2.95] damage 1

effect @e[scores={enrage=1..},tag=!enrage_end,tag=!spectator] speed 1 2 true
effect @a[scores={enrage=1..},tag=!enrage_end,m=!spectator] strength 1 2 true

execute as @e[scores={enrage=3..},type=!player,tag=undying,tag=enrage_end] unless entity @s[scores={blackflash_amount=1..}] unless entity @s[scores={forms=2..}] run tag @s remove undying
execute as @e[scores={enrage=1..2},type=!player,tag=undying] unless entity @s[scores={blackflash_amount=1..}] unless entity @s[scores={forms=2..}] run tag @s remove undying

scoreboard players remove @s[scores={enrage=5..,thezone=1..},tag=enrage_end] enrage 2
execute as @e[scores={enrage=4..},tag=enrage_end] at @s if entity @e[family=todo,tag=!sukuna,tag=!curse,tag=!rogue_sorcerer,r=50] run scoreboard players remove @s enrage 1
scoreboard players remove @e[scores={enrage=1..}] enrage 1