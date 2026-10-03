playanimation @s[scores={move=140}] animation.stoic_bomb
tag @s[scores={move=1..2},tag=form4d] remove form4d

scoreboard players set @s[scores={move=1..}] Move 5
scoreboard players set @s[scores={move=1..}] Camera 5
scoreboard players set @s[scores={move=1..}] Frames 5

tag @s[scores={move=3..},tag=!allowedhighup] add allowedhighup
tag @s[scores={move=1..2},tag=allowedhighup] remove allowedhighup

execute as @s[scores={move=135}] at @s run particle ds:dodgethis ^1^2^0.5

execute as @s[y=300,dy=400,scores={move=1..}] at @s run tp @s ~ 300 ~

execute as @s[scores={move=135..}] at @s if block ~~-1~ air if block ~~-2~ air if block ~~-3~ air run tp @s ~~-3~
execute as @s[scores={move=135..}] at @s if block ~~-1~ air if block ~~-2~ air run tp @s ~~-2~
execute as @s[scores={move=135..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=135..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=135..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=135..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=139..}] at @s run tp @s @s
execute as @s[scores={move=138},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^^3.5 facing ~~~
execute as @s[scores={move=137},type=player] at @s anchored eyes run camera @s set minecraft:free ease 1 in_out_circ pos ^^-0.5^2 facing ~~0.2~

execute as @s[scores={move=90}] at @s run damage @e[tag=!Frames,r=35,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 10
execute as @s[scores={move=90}] at @s run scoreboard players set @e[tag=!Frames,r=35,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knock 90
execute as @s[scores={move=90}] at @s run scoreboard players set @e[tag=!Frames,r=35,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 90
execute as @s[scores={move=90}] at @s run scoreboard players set @e[tag=!Frames,r=35,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 5
execute as @s[scores={move=90}] at @s run scoreboard players add @e[tag=!Frames,r=35,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 5
title @s[scores={move=90},tag=!impactframesoff,type=player] title 
title @s[scores={move=89},tag=!impactframesoff,type=player] title 
title @s[scores={move=88},tag=!impactframesoff,type=player] title §l
execute as @s[scores={move=90}] at @s run particle ds:fire_crater_large2b
execute as @s[scores={move=90}] at @s run particle ds:fire_crater_large1b
execute as @s[scores={move=90}] at @s run particle ds:fireball_l_ex1
execute as @s[scores={move=90}] at @s run particle ds:fireball_l_ex2
execute as @s[scores={move=90}] at @s run particle ds:fireball_l_ex3
execute as @s[scores={move=90}] at @s run particle ds:fireball_l_ex4
execute as @s[scores={move=90}] at @s run particle ds:fireball_l_ex5
execute as @s[scores={move=90}] at @s run particle ds:rubble3
execute as @s[scores={move=90}] at @s run particle ds:dirt0
execute as @s[scores={move=90}] at @s run particle ds:dirt2
execute as @s[scores={move=90}] at @s run particle ds:stoic_leap1
execute as @s[scores={move=90}] at @s run particle ds:stoic_leap2
execute as @s[scores={move=80}] at @s run particle ds:stoic_leap1 ~~-200~
execute as @s[scores={move=80}] at @s run particle ds:stoic_leap2 ~~-200~
execute as @s[scores={move=90}] at @s run particle ds:large_impact1
execute as @s[scores={move=90}] at @s run particle ds:large_impact2
execute as @s[scores={move=90}] at @s run camerashake add @a[r=40,rm=0.5] 2 0.2 rotational
execute as @s[scores={move=93}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 1.3 9999
execute as @s[scores={move=91}] at @s run effect @s slow_falling 5 1 true
execute as @s[scores={move=90}] at @s run tp @s ~ ~200~
camera @s[scores={move=89},type=player] set minecraft:free pos ^^-199^7 facing ~~-200~
camera @s[scores={move=88},type=player] set minecraft:free ease 0.35 in_sine pos ^^-199^7 facing ~~~
camera @s[scores={move=88},type=player] fade time 0.4 0.25 0.25 color 0 0 0 
camera @s[scores={move=78},type=player] set minecraft:free pos ^5^-24^55 facing ~~~
camera @s[scores={move=60},type=player] set minecraft:free pos ^5^-14^35 facing ~~~
camera @s[scores={move=45},type=player] set minecraft:free pos ^5^-10^15 facing ~~~
execute as @s[scores={move=55..78}] at @s run tp @s ~~0.077~
execute as @s[scores={move=55..78}] at @s run tp @s ~~0.077~
execute as @s[scores={move=55..78}] at @s run tp @s ~~0.077~
execute as @s[scores={move=43..54}] at @s run tp @s ~~-0.11~
execute as @s[scores={move=43..54}] at @s run tp @s ~~-0.11~
execute as @s[scores={move=43..54}] at @s run tp @s ~~-0.11~
execute as @s[scores={move=77}] at @s run particle ds:dirt0
execute as @s[scores={move=1..77}] at @s run tp @s ~~~

execute as @s[scores={move=31..32}] at @s unless entity @e[scores={countdown3=0..},c=1] run scoreboard objectives add countdown3 dummy
scoreboard players set @s[scores={move=31..32}] countdown3 200

execute as @s[scores={move=28..30,countdown3=180..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=28..30,countdown3=118..179}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=28..30,countdown3=118..179}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=28..30,countdown3=118..179}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall1
execute as @s[scores={move=28..30,countdown3=118..179}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall2
execute as @s[scores={move=28..30,countdown3=118..179}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall3
execute as @s[scores={move=28..30,countdown3=118..159}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall4

execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run tp @s ~~-1.5~
execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run tp @s ~~-1.5~
execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall1
execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall2
execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall3
execute as @s[scores={move=28..30,countdown3=1..115}] at @s if block ~~-1~ air run particle ds:stoic_bomb_fall4

title @s[scores={move=28..30,countdown3=181},tag=!impactframesoff,type=player] title 
title @s[scores={move=28..30,countdown3=180},tag=!impactframesoff,type=player] title 
title @s[scores={move=28..30,countdown3=179},tag=!impactframesoff,type=player] title §l


execute as @s[scores={move=28..30,countdown3=178..180}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=28..30,countdown3=178..180}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 1.45 9999
execute as @s[scores={move=28..30,countdown3=115..180}] at @s run playsound mob.burn @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=28..30,countdown3=115..180}] at @s run camerashake add @a[r=40] 0.1 0.08 rotational
execute as @s[scores={move=28..30,countdown3=180}] at @s run particle ds:flame_stars
execute as @s[scores={move=28..30,countdown3=180}] at @s run particle ds:fire_downslam6
execute as @s[scores={move=28..30,countdown3=180}] at @s run particle ds:fire_downslam4
execute as @s[scores={move=28..30,countdown3=180}] at @s run particle ds:fire_downslam3
execute as @s[scores={move=28..30,countdown3=180}] at @s run particle ds:dirt0
execute as @s[scores={move=28..30,countdown3=180}] at @s run effect @a[r=200] night_vision 1 1 true
execute as @s[scores={move=28..30,countdown3=170}] at @s run effect @a[r=200] night_vision 0 50 true

execute as @s[scores={move=28..30,countdown3=114..115}] at @s run playsound mob.shock1 @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=28..30,countdown3=114..115}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=28..30,countdown3=1..116}] at @s run playsound mob.burn @a[r=200] ~~~ 9999 1.5 9999
execute as @s[scores={move=28..30,countdown3=1..116}] at @s run camerashake add @a[r=40] 0.1 0.08 rotational
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:flame_stars
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:flame_stars
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:fire_downslam2
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:fire_downslam6
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:fire_downslam4
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:fire_downslam3
execute as @s[scores={move=28..30,countdown3=115}] at @s run particle ds:dirt0
execute as @s[scores={move=28..30,countdown3=115}] at @s run effect @a[r=200] night_vision 1 1 true

execute as @s[scores={move=28..30,countdown3=110..},type=player] at @s run camera @s clear


scoreboard players set @s[scores={move=28..31}] move 30
playanimation @s[scores={move=28..31,countdown3=180..}] animation.stoic_bomb2
playanimation @s[scores={move=28..31,countdown3=115..180}] animation.stoic_bomb3
playanimation @s[scores={move=28..31,countdown3=0..115}] animation.stoic_bomb4

camera @s[scores={move=28..31,countdown3=0..},type=player] set minecraft:third_person_front

execute as @s[scores={move=28..31,countdown3=!0}] at @s unless block ~~-1~ air run scoreboard players set @s countdown3 0
execute as @s[scores={move=28..31}] at @s unless block ~~-1~ air run camera @a[r=20] fade time 0 0.15 0.25 color 255 255 255
execute as @s[scores={move=28..31}] at @s unless block ~~-1~ air run scoreboard players set @s move 1001
playanimation @s[scores={move=999}] animation.stoic_bomb_explode

execute as @s[scores={move=999..}] at @s unless block ~~-0.1~ air run tp @s ~~0.5~

execute as @s[scores={move=999}] at @s run playsound mob.blaze.shoot @a[r=200] ~~~ 9999 0.5 9999
execute as @s[scores={move=999}] at @s run execute as @a[r=40] at @s run stopsound @s mob.burn
execute as @s[scores={move=999}] at @s run execute as @a[r=40] at @s run stopsound @s mob.blaze.shoot
execute as @s[scores={move=999}] at @s run execute as @a[r=40] at @s run playsound music.bass3 @s ~~~ 99999 0.85 99999

execute as @s[scores={move=990}] at @s run particle ds:stoic_bomb_land1


execute as @s[scores={move=990}] at @s run particle ds:stoic_bomb_land2
execute as @s[scores={move=900..970}] at @s run particle ds:stoic_bomb_land3
execute as @s[scores={move=900..970}] at @s run particle ds:stoic_bomb_land4

execute as @s[scores={move=960}] at @s run camera @a[r=40] fade time 0.2 0 0.15 color 255 255 255
execute as @s[scores={move=964}] at @s run playsound mob.blitz1 @a[r=200] ~~~ 9999 0.8 9999

execute as @s[scores={move=950..964}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={move=960..970}] at @s run particle ds:flame_stars

execute as @s[scores={move=955}] at @s run particle ds:stoic_explode0
execute as @s[scores={move=952}] at @s run particle ds:stoic_explode
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode1
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode2
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode3
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode4
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode5
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode6
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode7
execute as @s[scores={move=955}] at @s run particle ds:stoic_explode8
execute as @s[scores={move=955}] at @s run particle ds:stoic_crater1
execute as @s[scores={move=955}] at @s run particle ds:stoic_crater2
execute as @s[scores={move=956}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=955}] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=952}] at @s run camerashake add @a[r=100] 0.25 1.5
execute as @s[scores={move=955}] at @s run playsound mob.shock1 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=955}] at @s run playsound mob.shock2 @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=960}] at @s run execute as @a[r=480] at @s run playsound music.bassboost @s  ~~~ 99999 0.5 99999
execute as @s[scores={move=900..957}] at @s run effect @a[r=100] night_vision 3 1 true
execute as @s[scores={move=900..957}] at @s run effect @a[r=100] darkness 0 20 true

execute as @s[scores={move=954..957}] at @s run execute as @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run tp @s ~~~ facing @e[scores={move=954..957},c=1]
execute as @s[scores={move=952..957}] at @s run execute as @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] at @s run summon ds:red_reverse ^^^1 
execute as @s[scores={move=954}] at @s run effect @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] levitation 1 22 true
execute as @s[scores={move=954}] at @s run damage @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] 100 override
execute as @s[scores={move=954}] at @s run scoreboard players set @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] knockdown 110
execute as @s[scores={move=954}] at @s run scoreboard players set @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Hit 15
execute as @s[scores={move=954}] at @s run scoreboard players add @e[tag=!Frames,r=40,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,tag=!unselect,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Evade 20
execute as @s[scores={move=954}] at @s run function damages/explosion_damage

title @s[scores={move=958},tag=!impactframesoff,type=player] title 
title @s[scores={move=957},tag=!impactframesoff,type=player] title 
title @s[scores={move=956},tag=!impactframesoff,type=player] title 
title @s[scores={move=955},tag=!impactframesoff,type=player] title 
title @s[scores={move=954},tag=!impactframesoff,type=player] title 
title @s[scores={move=953},tag=!impactframesoff,type=player] title 
title @s[scores={move=952},tag=!impactframesoff,type=player] title 
title @s[scores={move=951},tag=!impactframesoff,type=player] title 
camera @s[scores={move=955},type=player] fade time 0 0.2 0.5 color 255 255 255
title @s[scores={move=950},tag=!impactframesoff,type=player] title §l

execute as @s[scores={move=980..},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^^4 facing ~~~
execute as @s[scores={move=950..979},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^^8 facing ~~~

execute as @s[scores={move=900..}] at @s run tp @s @s
execute as @s[scores={move=955..}] at @s run effect @a[r=30] slowness 1 2 true
execute as @s[scores={move=955..}] at @s run effect @a[r=30] darkness 3 3 true

execute as @s[scores={move=950}] at @s run scoreboard players set @s move 2
