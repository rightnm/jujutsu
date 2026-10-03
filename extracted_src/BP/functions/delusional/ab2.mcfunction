playanimation @s[scores={move=40..41}] animation.delusional.ab2
execute as @s[scores={move=40..41}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab2
execute as @s[scores={move=40..41}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=0..41}] at @s run tp @e[type=ds:takada_chan,c=1] ^0.8^^-0.5 facing ^^^5

execute as @s[scores={move=1000}] at @s if entity @e[tag=griefable] unless block ~~~ bedrock unless block ~~1~ bedrock unless block ~~2~ bedrock unless block ~~3~ bedrock unless block ~~4~ bedrock unless block ~~5~ bedrock unless block ~~6~ bedrock unless block ~~~ barrier unless block ~~1~ barrier unless block ~~2~ barrier unless block ~~3~ barrier unless block ~~4~ barrier unless block ~~5~ barrier unless block ~~6~ barrier run fill ~6~~6~-6~6~-6 air

execute as @s[scores={move=39}] at @s positioned ^^^1.5 run playsound mob.enderdragon.flap @a ~~~ 9999 0.75 9999

scoreboard players set @s[scores={move=1..}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 5

execute as @s[scores={move=38}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=38}] at @s run particle ds:ground_slam2 ~~~

tag @s[scores={move=40..41},tag=!delusional2] add delusional2

scoreboard players set @e[tag=idols_debut,r=15,c=1] Stun 35
execute as @e[tag=idols_debut,r=15,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim


execute as @s[type=!player,scores={move=45..}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=33..40}] at @s unless entity @e[tag=!Frames,r=4,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scriptevent ds:knockback 3

execute as @s[scores={move=25}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=26}] at @s positioned ^^^1.5 run playsound mob.witch.throw @a ~~~ 9999 0.75 9999
execute as @s[scores={move=25}] at @s positioned ^^^1.5 run camerashake add @a[r=33] 2 0.15
execute as @s[scores={move=25}] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=25}] at @s run particle ds:ground_pound4 ~~~
execute as @s[scores={move=25}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=25}] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.shock1 @a[r=33] ~~~ 99999 1.87 999999
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=33] ~~~ 99999 1.25 999999
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:delusional_ab1 0,0,0
execute as @s[scores={move=25}] at @s positioned ^^^1.5 as @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:delusional_hit 0,0,0
execute as @s[scores={move=25}] at @s positioned ^^^1.5 run tag @e[tag=!Frames,r=2.4,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add idols_debut
execute as @s[scores={move=20..24}] at @s if entity @e[tag=idols_debut,r=4,c=1] run scoreboard players set @s move 1001
camera @s[scores={move=1000..},type=player] fade time 0 0.1 0.1 color 255 255 255

execute as @s[scores={move=1000..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=1000..}] at @s run camerashake add @a[r=10] 0.25 0.3
execute as @s[scores={move=1000..}] at @s run tp @e[tag=idols_debut,r=15,c=1] ^^6^3.5 facing ^^^1

execute as @s[scores={move=1000..},type=player] at @s run camera @s set minecraft:free pos ^-1^9^4.3 facing ^1.75^^0.5

execute as @s[scores={move=999..}] at @s run tp @e[type=ds:takada_chan,c=1] ^0.5^^-0.75 facing ^^^5
execute as @s[scores={move=1000}] at @s run summon ds:takada_background ^^^2
execute as @s[scores={move=1000}] at @s run playanimation @e[tag=idols_debut,r=15,c=1] animation.delusional.ab2_hit
execute as @s[scores={move=950}] at @s run playanimation @e[tag=idols_debut,r=15,c=1] animation.delusional.ab2_hit
execute as @s[scores={move=1000}] at @s run playanimation @s animation.delusional.ab2b
execute as @s[scores={move=1000}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab2b
execute as @s[scores={move=998..}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_2

execute as @s[scores={move=999..1000}] at @s run scriptevent ds:delusional_hit 0,0,0 
execute as @s[scores={move=900..1000}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=999..1000}] at @s as @e[tag=idols_debut,r=15,c=1] at @s run scriptevent ds:delusional_hit 0,0,0 

execute as @e[tag=idols_debut,r=15,c=1] at @s run tp @s ~~~~ 0

execute as @s[scores={move=975},type=player] at @s run camera @s fade time 0.1 0.2 0.15 color 255 255 255

execute as @s[scores={move=970}] at @s run playsound music.bass3 @a[r=33] ~~~ 99999 1.2 99999

execute as @s[scores={move=970..971}] at @s run playanimation @s animation.delusional.ab2b_kick
execute as @s[scores={move=970..971}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab2b_kick

execute as @s[scores={move=970}] at @s at @e[tag=idols_debut,r=15,c=1] run tp @s ^^1.5^1.5 facing ~~1.45~
execute as @s[scores={move=940..970},tag=!self_blind] at @s run tag @s add self_blind
execute as @s[scores={move=940..970}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=940..970},type=player] at @s run camera @s set minecraft:free pos ^^0.35^1 facing ~~1~
execute as @s[scores={move=910..970}] at @s run tp @e[type=ds:takada_chan,c=1] ~~~ facing ^^^1

execute as @s[scores={move=942},type=player] at @s run camera @s fade time 0 0.1 0.15 color 255 255 255

execute as @s[scores={move=940}] at @s run camerashake add @a[r=20] 0.15 1.5

execute as @s[scores={move=938..940}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=938..940}] at @s run scriptevent ds:delusional_hit 0,0,0
execute as @s[scores={move=936}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={move=936}] at @s run particle ds:large_impact1 ^^^0.25
execute as @s[scores={move=936}] at @s run particle ds:large_impact2 ^^^0.25

execute as @s[scores={move=939..940}] at @s run playanimation @s animation.delusional.ab2b_kick3
execute as @s[scores={move=939..940}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab2b_kick2
execute as @s[scores={move=939..940}] at @s run playanimation @e[tag=idols_debut,r=15,c=1] animation.delusional.ab2_hit2
execute as @s[scores={move=916..940}] at @s at @e[tag=idols_debut,r=15,c=1] run tp @s ^^^0.1 facing ~~0.1~
execute as @s[scores={move=910..939},type=player] at @s run camera @s set minecraft:free pos ^1^-1^0.8 facing ^-0.15^1^

execute as @s[scores={move=915}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=915}] at @s run playsound mob.bullet @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=915}] at @s run particle ds:heavy_impact2 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:large_impact1 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:large_impact2 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:ground_slam1 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:ground_slam2 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:ground_slam3 ^^^0.25
execute as @s[scores={move=915}] at @s run particle ds:dirt3 ^^^0.25
execute as @s[scores={move=915}] at @s run camerashake add @a[r=100] 4 0.25
execute as @s[scores={move=915}] at @s run particle ds:pink_tint ^^^
execute as @s[scores={move=915}] at @s run summon gg:impact_frame ~~-6~
execute as @s[scores={move=915}] at @s run damage @e[tag=idols_debut,r=15,c=1] 30 override entity @s
execute as @s[scores={move=915}] at @s run scoreboard players set @e[tag=idols_debut,r=15,c=1] Hit 4
execute as @s[scores={move=915}] at @s run scoreboard players set @e[tag=idols_debut,r=15,c=1] Evade 10
execute as @s[scores={move=915}] at @s run scoreboard players set @e[tag=idols_debut,r=15,c=1] Flourish 7
execute as @s[scores={move=915}] at @s run scoreboard players set @e[tag=idols_debut,r=15,c=1] knockdown 105
execute as @s[scores={move=914}] at @s run scoreboard players operation @e[tag=idols_debut,r=15,c=1] damage += @s damageadd
execute as @s[scores={move=905..915}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=905..915}] at @s run scriptevent ds:delusional_hit 0,0,0

execute as @s[scores={move=904..911}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=904..911}] at @s run tp @s ^^1^-1 facing ^^-0.25^1
effect @s[scores={move=915..916}] slow_falling 1 1 true
camera @s[scores={move=904..908},type=player] clear
execute as @s[scores={move=904..908}] at @s run tag @e[tag=idols_debut,c=1] remove idols_debut
tag @s[scores={move=904..908},tag=self_blind] remove self_blind
execute as @s[scores={move=904..908}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] ds:disappear
execute as @s[scores={move=904..908}] at @s run scoreboard players set @s move 3

tag @s[scores={move=0..3},tag=self_blind] remove self_blind
tag @s[scores={move=0..3},tag=delusional2] remove delusional2