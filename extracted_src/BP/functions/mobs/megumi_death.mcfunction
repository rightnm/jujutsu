scoreboard players set @s Stun 5
tp @s ~~~
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] expadd 200
scoreboard players add @a[scores={combat=1..},r=50,m=!spectator] guilty_score 3
execute unless score mobeventstoggle Mode = three Mode as @p[r=50] run structure load megumis ~~~
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_high_sorcerer
execute as @s if entity @p[tag=high_sorcerer_quest,c=1,tag=curse,m=!spectator] run function missions/credit/killcredit_grade2sorcerer
function missions/credit/killcredit_grade1sorcerer
damage @s 2 suicide
execute as @e[r=40,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run fill ~30~-1~30~-30~-3~-30 air [] replace barrier

execute if entity @e[tag=shadowgarden,tag=DomainExpansion,r=35] run function domain_end
function negative_field_chance
execute as @e[family=shikigami,r=66,type=!ds:toji_awakening] at @s run function shikigami/shikigami_callback

execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @e[family=yuji,r=50] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene
execute as @s at @s if entity @e[tag=idle_transfig,r=8] if entity @p[hasitem={item=ds:yuji_fists}] unless entity @e[tag=idle_transfig,c=1,tag=yuji_rage_cutscene_mahito,r=8] run function idle_transfig/start_yuji_rage_cutscene