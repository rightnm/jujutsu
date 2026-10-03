execute as @s[scores={cutscene=1..}] at @s run scoreboard players set @e[r=50,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!motionless,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!xp_bottle,type=!ender_pearl,type=!lightning_bolt,type=!splash_potion,type=!lingering_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!ds:gojo_knockback,type=!gg:impact_frame,type=!armor_stand,tag=!infinity] infinity 6
execute as @s[scores={cutscene=15..}] at @s run scoreboard players set @e[r=50,scores={Disabled=0..24},tag=!yuji_rage_cutscene_mahito,tag=!yuji_rage_cutscene_yuji,tag=!spectator] Disabled 25
execute as @s[scores={cutscene=15..}] at @s run scoreboard players set @e[r=50,scores={Stun=0..24},tag=!yuji_rage_cutscene_mahito,tag=!yuji_rage_cutscene_yuji,tag=!spectator] Stun 25
execute as @s[scores={cutscene=15..}] at @s run scoreboard players set @e[r=50,scores={Move=0..24},tag=!yuji_rage_cutscene_mahito,tag=!yuji_rage_cutscene_yuji,tag=!spectator] Move 25
execute as @s[scores={cutscene=15..}] at @s run tag @e[r=50,scores={Move=0..,move=0..,cutscene=0..},type=!player,tag=!yuji_rage_cutscene_mahito,tag=!yuji_rage_cutscene_yuji,tag=!spectator,tag=!unlimited_hit] add unlimited_hit
scoreboard players set @a[r=50] Camera 6

kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

execute as @s[scores={cutscene=1..396}] at @s facing entity @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] feet rotated ~ 0 run tp @s ~~~ facing ^^^100
execute as @s[scores={cutscene=1..}] at @s positioned ^^^20 facing entity @s feet rotated ~ 0 run tp @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] ~~~ facing ^^^100



camera @s[scores={cutscene=400..},type=player] fade time 0 0.25 0.25 color 0 0 0
playanimation @s[scores={cutscene=399..}] animation.enraged_yuji_mahito_idle
execute as @s[scores={cutscene=399..}] at @s run playanimation @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] animation.enraged_yuji_1

effect @s[scores={cutscene=399..},type=!player] instant_health 1 0 true
effect @e[tag=yuji_rage_cutscene_yuji,r=50,c=1,type=!player] instant_health 1 0 true
damage @s[scores={cutscene=399..},type=!player] 0 override entity @e[tag=yuji_rage_cutscene_yuji,r=50,c=1]
damage @e[tag=yuji_rage_cutscene_yuji,r=50,c=1,type=!player] 0 override entity @s[scores={cutscene=399..}]
effect @s[scores={cutscene=399..},type=!player] instant_health 0 1 true
effect @e[tag=yuji_rage_cutscene_yuji,r=50,c=1,type=!player] instant_health 0 1 true





execute as @s[scores={cutscene=400}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s run playsound mob.enraged_yuji1 @a[r=100] ~~1.2~ 99999 1 99999

execute as @s[scores={cutscene=398..}] at @s as @a[r=50] at @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] run camera @s set minecraft:free pos ^3^0.5^9 facing ~~1.35~

execute as @s[scores={cutscene=347..349}] at @s at @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] as @a[r=19.9] run camera @s set minecraft:free pos ^-2^0.5^5 facing ^^1.4^10
execute as @s[scores={cutscene=347..349}] at @s as @a[r=50] at @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] unless entity @s[r=19.9] run camera @s set minecraft:free pos ^-3^0.5^2 facing ^^1.4^10

execute as @s[scores={cutscene=213..215}] at @s at @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] as @a[r=19.9] run camera @s set minecraft:free pos ^-1^1.5^0.7 facing ^^1.55^0.6
execute as @s[scores={cutscene=213..215}] at @s as @a[r=50] at @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] unless entity @s[r=19.9] run camera @s set minecraft:free pos ^-1^1.5^0.7 facing ^^1.55^0.6


execute as @s[scores={cutscene=133..136}] at @s run camera @a[r=50] set minecraft:free pos ^^1.5^0.7 facing ^^1.5^
playanimation @s[scores={cutscene=134..135}] animation.enraged_yuji_mahito
execute as @s[scores={cutscene=124}] at @s run playsound mob.enraged_yuji2 @a[r=100] ~~1.2~ 99999 1 99999



execute as @s[scores={cutscene=350..372}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=!player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< Yuji Itadori > Wha-..."}]}
execute as @s[scores={cutscene=350..372}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< "},{"selector":"@s"},{"text":" > Wha-..."}]}

execute as @s[scores={cutscene=250..295}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=!player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< Yuji Itadori > What the hell..."}]}
execute as @s[scores={cutscene=250..295}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< "},{"selector":"@s"},{"text":" > What the hell..."}]}

execute as @s[scores={cutscene=130..215}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=!player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< Yuji Itadori > WHAT THE HELL ARE YOU, MAHITO!?"}]}
execute as @s[scores={cutscene=130..215}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s[type=player] run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§f< "},{"selector":"@s"},{"text":" > WHAT THE HELL ARE YOU, MAHITO!?"}]}

execute as @s[scores={cutscene=55..125},type=!player] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§c< Mahito > YOU DONT HAVE TO SHOUT, I CAN HEAR YOU!-"}]}
execute as @s[scores={cutscene=55..125},type=player] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§c< "},{"selector":"@s"},{"text":" > YOU DONT HAVE TO SHOUT, I CAN HEAR YOU!-"}]}

execute as @s[scores={cutscene=10..45},type=!player] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§c< Mahito > ITADORI YUJI!"}]}
execute as @s[scores={cutscene=10..45},type=player] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§c< "},{"selector":"@s"},{"text":" > ITADORI YUJI!"}]}


execute as @s[scores={cutscene=15}] at @s run camera @a[r=50] fade time 0.25 0.75 0.25 color 0 0 0
execute as @s[scores={cutscene=9}] at @s run camera @a[r=50] clear
execute as @s[scores={cutscene=9}] at @s as @a[r=50] at @s run playsound music.prowess @s ~~~ 99999 1 99999
execute as @s[scores={cutscene=9}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] if entity @s[type=!player] run tellraw @a[r=50] {"rawtext":[{"text":"§o§cYuji is now Enraged!"}]}
execute as @s[scores={cutscene=9}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] if entity @s[type=player] run tellraw @a[r=50] {"rawtext":[{"text":"§o§c"},{"selector":"@s"},{"text":" is now Enraged!"}]}
execute as @s[scores={cutscene=9}] at @s as @e[tag=yuji_rage_cutscene_yuji,r=50,c=1] at @s run function enrage_yuji
execute as @s[scores={cutscene=0..4}] at @s run function idle_transfig/remove_yuji_rage_cutscene


