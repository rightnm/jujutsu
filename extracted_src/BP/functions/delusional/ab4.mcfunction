playanimation @s[scores={move=60..61}] animation.delusional.ab4
execute as @s[scores={move=60..61}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab4_takada
execute as @s[scores={move=60..61}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=0..61}] at @s run tp @e[type=ds:takada_chan,c=1] ^-1.25^^0.5 facing ^^^5

execute as @s[scores={move=46..61}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=46..61}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=46..61}] at @s if block ~~-0.2~ air run tp @s ~~-0.2~
execute as @s[scores={move=46..61}] at @s if block ~~-0.4~ air run tp @s ~~-0.4~

execute as @s[scores={move=31}] at @s positioned ^^^1.5 run playsound mob.enderdragon.flap @a ~~~ 9999 0.75 9999

scoreboard players set @s[scores={move=1..}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=62..,Camera=0..8}] Camera 15

execute as @s[type=!player,scores={move=65..}] at @s run tp @s ~~~~ 0


execute if entity @e[tag=climax_jumping,r=2.25,c=1,type=!player,family=!dummy] run tp @s ~~~~ 0

execute as @s[scores={move=31}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=31}] at @s run particle ds:ground_slam2 ~~~

tag @s[scores={move=60..61},tag=!delusional4] add delusional4
effect @a[r=5,m=!spectator] weakness 1 10 true

execute as @e[tag=climax_jumping,r=15,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim
scoreboard players set @e[tag=climax_jumping,r=15,c=1] Stun 35
scoreboard players set @e[tag=climax_jumping,r=15,c=1] Camera 35
scoreboard players set @e[tag=climax_jumping,r=15,c=1] Move 35

effect @e[type=!player,r=15,tag=!climax_jumping,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 1 10 true
scoreboard players set @e[type=!player,r=15,tag=!climax_jumping,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 75
scoreboard players set @e[type=!player,r=25,tag=!climax_jumping,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Disabled 75

execute as @s[scores={move=25..32}] at @s unless entity @e[tag=!Frames,r=3,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] run scriptevent ds:knockback 5

execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:delusional_small 0,1,1
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run camerashake add @a[r=33] 2 0.15
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:ground_pound3 ~~~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:ground_pound4 ~~~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:ground_slam2 ~~~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run particle ds:large_impact2 ~~1~
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.shock1 @a[r=33] ~~~ 99999 1.87 999999
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run playsound mob.wither.shoot @a[r=33] ~~~ 99999 1.25 999999
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:delusional_ab1 0,0,0
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run execute as @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run scriptevent ds:delusional_hit 0,0,0
execute as @s[scores={move=25..30}] at @s positioned ^^^1.5 run tag @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add climax_jumping
execute as @s[scores={move=20..30}] at @s if entity @e[tag=climax_jumping,r=5,c=1] run scoreboard players set @s move 1001





execute as @s[scores={move=1000}] at @s if entity @e[tag=griefable] unless block ~~~ bedrock unless block ~~1~ bedrock unless block ~~2~ bedrock unless block ~~3~ bedrock unless block ~~4~ bedrock unless block ~~5~ bedrock unless block ~~6~ bedrock unless block ~~~ barrier unless block ~~1~ barrier unless block ~~2~ barrier unless block ~~3~ barrier unless block ~~4~ barrier unless block ~~5~ barrier unless block ~~6~ barrier run fill ~6~~6~-6~6~-6 air
camera @s[scores={move=1000..},type=player] fade time 0 0 0.1 color 255 255 255
execute as @s[scores={move=1000..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=1000..}] at @s run camerashake add @a[r=10] 0.25 0.3
execute as @s[scores={move=1000..}] at @s run tp @e[tag=climax_jumping,r=15,c=1] ^^^0.75 facing @s


playanimation @s[scores={move=999..}] animation.delusional.ab4b
tag @s[scores={move=971..},tag=!self_blind] add self_blind
execute as @s[scores={move=971..}] at @s run effect @e[type=ds:takada_chan,c=1] invisibility 1 1 true
execute as @s[scores={move=999..}] at @s run playanimation @e[tag=climax_jumping,r=15,c=1] animation.delusional.ab4_hit
execute as @s[scores={move=1000}] at @s run summon ds:takada_background ^^^2
execute as @s[scores={move=1000}] at @s run summon gg:impact_frame
execute as @s[scores={move=999..}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_2

execute as @s[scores={move=999},type=player] at @s run camera @s set minecraft:free pos ^^0.33^-1.75 facing ^^1.25^1.5

execute as @s[scores={move=970..}] at @s run scriptevent ds:delusional_climax 0,0,1

execute as @s[scores={move=999}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.3~
execute as @s[scores={move=999}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.3~
execute as @s[scores={move=999}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run scriptevent ds:delusional_hit 0,1,0
execute as @s[scores={move=999}] at @s run playsound mob.punch1 @a[r=100] ~~~ 99999 2 999999
execute as @s[scores={move=999}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2 999999
execute as @s[scores={move=999}] at @s run camerashake add @a[r=25] 0.5 0.25


execute as @s[scores={move=986},type=player] at @s run camera @s set minecraft:free ease 0.35 in_out_circ pos ^^0.33^-1.5 facing ^2^1^1.5

execute as @s[scores={move=986}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.3~
execute as @s[scores={move=986}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.3~
execute as @s[scores={move=986}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run scriptevent ds:delusional_hit 0,1,0
execute as @s[scores={move=986}] at @s run playsound mob.punch1 @a[r=100] ~~~ 99999 2.5 999999
execute as @s[scores={move=986}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.5 999999
execute as @s[scores={move=986}] at @s run camerashake add @a[r=25] 1 0.15


execute as @s[scores={move=980},type=player] at @s run camera @s set minecraft:free ease 0.35 in_out_circ pos ^^0.33^-1.6 facing ^-2^1.4^1.5

execute as @s[scores={move=980}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.3~
execute as @s[scores={move=980}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.3~
execute as @s[scores={move=980}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run scriptevent ds:delusional_hit 0,1,0
execute as @s[scores={move=980}] at @s run playsound mob.punch1 @a[r=100] ~~~ 99999 2.23 999999
execute as @s[scores={move=980}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.23 999999
execute as @s[scores={move=980}] at @s run camerashake add @a[r=25] 1 0.15


execute as @s[scores={move=973},type=player] at @s run camera @s set minecraft:free ease 0.35 in_out_circ pos ^^0.33^-1.5 facing ^^1.3^1.5
execute as @s[scores={move=968..969},type=player] at @s run camera @s set minecraft:free ease 0.25 in_out_circ pos ^^1^ facing ^^1.3^1.5

execute as @s[scores={move=975}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.3~
execute as @s[scores={move=975}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.3~
execute as @s[scores={move=975}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run scriptevent ds:delusional_hit 0,1,0
execute as @s[scores={move=975}] at @s run playsound mob.punch1 @a[r=100] ~~~ 99999 2.23 999999
execute as @s[scores={move=975}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 2.23 999999
execute as @s[scores={move=975}] at @s run camerashake add @a[r=25] 0.5 0.25

#intro to barrage
execute as @s[scores={move=964},type=player] at @s run camera @s fade time 0 0 0.1 color 255 255 255
tag @s[scores={move=964},tag=self_blind] remove self_blind
execute as @s[scores={move=963}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=921..963}] at @s run tp @e[tag=climax_jumping,r=15,c=1] ^^^1 facing @s
execute as @s[scores={move=964}] at @s run effect @e[type=ds:takada_chan,c=1] clear invisibility
execute as @s[scores={move=920..964},type=player] at @s run camera @s set minecraft:free pos ^^2.15^0.7 facing ^^1^1
execute as @s[scores={move=920..964}] at @s run camerashake add @a[r=10] 0.15 0.15

execute as @s[scores={move=962..964}] at @s run playanimation @s animation.delusional.ab4b_barrage
execute as @s[scores={move=962..964}] at @s run playanimation @e[tag=climax_jumping,r=15,c=1] animation.delusional.ab4b_barraged

execute as @s[scores={move=921..964}] at @s run effect @e[type=ds:takada_chan,c=1] invisibility 1 1 true
execute as @s[scores={move=960..964}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_4
execute as @s[scores={move=962}] at @s run scriptevent ds:delusional_hearts 0,1.35,0.85
execute as @s[scores={move=952}] at @s run scriptevent ds:delusional_hearts 0,1.35,0.85
execute as @s[scores={move=942}] at @s run scriptevent ds:delusional_hearts 0,1.35,0.85
execute as @s[scores={move=932}] at @s run scriptevent ds:delusional_hearts 0,1.35,0.85

execute as @s[scores={move=863..962}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run playsound mob.punch @a ~~~ 0.16 2.25
execute as @s[scores={move=860..962}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:punch4 ~~1.2~
execute as @s[scores={move=860..962}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:punch1 ~~1.2~
execute as @s[scores={move=860..962}] at @s run scriptevent ds:delusional_glitter 0,0.5,0.75

camera @s[scores={move=924},type=player] fade time 0 0 0.1 color 255 255 255


execute as @s[scores={move=891..920},type=player] at @s run camera @s set minecraft:free pos ^0.65^1.6^0.4 facing ^^1.6^0.4
execute as @s[scores={move=891..920}] at @s run tp @e[type=ds:takada_chan,c=1] ^-0.5^0.25^0.4 facing ^^^1

execute as @s[scores={move=860..890},type=player] at @s run camera @s set minecraft:free pos ^-1^1.3^1 facing ^^1.5^0.15
execute as @s[scores={move=860..890}] at @s run tp @e[type=ds:takada_chan,c=1] ^-0.8^^ facing ^^^1

execute as @s[scores={move=920}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=918}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=916}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_lookright
execute as @s[scores={move=914}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=911}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink2
execute as @s[scores={move=908}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_eyesclosed
execute as @s[scores={move=904}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=903}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=901}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_lookright
execute as @s[scores={move=898}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=896}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink2
execute as @s[scores={move=893}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_eyesclosed
execute as @s[scores={move=890}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=886}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=885}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_lookright
execute as @s[scores={move=883}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=881}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink2
execute as @s[scores={move=876}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_eyesclosed
execute as @s[scores={move=873}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=871}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=870}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_lookright
execute as @s[scores={move=868}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=866}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink2
execute as @s[scores={move=863}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default


execute as @s[scores={move=919..920}] at @s run effect @e[type=ds:takada_chan,c=1] clear invisibility
execute as @s[scores={move=918..923}] at @s run tp @e[type=ds:takada_background,r=15,c=1] ^^^ facing ^^^1
execute as @s[scores={move=918..920}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_5

execute as @s[scores={move=919..920}] at @s run playanimation @s animation.delusional.ab4b_barrage2
execute as @s[scores={move=916..920}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab4b_barrage3
execute as @s[scores={move=919..920}] at @s run playanimation @e[tag=climax_jumping,r=15,c=1] animation.delusional.ab4b_barraged2
execute as @s[scores={move=791..920}] at @s run tp @e[tag=climax_jumping,r=15,c=1] ^^^2.25 facing @s
execute as @s[scores={move=860..920}] at @s run camerashake add @a[r=10] 0.15 0.15

execute as @s[scores={move=862}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run playsound mob.shock1 @a ~~~ 0.5 3.25
execute as @s[scores={move=862}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.2~
execute as @s[scores={move=862}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.2~


execute as @s[scores={move=859}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 99999 1.25 99999

execute as @s[scores={move=829}] at @s run playsound music.sparkle @s ~~~ 999999 2 999999
execute as @s[scores={move=829}] at @s run scriptevent ds:delusional_hearts2 -0.5,2,-3.5
execute as @s[scores={move=825},type=player] at @s run camera @s fade time 0.25 0 0.15 color 255 255 255
execute as @s[scores={move=820}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_1

execute as @s[scores={move=800..810}] at @s run scriptevent ds:delusional_hearts -0.35,0.6,0.5

execute as @s[scores={move=810},type=player] at @s run camera @s fade time 0.4 1.5 0.15 color 255 255 255

execute as @s[scores={move=825..829}] at @s run scriptevent ds:delusional_small -1,0.25,-3.5
execute as @s[scores={move=829}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_wink
execute as @s[scores={move=810}] at @s run event entity @e[type=ds:takada_chan,c=1] takada_face_default
execute as @s[scores={move=865},type=player] at @s run camera @s fade time 0.1 0 0.15 color 255 255 255
execute as @s[scores={move=863}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_6
execute as @s[scores={move=859..860}] at @s run playanimation @s animation.delusional.ab4b_final1
execute as @s[scores={move=859..860}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab4b_final2
execute as @s[scores={move=825..860}] at @s run tp @e[type=ds:takada_chan,c=1] ^-1^^ facing ^^^10
execute as @s[scores={move=825..860},type=player] at @s run camera @s set minecraft:free pos ^-0.35^0.6^1 facing ^-0.5^1.5^-3

execute as @s[scores={move=791}] at @s run tp @e[tag=climax_jumping,r=15,c=1] ^^1^4
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run playsound mob.shock1 @a ~~~ 0.5 1.25
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run playsound mob.wither.shoot @a ~~~ 0.5 0.3
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact1 ~~1.2~
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:large_impact2 ~~1.2~
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:pushed_up1
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:pushed_up2
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run particle ds:dirt02
execute as @s[scores={move=790}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run camerashake add @a[tag=!delusional4,r=100] 4 0.25
execute as @s[scores={move=790}] at @s run tag @e[tag=climax_jumping,r=15,c=1] remove Frames
execute as @s[scores={move=790}] at @s run effect @e[tag=climax_jumping,r=15,c=1] clear resistance 
execute as @s[scores={move=789}] at @s run effect @e[tag=climax_jumping,r=15,c=1] levitation 1 30 true
execute as @s[scores={move=789}] at @s run scoreboard players set @e[tag=climax_jumping,r=15,c=1] knockdown 110
execute as @s[scores={move=789}] at @s run execute as @e[tag=climax_jumping,r=15,c=1] at @s run scriptevent ds:knockback -15
execute as @s[scores={move=789}] at @s run scoreboard players add @e[tag=climax_jumping,r=15,c=1] Evade 20
execute as @s[scores={move=789}] at @s run scoreboard players add @e[tag=climax_jumping,r=15,c=1] Hit 10
execute as @s[scores={move=789}] at @s run damage @e[tag=climax_jumping,r=15,c=1] 50 override entity @s
execute as @s[scores={move=789}] at @s run scoreboard players operation @e[tag=climax_jumping,r=15,c=1] damage += @s damageadd



execute as @s[scores={move=778..780}] at @s run tp @s ~~~~ 0

execute as @s[scores={move=778..790}] at @s run tp @e[type=ds:takada_background,r=15,c=1] ~~~ facing ^^^10
execute as @s[scores={move=778..780}] at @s run event entity @e[type=ds:takada_background,r=15,c=1] colour_6
execute as @s[scores={move=778..780}] at @s run playanimation @s animation.delusional.ab4b_end1
execute as @s[scores={move=778..780}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab4b_end1
execute as @s[scores={move=700..805}] at @s run tp @e[type=ds:takada_chan,c=1] ^-1^^ facing ^-1^^-5

execute as @s[scores={move=775},type=player] at @s run playsound music.takada_bell @s
execute as @s[scores={move=775..780},type=player] at @s run camera @s set minecraft:free pos ^-0.5^0.4^1.25 facing ^-0.5^0.4^
execute as @s[scores={move=773..774},type=player] at @s run camera @s set minecraft:free ease 2.5 in_out_circ pos ^-0.5^1.45^1.25 facing ^-0.5^1.45^
execute as @s[scores={move=700..774}] at @s run scriptevent ds:delusional_end -0.5,0,0.6

camera @s[scores={move=715},type=player] fade time 0.4 1 0.25 color 0 0 0

execute as @s[scores={move=700..710}] at @s run tag @e[tag=climax_jumping,c=1] remove climax_jumping
execute as @s[scores={move=700..710}] at @s run function cancel_attack
tag @s[scores={move=0..3},tag=self_blind] remove self_blind
tag @s[scores={move=0..3},tag=delusional4] remove delusional4
