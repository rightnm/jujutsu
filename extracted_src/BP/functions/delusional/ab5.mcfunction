playanimation @s[scores={move=100..101}] animation.delusional.ab5
execute as @s[scores={move=100..101}] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.delusional.ab5_takada
execute as @s[scores={move=100..101}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=0..101}] at @s run tp @e[type=ds:takada_chan,c=1] ^^^1.25 facing ^^^

scoreboard players set @s[scores={move=1..}] Frames 10
scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..,Camera=0..8}] Camera 15

tag @s[scores={move=100..101},tag=!delusional5] add delusional5
effect @a[r=5,m=!spectator] weakness 1 10 true

execute as @e[tag=takada_clapped,r=15,c=1] run tag @s[tag=!noStunnedAnim] add noStunnedAnim
scoreboard players set @e[tag=takada_clapped,r=15,c=1] Stun 25
scoreboard players set @e[tag=takada_clapped,r=15,c=1] Camera 25
scoreboard players set @e[tag=takada_clapped,r=15,c=1] Move 25


execute as @s[type=!player] at @s run tp @s ~~~~  0
execute if entity @e[tag=takada_clapped,r=15,c=1,type=!player,family=!dummy] run tp @s ~~~~ 0

effect @e[type=!player,r=11,tag=!takada_clapped,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] slowness 1 10 true
scoreboard players set @e[type=!player,r=11,tag=!takada_clapped,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 25
scoreboard players set @e[type=!player,r=11,tag=!takada_clapped,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Disabled 25

execute as @s[scores={move=100..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=99}] at @s positioned ^^^4 run tag @e[tag=!Frames,r=3.95,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] add takada_clapped

execute as @s[scores={move=98..99}] at @s run playanimation @e[tag=takada_clapped,r=15,c=1] animation.delusional.ab5_other

execute as @s[scores={move=55..99}] at @s run tp @e[tag=takada_clapped,r=15,c=1] ^^^1.25 facing @s
execute as @s[scores={move=98..99}] at @s unless entity @e[tag=takada_clapped,r=8,c=1] run function cancel_attack

execute as @s[scores={move=99},type=player] at @s run camera @s fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={move=98}] at @s run summon ds:takada_background ~~~
execute as @s[scores={move=98}] at @s run tag @e[tag=takada_clapped,r=15,c=1] add self_blind2
execute as @s[scores={move=98}] at @s run event entity @e[type=ds:takada_background,r=5,c=1] colour_6
execute as @s[scores={move=98},type=player] at @s run camera @s set minecraft:free pos ^0.8^1.25^0.6 facing ^^1.25^0.6

execute as @s[scores={move=50..51}] at @s run playanimation @e[tag=takada_clapped,r=15,c=1] animation.delusional.ab5_other2
execute as @s[scores={move=60},type=player] at @s run camera @s fade time 0.25 0.25 0.25 color 255 255 255
execute as @s[scores={move=50}] at @s run event entity @e[type=ds:takada_background,r=5,c=1] ds:disappear
execute as @s[scores={move=50}] at @s run event entity @e[type=ds:takada_chan,c=1] ds:disappear
execute as @s[scores={move=55..60}] at @s run tag @e[tag=takada_clapped,r=15,c=1,tag=self_blind2] remove self_blind2

execute as @s[scores={move=35..54}] at @s run effect @e[type=ds:takada_chan,c=1] invisibility 3 1 true
execute as @s[scores={move=16..50},type=player] at @s run camera @s set minecraft:free pos ^5^1.25^0.75 facing ^^1.25^0.75

execute as @s[scores={move=5..15},type=player] at @s run camera @s set minecraft:free pos ^12^2^ facing ^^1.25^1

execute as @s[scores={move=40}] at @s run playsound mob.clap @a[r=100] ^^1^0.75 9999 0.9 9999
execute as @s[scores={move=40}] at @s run  camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=40}] at @s run particle ds:punch1 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:punch2 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:punch3 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:punch4 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:boogie_woogie1 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:boogie_woogie2 ^^1^0.75
execute as @s[scores={move=40}] at @s run particle ds:large_impact1 ^^1^0.75

execute as @s[scores={move=25}] at @s run summon gg:impact_frame
execute as @s[scores={move=25}] at @s run particle ds:boogie_woogie_tp
execute as @s[scores={move=24}] at @s run particle ds:boogie_woogie_tp2
execute as @s[scores={move=24}] at @s run effect @s invisibility 15 1 true

execute as @s[scores={move=16}] at @s run summon ds:itadori_noai ~~~ facing ^^^10
execute as @s[scores={move=14..16}] at @s run playanimation @e[type=ds:itadori_noai,r=100,c=1] animation.delusional.ab5_blackflash

execute as @s[scores={move=10..11}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run playsound mob.blackflash @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=6..7}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run playsound mob.blackflash2 @a[r=100] ~~~ 9999 0.85 9999

execute as @s[scores={move=10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run playsound mob.kokusen3 @a[r=100] ~~~ 99999 1 99999

execute as @s[scores={move=10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run particle ds:red_tint
execute as @s[scores={move=10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=9}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run summon gg:impact_frame
execute as @s[scores={move=9}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run particle ds:red_tint
execute as @s[scores={move=9}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run particle ds:invert
execute as @s[scores={move=9}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run camerashake add @a[r=20] 4 0.15 rotational
execute as @s[scores={move=8..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run scriptevent ds:lightning 1,0.85,0.75, 0.8,0.1,0.1, 0.8,0.1,0.1, 3,3,3, 3,3,3
execute as @s[scores={move=5..6}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run scriptevent ds:lightning 1,0.85,1, 0.8,0.1,0.1, 0.8,0.1,0.1, 2.75,2.75,2.75, 2.75,2.75,2.75
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash1
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash2
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash3
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash4
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash5
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash6
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash7
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash8
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash9
execute as @s[scores={move=9..10}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash10

execute as @s[scores={move=6}] at @s run execute as@e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run damage @e[tag=takada_clapped,r=15,c=1] 75 override entity @s
execute as @s[scores={move=6}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run scoreboard players set @e[tag=takada_clapped,r=15,c=1] Flourish 10
execute as @s[scores={move=6}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run scoreboard players add @e[tag=takada_clapped,r=15,c=1] Evade 30
execute as @s[scores={move=6}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run scoreboard players add @e[tag=takada_clapped,r=15,c=1] Hit 5
execute as @s[scores={move=6}] at @s run execute as@e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run scoreboard players operation @e[tag=takada_clapped,r=15,c=1] damage += @s damageadd
execute as @s[scores={move=6}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s positioned ^^1^2 run scoreboard players operation @e[tag=takada_clapped,r=15,c=1] damage *= four endurance

execute as @s[scores={move=992..}] at @s run execute as @e[type=ds:itadori_noai,r=100,c=1] at @s run scriptevent ds:lightning 2,0.85,1.25, 0.8,0.1,0.1, 0.8,0.1,0.1, 2,2,2, 2,2,2


execute as @s[scores={move=4..5}] at @s run tag @e[tag=takada_clapped,c=1] remove takada_clapped
scoreboard players set @s[scores={move=4..5}] move 1001

execute as @s[scores={move=984}] at @s run playsound mob.clap @a[r=100] ^^1^-10 9999 1 9999
execute as @s[scores={move=981}] at @s run particle ds:boogie_woogie_tp
execute as @s[scores={move=970..980}] at @s run particle ds:boogie_woogie_tp2
execute as @s[scores={move=970..980}] at @s run effect @s clear invisibility
execute as @s[scores={move=970..980}] at @s run tp @s @e[type=ds:itadori_noai,r=100,c=1]
execute as @s[scores={move=970..980}] at @s run event entity @e[type=ds:itadori_noai,r=100,c=1] ds:disappear
execute as @s[scores={move=970..980}] at @s run function cancel_attack
tag @s[scores={move=0..3},tag=self_blind] remove self_blind
tag @s[scores={move=0..3},tag=delusional5] remove delusional5




