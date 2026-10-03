tag @s[tag=!enemy_veil,name="§4Cursed Veil"] add enemy_veil
particle ds:cursed_veil0
tag @s[tag=!domainunselect] add domainunselect
tag @s[tag=Frames] remove Frames
tp @s ~~~~ 0



execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run spreadplayers ~ ~ 10 24 @s
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run spreadplayers ~ ~ 0 1 @s
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tellraw @a[r=70,tag=curse] {"rawtext":[{"text":"§cA Group of Sorcerers have trapped you in their cursed veil."}]}
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tellraw @a[r=70,tag=!curse] {"rawtext":[{"text":"§cA Group of Rogue Sorcerers have trapped you in their cursed veil."}]}

execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=2..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=3..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=4..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=5..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=5..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=5..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s if entity @a[scores={grade=5..},tag=veil_target,r=70,c=1] run function cursed_veil_random_wave

execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_male,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_female,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_male_grade2,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_female_grade2,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_male_grade1,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @e[type=ds:sorcerer_female_grade1,r=70,tag=!rogue_sorcerer] add rogue_sorcerer
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @a[tag=veil_target,r=70,c=1] add rogue_target
execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run spreadplayers ~ ~ 1 50 @e[tag=rogue_sorcerer,r=70]



execute as @s unless entity @s[scores={Deleter=0..}] at @s run camera @a[r=100] fade time 0 0.5 1 color 0 0 0
execute as @s unless entity @s[scores={Deleter=0..}] at @s run camerashake add @a[r=100] 0.25 2
execute as @s unless entity @s[scores={Deleter=0..}] at @s run playsound mob.wither.spawn @a[r=100] ~~~ 99999 1.25 99999

execute as @s[tag=enemy_veil,scores={chance=1..2}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:miwa
execute as @s[tag=enemy_veil,scores={chance=3..4}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:yuji_itadori
execute as @s[tag=enemy_veil,scores={chance=5..6}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:megumi
execute as @s[tag=enemy_veil,scores={chance=7..8}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:kusakabe
execute as @s[tag=enemy_veil,scores={chance=9}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:yuji_itadori_awakened
execute as @s[tag=enemy_veil,scores={chance=10}] unless entity @s[scores={Deleter=0..}] at @s if entity @a[tag=curse,tag=veil_target,r=70,c=1,scores={grade=3..}] run summon ds:maki_cullinggames

execute as @s unless entity @s[scores={Deleter=0..}] at @s run tp @s ~~5~


execute as @s[tag=enemy_veil] unless entity @s[scores={Deleter=0..}] at @s run tag @a[tag=veil_target,r=70,c=1] remove veil_target
execute as @s unless entity @s[scores={Deleter=0..}] at @s run scoreboard players set @s Deleter 12000

execute as @e[r=80,rm=70,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[type=ds:cursed_veil,r=80,rm=70,c=1]
execute as @e[r=80,rm=70,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ^^^-10

execute as @e[r=70,rm=58,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[type=ds:cursed_veil,r=70,rm=58,c=1]
execute as @e[r=70,rm=58,type=!item,family=!despawncito,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ^^^10 

execute as @s[tag=enemy_veil] at @s unless entity @e[tag=rogue_sorcerer,r=70] run kill @s



execute as @s[scores={detect_health=0..2}] run particle ds:dog_combine1
execute as @s[scores={detect_health=0..2}] run playsound mob.wither.hurt @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={detect_health=0..2}] run camerashake add @a[r=100] 2 1
execute as @s[scores={detect_health=0..2}] run tellraw @a[r=100] {"rawtext":[{"text":"§aThe Cursed Veil's Core was destroyed!"}]}
execute as @s[scores={detect_health=0..2}] run event entity @s ds:disappear


