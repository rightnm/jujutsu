scoreboard players set @s[scores={move=11..}] Frames 14
scoreboard players set @s[scores={move=11..}] Move 14
scoreboard players set @s[scores={move=200..9978}] Camera 14
scoreboard players set @e[tag=mahito_ultTRG] Camera 14
scoreboard players set @e[tag=mahito_ultTRG] Move 14
scoreboard players set @e[tag=mahito_ultTRG] Stun 15
scoreboard players set @e[tag=mahito_ultTRG] stunned 15
tag @s[tag=!Frames] add Frames


execute as @s[scores={move=9423..}] at @s run effect @e[tag=!mahito_ultTRG,r=15,tag=!wep6m,type=!Player] slowness 2 20 true
execute as @s[scores={move=9423..}] at @s run scoreboard players set @e[tag=!mahito_ultTRG,r=15,tag=!wep6m,type=!player] Stun 30
execute as @s[scores={move=9423..}] at @s run scoreboard players set @e[tag=!mahito_ultTRG,r=7,tag=!wep6m] Stun 40

execute as @s[scores={move=9393..}] at @s run kill @e[type=ds:red_reverse,r=25]
execute as @s[scores={move=9393..}] at @s run kill @e[type=ds:knockback,r=12]
execute as @s[scores={move=9393..}] at @s run kill @e[type=ds:mahoraga_knockback1,r=25]
execute as @s[scores={move=9393..}] at @s run kill @e[type=ds:mahoraga_knockback2,r=25]

execute as @s[type=!player,scores={move=300..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9393..}] at @s run execute as @e[tag=mahito_ultTRG,type=!player,c=1,family=!dummy] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9393..}] at @s if entity @e[tag=mahito_ultTRG,type=!player,c=1,family=!dummy] at @s run tp @s ~~~~ 0

execute as @s[scores={move=160..176}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=160..176}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=160..176}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=160..176}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=160..176}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=160..176}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~


event entity @s[scores={move=1..4}] ds:release_seat

tag @s[scores={move=1..2}] remove wep6m

# START
playanimation @s[scores={move=175..176}] animation.instant_body.ab6

execute as @s[scores={move=175}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 9999 0.5 9999

#speed increase
execute as @s[scores={move=130..173}] at @s run scriptevent ds:knockback 0.33
execute as @s[scores={move=115..129}] at @s run scriptevent ds:knockback 0.85
execute as @s[scores={move=95..114}] at @s run scriptevent ds:knockback 1.25
execute as @s[scores={move=70..94}] at @s run scriptevent ds:knockback 2.5
execute as @s[scores={move=15..69}] at @s unless block ~~-1~ air run scriptevent ds:autoJump2


execute as @s[scores={move=15..69}] at @s if block ~~-1~ air run scriptevent ds:downfall


effect @s[scores={move=129}] speed 4 1 true
effect @s[scores={move=94}] speed 2 3 true
effect @s[scores={move=69}] speed 3 8 true

execute as @s[scores={move=68..69}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"
execute as @s[scores={move=69}] at @s run function supersonic

execute as @s[scores={move=16..69}] at @s run particle ds:dust
execute as @s[scores={move=16..94}] at @s run particle ds:sprint
execute as @s[scores={move=16..50}] at @s run particle ds:turbo_intensity3 ~~-0.85~
execute as @s[scores={move=16..50}] at @s run particle ds:turbo_intensity2 ~~-0.85~

execute as @s[scores={move=15}] at @s run particle ds:swift_dash_large


execute as @s[scores={move=16..69}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10] run tag @e[tag=!Frames,r=3,c=1,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,family=!small] add mahito_ultTRG

execute as @s[scores={move=16..69}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10] run particle ds:burst_impact ~~1~
execute as @s[scores={move=16..69}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10] run playsound mob.shock1 @a[r=100] ~~1~ 9999 1.75 9999
execute as @s[scores={move=16..69}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10] run camera @a[r=10] fade time 0 0.25 0.15 color 255 255 255
execute as @s[scores={move=16..69}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10] run scoreboard players set @s move 10011


execute as @s[scores={move=10000..}] at @s run playanimation @s animation.instant_body.ab6b_mahito
execute as @s[scores={move=10000..}] at @s run playanimation @e[tag=mahito_ultTRG,c=1] animation.instant_body.ab6b_victim
execute as @s[scores={move=9970..}] at @s run ride @e[tag=mahito_ultTRG,c=1] start_riding @s teleport_rider

event entity @s[scores={move=10005..}] ds:grab_seat
execute as @s[scores={move=9970..}] at @s run scriptevent ds:knockback 3
execute as @s[scores={move=9980..}] at @s run playsound mob.wither.shoot @a[r=33] ~~-1~ 9999 0.5 9999
execute as @s[scores={move=9970..}] at @s run camerashake add @a[r=10] 0.08 0.08
execute as @s[scores={move=9970..}] at @s if entity @p[tag=griefable] run fill ~2~2~2~-2~~-2 air [] destroy
execute as @s[scores={move=9960..}] at @s run kill @e[type=item,r=12]


execute as @s[scores={move=9960..9971}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9900..9971}] at @s run tp @e[tag=mahito_ultTRG,c=1] ^^^1 facing @s
execute as @s[scores={move=9969..9971}] at @s run damage @e[tag=mahito_ultTRG,c=1] 1 entity_attack entity @s

execute as @s[scores={move=9969}] at @s run playsound mob.strike @a[r=100] ~~1~ 9999 1.5 9999
execute as @s[scores={move=9969}] at @s run particle ds:burst_impact ^^1^1
execute as @s[scores={move=9969}] at @s run camerashake add @a[r=10] 2 0.15 
execute as @s[scores={move=9969}] at @s run particle ds:slam_dust2 ^^1^1 
execute as @s[scores={move=9970..9971}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"

execute as @s[scores={move=9952}] at @s run particle ds:swift_dash
execute as @s[scores={move=9952}] at @s run playsound mob.whoosh3 @a[r=100] ~~1~ 9999 2 9999

# cut to looking at victim knocked away
execute as @s[scores={move=9965}] at @s run camera @s set minecraft:free pos ^1.5^0.33^-1 facing ^^^20
execute as @s[scores={move=9965}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^1.5^0.33^-1 facing ^^^20

execute as @s[scores={move=9964}] at @s run camera @s set minecraft:free ease 0.75 in_sine pos ^-12.5^1^6 facing ^^^7
execute as @s[scores={move=9964}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 0.75 in_sine pos ^-12.5^1^6 facing ^^^7

# cut back to mahito walking
execute as @s[scores={move=9930}] at @s run camera @s set minecraft:free pos ^^1.4^1 facing ^^1.4^-5
execute as @s[scores={move=9930}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^^1.4^1 facing ^^1.4^-5

execute as @s[scores={move=9923}] at @s run camera @s set minecraft:free ease 11 out_back pos ^^1.4^1 facing ^0.25^1.4^-5
execute as @s[scores={move=9923}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 0.5 out_back  pos ^^1.4^1 facing ^0.25^1.4^-5

execute as @s[scores={move=9917}] at @s run camera @s set minecraft:free  ease 11 out_back pos ^^1.4^1 facing ^^1.2^-5
execute as @s[scores={move=9917}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 0.5 out_back  pos ^^1.4^1 facing ^^1.2^-5

execute as @s[scores={move=9912}] at @s run camera @s set minecraft:free ease 11 out_back pos ^^1.4^1 facing ^-0.3^1.42^-5
execute as @s[scores={move=9912}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free  ease 0.5 out_back pos ^^1.4^1 facing ^-0.3^1.42^-5

execute as @s[scores={move=9905}] at @s run camera @s set minecraft:free pos ^^1.4^1 facing ^^1.4^-5
execute as @s[scores={move=9905}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^^1.4^1 facing ^^1.4^-5

# cut back to looking at victim
execute as @s[scores={move=9900}] at @s run camera @s set minecraft:free pos ^3^1.4^21.5 facing ^^1^5
execute as @s[scores={move=9900}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^3^1.4^21.5 facing ^^1^5

# fight start

execute as @s[scores={move=9850}] at @s run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=9855}] at @s run playsound mob.whoosh3 @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=9850}] at @s run particle ds:swift_dash_large ~~1~



execute as @s[scores={move=9880}] at @s run camera @s set minecraft:free ease 1.25 in_sine pos ^2.5^1.5^ facing ^^1.5^
execute as @s[scores={move=9880}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 1.25 in_sine  pos ^2.5^1.5^ facing ^^1.5^

execute as @s[scores={move=9855}] at @s run camera @s set minecraft:free ease 1.5 in_sine pos ^2^1^-1 facing ^^1.75^
execute as @s[scores={move=9855}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 1.5 in_sine pos ^2^1^-1 facing ^^1.75^

execute as @s[scores={move=9825}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999
execute as @s[scores={move=9822}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 2.9 99999

execute as @s[scores={move=9820}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999

execute as @s[scores={move=9815}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999

execute as @s[scores={move=9790}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 3 99999

execute as @s[scores={move=9825}] at @s run camera @s set minecraft:free pos ^-2^2^2 facing ^^1.75^
execute as @s[scores={move=9825}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-2^2^2 facing ^^1.75^

execute as @s[scores={move=9831}] at @s run particle ds:swift_dash ~~~

execute as @s[scores={move=9824}] at @s run camera @s set minecraft:free ease 1.5 in_sine pos ^-1.8^1.5^-1 facing ^^1.5^
execute as @s[scores={move=9824}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 1.5 in_sine pos ^-1.8^1.5^-1 facing ^^1.5^

execute as @s[scores={move=9790}] at @s run camera @s set minecraft:free pos ^1.5^2^1 facing ^^1.5^-0.5
execute as @s[scores={move=9790}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^1.5^2^1 facing ^^1.5^-0.5


execute as @s[scores={move=9805}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999

execute as @s[scores={move=9766}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 2 99999
execute as @s[scores={move=9770}] at @s run particle ds:swift_dash ~~~

execute as @s[scores={move=9789}] at @s run camera @s set minecraft:free ease 1 in_sine pos ^-1.5^1.5^2 facing ^^1.5^-0.5
execute as @s[scores={move=9789}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 1 in_sine  pos ^-1.5^1.5^2 facing ^^1.5^-0.5

execute as @s[scores={move=9795}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999


execute as @s[scores={move=9666..9760}] at @s run particle ds:mahito_ult_slashing1 ~~1~ 
execute as @s[scores={move=9666..9760}] at @s run particle ds:mahito_ult_slashing2 ~~1~ 
execute as @s[scores={move=9760}] at @s run particle ds:mahito_ult_slashing3 ~~1~ 
execute as @s[scores={move=9666..9760}] at @s run playsound mob.swordslash @a[r=50] ^^1^1  99999 3 99999
execute as @s[scores={move=9755}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 2 99999
execute as @s[scores={move=9750}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 3 99999
execute as @s[scores={move=9725}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 2 99999
execute as @s[scores={move=9688}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 2 99999
execute as @s[scores={move=9670}] at @s run playsound mob.slash1 @a[r=50] ^^1^1  99999 3 99999


execute as @s[scores={move=9720}] at @s run playsound mob.slice @a[r=50] ^^1^1  99999 1.25 99999
execute as @s[scores={move=9720}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 1


execute as @s[scores={move=9700}] at @s run playsound mob.slice @a[r=50] ^^1^1  99999 1.45 99999
execute as @s[scores={move=9700}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 2

execute as @s[scores={move=9673}] at @s run playsound mob.slice @a[r=50] ^^1^1  99999 1.5 99999
execute as @s[scores={move=9673}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3

execute as @s[scores={move=9688}] at @s run playsound mob.slice @a[r=50] ^^1^1  99999 1.6 99999
execute as @s[scores={move=9686}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 2

execute as @s[scores={move=9668}] at @s run playsound mob.slice @a[r=50] ^^1^1  99999 1.25 99999
execute as @s[scores={move=9666}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 5

execute as @s[scores={move=9778}] at @s run camera @s set minecraft:free pos ^-1.5^1^-1 facing ^^1^-1
execute as @s[scores={move=9778}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-1.5^1^-1 facing ^^1^-1

execute as @s[scores={move=9777}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^-2.5^1.5^1.5 facing ^^1^0.5
execute as @s[scores={move=9777}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 2 in_sine pos ^-2.5^1.5^1.5 facing ^^1^0.5

execute as @s[scores={move=9757}] at @s run camera @s set minecraft:free pos ^-7^0.6^2 facing ^^1^
execute as @s[scores={move=9757}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-7^0.6^2 facing ^^1^



execute as @s[scores={move=9756}] at @s run camera @s set minecraft:free ease 5 in_sine pos ^-3^0.8^14 facing ^^1^
execute as @s[scores={move=9756}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 5 in_sine  pos ^-3^0.8^14 facing ^^1^

scoreboard players set @s[scores={move=9665..9680}] move 9664

playanimation @s[scores={move=9662..9665}] animation.instant_body.ab6b_mahito2
execute as @s[scores={move=9662..9665}] at @s run playanimation @e[tag=mahito_ultTRG,c=1] animation.instant_body.ab6b_victim2
execute as @s[scores={move=9662..9665}] at @s run camera @s set minecraft:free pos ^-1.5^1.25^0.25 facing ^^1.25^0.25
execute as @s[scores={move=9662..9665}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-1.5^1.25^0.25 facing ^^1.25^0.25
execute as @s[scores={move=9661}] at @s run camera @s set minecraft:free ease 3 in_sine pos ^-3.5^1.25^0.25 facing ^^1.25^0.25
execute as @s[scores={move=9661}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 3 in_sine pos ^-3.5^1.25^0.25 facing ^^1.25^0.25

execute as @s[scores={move=9670}] at @s run playsound mob.whoosh1 @a[r=100] ~~1~ 9999 1.25 9999
execute as @s[scores={move=9658}] at @s run playsound mob.strike @a[r=100] ~~1~ 9999 1.5 9999
execute as @s[scores={move=9658}] at @s run execute as @a[r=50] at @s run playsound music.bass1 @s ~~1~ 9999 1.25 9999
execute as @s[scores={move=9658}] at @s run particle ds:freeze_frame_impact1 ^^1^1 
execute as @s[scores={move=9658}] at @s run particle ds:freeze_frame_impact2 ^^1^1 


execute as @s[scores={move=9642}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"
execute as @s[scores={move=9642}] at @s run playsound mob.impact2 @a[r=100] ~~1~ 9999 1 9999
execute as @s[scores={move=9642}] at @s run particle ds:large_impact1 ^^1^1 
execute as @s[scores={move=9642}] at @s run particle ds:heavy_impact1 ^^1^1 
execute as @s[scores={move=9642}] at @s run particle ds:ground_slam2 ^^^1.5
execute as @s[scores={move=9641}] at @s run particle ds:ground_slam2 ^^^3.33
execute as @s[scores={move=9640}] at @s run particle ds:ground_slam2 ^^^7
execute as @s[scores={move=9640..9642}] at @s run tp @e[tag=mahito_ultTRG,c=1] ^^^7.15 facing @s

execute as @s[scores={move=9640}] at @s run camera @s set minecraft:free pos ^^1.33^6.25 facing ^^^6.25
execute as @s[scores={move=9640}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^^1.33^6.25 facing ^^^6.25

execute as @s[scores={move=9637}] at @s run camera @s set minecraft:free ease 0.4 out_back pos ^^1.5^6.25 facing ^^1.5^3
execute as @s[scores={move=9637}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease  0.4  out_back pos ^^1.5^6.25 facing ^^1.5^3

execute as @s[type=!player,scores={move=9390..9700}] at @s run tp @e[tag=mahito_ultTRG,c=1] ^^^1 facing @s

execute as @s[scores={move=9622}] at @s run execute as @e[tag=mahito_ultTRG,c=1] at @s run tp @e[tag=wep6m,c=1,scores={move=9622}] ^^^1 facing @s
execute as @s[scores={move=9616..9618}] at @s run camera @s set minecraft:free pos ^-5^1.25^0.5 facing ^^1.25^0.5
execute as @s[scores={move=9616..9618}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-5^1.25^0.5 facing ^^1.25^0.5
execute as @s[scores={move=9620}] at @s run playsound mob.strong_punch1 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={move=9617}] at @s run particle ds:impact_vfx1 ^^1^1 
execute as @s[scores={move=9617}] at @s run particle ds:swift_dash_large ~~~
execute as @s[scores={move=9617}] at @s run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=9615}] at @s run tp @e[tag=mahito_ultTRG,c=1] ^2^^5 facing ^2^^
execute as @s[scores={move=9621}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"

execute as @s[scores={move=9614}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"
execute as @s[scores={move=9614}] at @s run execute as @e[tag=mahito_ultTRG,c=1] at @s run tp @e[tag=wep6m,c=1,scores={move=9614}] ^^^1 facing @s
execute as @s[scores={move=9612..9614}] at @s run camera @s set minecraft:free pos ^5^1.25^0.5 facing ^^1.25^0.5
execute as @s[scores={move=9612..9614}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^5^1.25^0.5 facing ^^1.25^0.5
execute as @s[scores={move=9616}] at @s run playsound mob.strong_punch2 @a[r=100] ~~1~ 99999 1.4 99999
execute as @s[scores={move=9613}] at @s run particle ds:impact_vfx1 ^^1^1 
execute as @s[scores={move=9613}] at @s run particle ds:swift_dash_large ~~~
execute as @s[scores={move=9613}] at @s run camerashake add @a[r=20] 2 0.25
execute as @s[scores={move=9613}] at @s run tp @e[tag=mahito_ultTRG,c=1] ^^^5 facing ^^^

execute as @s[scores={move=9610}] at @s run execute as @e[tag=mahito_ultTRG,c=1] at @s run tp @e[tag=wep6m,c=1,scores={move=9610}] ^^^1 facing @s
execute as @s[scores={move=9609..9610}] at @s run camera @s set minecraft:free pos ^-5^1.5^0.5 facing ^^1^-6
execute as @s[scores={move=9609..9610}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^-5^1.5^0.5 facing ^^1^-6
execute as @s[scores={move=9612}] at @s run playsound mob.strong_punch3 @a[r=100] ~~1~ 99999 1 99999
execute as @s[scores={move=9609}] at @s run particle ds:impact_vfx1 ^^1^1 
execute as @s[scores={move=9609}] at @s run particle ds:swift_dash_large ~~~
execute as @s[scores={move=9609}] at @s run particle ds:dirt2
execute as @s[scores={move=9609}] at @s run particle ds:dirt0
execute as @s[scores={move=9609}] at @s run particle ds:ground_pound1 ^^^0.25
execute as @s[scores={move=9609}] at @s run particle ds:ground_pound2 ^^^0.25
execute as @s[scores={move=9609}] at @s run particle ds:ground_pound3 ^^^0.25
execute as @s[scores={move=9608}] at @s run playsound mob.wither.break_block @a[r=100] ~~1~ 99999 0.5 99999
execute as @s[scores={move=9608}] at @s run playsound random.explode @a[r=100] ~~1~ 99999 0.5 99999
execute as @s[scores={move=9609}] at @s run camerashake add @a[r=20] 2 0.25

execute as @s[scores={move=9602}] at @s run playsound mob.whoosh3 @a[r=100] ^^^-6 99999 2 99999
execute as @s[scores={move=9602}] at @s run particle ds:swift_dash ^^^-6
execute as @s[scores={move=9602}] at @s run particle ds:ground_slam1 ^^^-6
execute as @s[scores={move=9602}] at @s run particle ds:ground_slam2 ^^^-6

execute as @s[scores={move=9597}] at @s run playsound mob.mahito_trulycurse1 @a[r=100] ^^^-6 99999 1 99999

execute as @s[scores={move=9562}] at @s run playsound mob.whoosh3 @a[r=100] ^^^-6 99999 2 99999
execute as @s[scores={move=9555..9560}] at @s run particle ds:turbo_intensity2 ^^-1^-6
execute as @s[scores={move=9555..9560}] at @s run particle ds:turbo_intensity3 ^^-1^-6

execute as @s[scores={move=9605}] at @s run camera @s set minecraft:free pos ^4^0.5^ facing ^^0.33^-3
execute as @s[scores={move=9605}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^4^0.5^ facing ^^0.33^-3

execute as @s[scores={move=9605}] at @s run camera @s set minecraft:free ease 3 in_sine pos ^^1.5^0.1 facing ^^1.5^-6
execute as @s[scores={move=9605}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 3 in_sine  pos ^^1.5^0.1 facing ^^1.5^-6


execute as @s[scores={move=9527}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^3^3^-1 facing ^^1.5^1
execute as @s[scores={move=9527}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 0.25 in_sine  pos ^3^3^-1 facing ^^1.5^1



execute as @s[scores={move=9530}] at @s run playsound mob.whoosh3 @a[r=100] ^^^-1 99999 0.8 99999

execute as @s[scores={move=9520}] at @s run playsound mob.whoosh1 @a[r=100] ^^^-1 99999 1.25 99999

execute as @s[scores={move=9515}] at @s run playsound mob.slice4 @a[r=50] ~~1~ 9999 1.5 9999
execute as @s[scores={move=9515}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9515}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=9515}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9515}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9515}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3





execute as @s[scores={move=9510}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^2.5^2.5^6 facing ^^1.25^1
execute as @s[scores={move=9510}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 2 in_sine  pos ^2.5^2.5^6 facing ^^1.25^1

execute as @s[scores={move=9474}] at @s run camera @s set minecraft:free ease 2 in_sine pos ^-4.5^4^3 facing ^^^0.35
execute as @s[scores={move=9474}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 2 in_sine  pos ^-4.5^4^3 facing ^^^0.35

execute as @s[scores={move=9445}] at @s run camera @s set minecraft:free ease 3 in_sine pos ^-4^2.5^-6 facing ^^^0.35
execute as @s[scores={move=9445}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free ease 3 in_sine pos ^-4^2.5^-6 facing ^^^0.35


execute as @s[scores={move=9520..9521}] at @s run playanimation @s animation.instant_body.ab6b_mahito3
execute as @s[scores={move=9520..9521}] at @s run playanimation @e[tag=mahito_ultTRG,c=1] animation.instant_body.ab6b_victim3
execute as @s[scores={move=9520}] at @s run playsound mob.mahito_trulycurse2 @a[r=100] ~~1~ 99999 1 99999


execute as @s[scores={move=9502}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 9999 2.25 9999
execute as @s[scores={move=9502}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9502}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=9502}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9502}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9502}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3


execute as @s[scores={move=9494}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 9999 2.25 9999
execute as @s[scores={move=9494}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9494}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=9494}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9494}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9494}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3


execute as @s[scores={move=9487}] at @s run playsound mob.slice4 @a[r=50] ~~1~ 9999 2.33 9999
execute as @s[scores={move=9487}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9487}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=9487}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9487}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9487}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3


execute as @s[scores={move=9482}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 9999 3 9999
execute as @s[scores={move=9482}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9482}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9482}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9482}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3


execute as @s[scores={move=9478}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 9999 2.25 9999
execute as @s[scores={move=9478}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9478}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9478}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9478}] at @s run particle ds:mahito_ult_slashing1 ~~1~
execute as @s[scores={move=9478}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3

execute as @s[scores={move=9476}] at @s run playsound mob.slice4 @a[r=50] ~~1~ 9999 2.5 9999
execute as @s[scores={move=9476}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9476}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9476}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9476}] at @s run particle ds:mahito_ult_slashing1 ~~1~
execute as @s[scores={move=9476}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3

execute as @s[scores={move=9474}] at @s run playsound mob.slice2 @a[r=50] ~~1~ 9999 2.75 9999
execute as @s[scores={move=9474}] at @s run camerashake add @a[r=50] 0.25 0.15 
execute as @s[scores={move=9474}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9474}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9474}] at @s run particle ds:mahito_ult_slashing1 ~~1~
execute as @s[scores={move=9474}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 3

execute as @s[scores={move=9472}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9468}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9462}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9460}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9455}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9452}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9445}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9435}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9433}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9423}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9419}] at @s run particle ds:mahito_ult_barrage_streak ~~1~
execute as @s[scores={move=9412}] at @s run particle ds:mahito_ult_barrage_streak ~~1~

execute as @s[scores={move=9490}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9480}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9470}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9460}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9450}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9440}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9430}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9420}] at @s run particle ds:mahito_ult_barrage_wind ~~1~
execute as @s[scores={move=9410}] at @s run particle ds:mahito_ult_barrage_wind ~~1~


execute as @s[scores={move=9411..9472}] at @s run playsound mob.swordslash @a[r=50] ~~1~ 9999 2.75 9999
execute as @s[scores={move=9411..9472}] at @s run playsound random.slice @a[r=50] ~~1~ 9999 2.33 9999

execute as @s[scores={move=9411..9472}] at @s run camerashake add @a[r=50] 0.08 0.08 rotational
execute as @s[scores={move=9411..9472}] at @s run particle ds:mahito_ult_barrage ~~1~
execute as @s[scores={move=9411..9472}] at @s run particle ds:mahito_ult_slashing1 ~~1~
execute as @s[scores={move=9411..9472}] at @s run particle ds:mahito_ult_slashing2 ~~1~
execute as @s[scores={move=9411..9472}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 2

execute as @s[scores={move=9405}] at @s run playsound mob.cursed_energy @a[r=50] ^^1^-3 9999 2 9999 


execute as @s[scores={move=9400}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run playsound mob.mahito_blackflash1 @a[r=100] ^^1^-2 9999 1 9999

execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash1 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash2 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash3 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash4 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash5 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash6 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash7 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash8 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash9 ^^1^0.5
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:black_flash10 ^^1^0.5
execute as @s[scores={move=9391..9393}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run scriptevent ds:lightning 3,1,1.5, 0.8,0.1,0.1, 0.8,0.1,0.1, 4,4,4, 4,4,4
execute as @s[scores={move=9390..9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run scriptevent ds:lightning 2,0.85,2.5, 0.8,0.1,0.1, 0.8,0.1,0.1, 4,4,4, 4,4,4
execute as @s[scores={move=9392}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run playsound mob.blackflash @a[r=100] ^^1^1 9999 2 9999
execute as @s[scores={move=9390..9391}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run playsound mob.blackflash2 @a[r=100] ^^1^1 9999 0.75 9999
execute as @s[scores={move=9390..9391}] at @s if entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run scoreboard players set @s thezone 300

execute as @s[scores={move=9393..9420}] at @s run camera @s set minecraft:free pos ^3.5^1.5^-1.5 facing ^^1^1
execute as @s[scores={move=9393..9420}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^3.5^1.5^-1.5 facing ^^1^1
execute as @s[scores={move=9393}] at @s run camerashake add @a[r=50] 2 0.33
execute as @s[scores={move=9394}] at @s run summon gg:impact_frame
execute as @s[scores={move=9391}] at @s run summon gg:impact_frame_black
execute as @s[scores={move=9392}] at @s run particle ds:burst_impact ^^1^1
execute as @s[scores={move=9392}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run playsound mob.shock1 @a[r=100] ^^1^1 9999 0.75 9999
execute as @s[scores={move=9392}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run playsound mob.strike @a[r=100] ^^1^1 9999 0.85 9999

execute as @s[scores={move=9392}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:curses_energy_hit1_big ^^1^1 
execute as @s[scores={move=9392}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:curses_energy_hit2_big ^^1^1 
execute as @s[scores={move=9392}] at @s unless entity @e[tag=mahito_ultTRG,c=1,r=10,scores={detect_health=0..100}] run particle ds:curses_energy_hit3_big ^^1^1 


execute as @s[scores={move=9302..9303}] at @s run summon ds:front_vfx ~~1~ facing ^^^10 ds:main "rapid_assault_dash1"

execute as @s[scores={move=9391..9393}] at @s run camera @s set minecraft:free pos ^5^3.5^-5 facing ^^1^1
execute as @s[scores={move=9391..9393}] at @s run camera @p[tag=mahito_ultTRG,c=1] set minecraft:free pos ^5^3.5^-5 facing ^^1^1

execute as @s[scores={move=9300..9393}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=9391..9392}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Frames 0
execute as @s[scores={move=9391..9392}] at @s run tag @e[tag=mahito_ultTRG,c=1] remove Frames
execute as @s[scores={move=9391..9392}] at @s run scoreboard players operation @e[tag=mahito_ultTRG,c=1] damage += @s damageadd
execute as @s[scores={move=9391}] at @s run damage @e[tag=mahito_ultTRG,c=1] 100 override
execute as @s[scores={move=9391}] at @s run scoreboard players add @e[tag=mahito_ultTRG,c=1] Evade 25
execute as @s[scores={move=9300..9391}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Stun 33
execute as @s[scores={move=9388..9391}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=9388..9391}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=9390..9391}] at @s run tp @e[tag=mahito_ultTRG,c=1,family=!dummy,type=!player] ^^3^20
execute as @s[scores={move=9388}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] knockdown 96
execute as @s[scores={move=9388}] at @s run scoreboard players set @e[tag=mahito_ultTRG,c=1] Hit 2
execute as @s[scores={move=9385..9388}] at @s run camera @a[tag=mahito_ultTRG,c=1,r=50] clear

execute as @s[scores={move=9387}] at @s if entity @p[tag=griefable] run execute as @e[tag=mahito_ultTRG,scores={knockdown=1..}] at @s run effect @e[r=20] resistance 1 10 true
execute as @s[scores={move=9387}] at @s if entity @p[tag=griefable] run execute as @e[tag=mahito_ultTRG,scores={knockdown=1..}] at @s run summon ds:red_reversal

execute as @s[scores={move=9380..9382}] at @s run tag @e[r=70,tag=mahito_ultTRG,c=1] remove mahito_ultTRG
execute as @s[scores={move=9380..9382}] at @s run scoreboard players set @s move 3


