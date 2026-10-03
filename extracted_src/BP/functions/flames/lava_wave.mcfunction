execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ water run scoreboard players set @s Deleter 3
execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=4..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={Deleter=4..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=4..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={Deleter=4..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~

effect @s fire_resistance 1 10 true

function damages/fire_damage

tp @s ~~~~ 0

tp @s ^^^0.35

execute as @s[scores={Deleter=26..125}] at @s run camerashake add @a[r=40] 0.5 0.15
execute as @s[scores={Deleter=26..125}] at @s run playsound random.fizz @a[r=40] ~~~ 99999 0.2 99999

execute as @s[scores={Deleter=26..125}] at @s if entity @e[tag=griefable] positioned ^8^^ run function flames/heat15x15
execute as @s[scores={Deleter=26..125}] at @s if entity @e[tag=griefable] positioned ^-8^^ run function flames/heat15x15
execute as @s[scores={Deleter=26..125}] at @s unless score griefing Mode = three Mode if entity @e[tag=griefable] unless entity @e[family=damage,tag=DomainExpansion,r=70,type=!ds:malevolent_kitchen,type=!ds:incomplete_shrine] unless entity @s[tag=lavaoff] run fill ^21^^ ^-21 ^-1 ^-2 lava [] replace air

execute as @s[scores={Deleter=26..125}] at @s if score griefing Mode = three Mode run scoreboard players set @e[tag=!Frames,r=23,scores={onfire=0..7},tag=!flames,type=!ds:jogo,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 8
execute as @s[scores={Deleter=26..125}] at @s if score griefing Mode = three Mode run scoreboard players add @e[r=23,tag=!Frames,tag=!flames,type=!ds:jogo,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] onfire 2
execute as @s[scores={Deleter=26..125}] at @s if score griefing Mode = three Mode run damage @e[r=23,tag=!Frames,tag=!flames,type=!ds:jogo,type=!ds:ember_insect,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 2 fire_tick

execute as @s[scores={Deleter=1..4}] at @s run tp @s ~~-200~

