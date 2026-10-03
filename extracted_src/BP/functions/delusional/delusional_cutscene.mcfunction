playanimation @s[scores={move=200..}] animation.delusional_cutscene
tag @s[scores={move=1..},tag=!delusional] add delusional

title @s[scores={move=219..},type=player] actionbar ...
tag @s[scores={move=1..3},tag=delusional_cutscene] remove delusional_cutscene

hud @s[scores={move=215..},type=player] hide progress_bar
hud @s[scores={move=215..},type=player] hide hotbar
hud @s[scores={move=215..},type=player] hide hunger

effect @e[r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!spectator,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] weakness 1 10 true
scoreboard players set @e[r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 33
effect @e[type=!player,r=10,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 1 10 true

give @s[scores={move=10},type=player] ds:delusional2 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}

scoreboard players set @s[scores={Frames=0..5,move=10..}] Frames 20
scoreboard players set @s[scores={Move=0..5,move=10..}] Move 20
scoreboard players set @s[scores={Camera=0..5,move=10..}] Camera 20

camera @s[scores={move=210..},type=player] fade time 0 0.5 0.25 color 0 0 0
execute as @s[scores={move=203..},type=player] at @s run scriptevent ds:knockback 0.5

execute as @s[scores={move=190..191},type=player] at @s run playsound music.takada @s
scoreboard players set @s[scores={move=190..191},type=player] delusional_music 1
execute as @s[scores={move=200..203},type=player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=1..},type=!player] at @s run tp @s ~~~~ 0

execute as @s[scores={move=200..},type=player] at @s run camera @s set minecraft:free pos ^^0.22^0.44 facing ^^0.5^
execute as @s[scores={move=199..},type=player] at @s run camera @s set minecraft:free ease 0.5 in_sine pos ^^0.175^0.44 facing ^^^0.2


execute as @s[scores={move=158},type=player] at @s run camera @s fade time 0.25 0.15 0.25 color 255 255 255

execute as @s[scores={move=151..153},type=player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=154}] at @s if entity @p[tag=griefable] unless block ~~~ bedrock unless block ~~1~ bedrock unless block ~~2~ bedrock unless block ~~3~ bedrock unless block ~~4~ bedrock unless block ~~~ barrier unless block ~~1~ barrier unless block ~~2~ barrier unless block ~~3~ barrier unless block ~~4~ barrier run fill ~4~~4~-4~4~-4 air
execute as @s[scores={move=154}] at @s run summon ds:takada_background ^^^3.5


execute as @s[scores={move=130},type=player] at @s run playsound music.sparkle @s ~~~ 99999 2 99999

execute as @s[scores={move=152},type=player] at @s run camera @s set minecraft:free pos ^^1.6^1 facing ^^0.5^
execute as @s[scores={move=149..150},type=player] at @s run camera @s set minecraft:free ease 1 out_quint pos ^^1.6^1 facing ^^1.6^
execute as @s[scores={move=152}] at @s run summon ds:takada_chan ^-0.5^0.2^-0.25 facing ^-0.5^^5
execute as @s[scores={move=149..150}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_eyesclosed

execute as @s[scores={move=115..120}] at @s run tp @e[type=ds:takada_chan,c=1] ^-0.2^^-0.15 facing ^-0.2^^5
execute as @s[scores={move=114..120}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=150..152}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional_cutscene2

execute as @s[scores={move=78}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=78},type=player] at @s run playsound music.sparkle @s ~~~ 99999 1.4 99999

execute as @s[scores={move=130..132}] at @s run event entity @e[type=ds:takada_background,r=10,c=1] colour_2

execute as @s[scores={move=130},type=player] at @s run camera @s set minecraft:free pos ^^1.6^0.65 facing ^^1.6^
execute as @s[scores={move=90},type=player] at @s run camera @s set minecraft:free ease 0.5 in_out_circ pos ^^1.6^1 facing ^-0.25^1.6^

execute as @s[scores={move=50},type=player] at @s run playsound music.sparkle @s ~~~ 99999 1 99999

execute as @s[scores={move=48..51}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=46}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=43}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=42}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=39}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=35}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=33}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=30}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=27}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=24}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=23}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=18}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=15}] at @s run scriptevent ds:delusional_small 0,0,0
execute as @s[scores={move=10}] at @s run scriptevent ds:delusional_small 0,0,0

execute as @s[scores={move=49..52}] at @s run tp @e[type=ds:takada_chan,c=1] ^^0.15^-0.15 facing ^^^5
execute as @s[scores={move=48}] at @s run playsound mob.enderdragon.flap @a[tag=!delusional_cutscene,r=25] ~~~ 99999 1.25 99999
execute as @s[scores={move=49..50}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink2
execute as @s[scores={move=51},type=player] at @s run camera @s fade time 0 0 0.5 color 255 255 255
execute as @s[scores={move=50}] at @s run event entity @e[type=ds:takada_background,r=10,c=1] ds:disappear
execute as @s[scores={move=50}] at @s run summon ds:takada_background ^1^^4 facing ^1^^5
execute as @s[scores={move=49..50}] at @s run event entity @e[type=ds:takada_background,r=10,c=1] colour_3
execute as @s[scores={move=50},type=player] at @s run camera @s set minecraft:free pos ^0.4^1.6^0.8 facing ^-0.75^1.3^
execute as @s[scores={move=49..50},type=player] at @s run camera @s set minecraft:free ease 0.25 out_quint pos ^^1.6^1 facing ^^1.6^
execute as @s[scores={move=44..45},type=player] at @s run camera @s set minecraft:free ease 2 in_sine pos ^^1.6^1.25 facing ^^1.6^

camera @s[scores={move=15},type=player] fade time 0.5 0.5 0.25 color 255 255 255

execute as @s[scores={move=1..6}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=4..5},type=player] at @s run camera @s clear
execute as @s[scores={move=4..5}] at @s run event entity @e[type=ds:takada_background,r=10,c=1] ds:disappear
execute as @s[scores={move=4..5}] at @s run event entity @e[type=ds:takada_chan,rm=3,r=10,c=1] ds:disappear