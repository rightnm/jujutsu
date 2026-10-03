playanimation @s[scores={move=200}] animation.electro_cannon


tag @s[scores={move=1..3},tag=form5c] remove form5c
tag @s[scores={move=1..3},tag=electrocannon] remove electrocannon

tag @s[scores={move=4..},tag=!electrocannon] add electrocannon

tag @s[scores={move=197..,Stun=1..},tag=form5c] remove form5c
tag @s[scores={move=197..,Stun=1..},tag=electrocannon] remove electrocannon
scoreboard players set @s[scores={move=117..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..195}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 4

effect @s[type=ds:kashimo,scores={move=1..}] slow_falling 4 1 true
execute as @s[type=ds:kashimo,scores={move=101..190}] at @s unless entity @e[tag=heian_era,r=200,tag=!spectator] run tp @s ~~~ facing @e[tag=!Frames,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,r=120,c=1]
execute as @s[type=ds:kashimo,scores={move=101..190}] at @s run tp @s ~~~ facing @e[tag=heian_era,r=200,c=1,tag=!spectator]

execute as @s[type=ds:kashimo,scores={move=101}] at @s  run summon ds:projectile electrotrg ^^-1^6
execute as @s[type=ds:kashimo,scores={move=100..101}] at @s  run scoreboard players set @e[name=electrotrg,c=1] Deleter 101
execute as @s[type=ds:kashimo,scores={move=1..100}] at @s  run tp @s ~~~ facing @e[name=electrotrg,c=1]

execute as @s[scores={move=195}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=195}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=195}] at @s  run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.55 9999
execute as @s[scores={move=195}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=195}] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=195}] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=195}] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=195}] at @s  run particle ds:heavy_impact5
execute as @s[scores={move=195}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=195}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=195}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=195}] at @s  run particle ds:crater3
execute as @s[scores={move=195}] at @s  run particle ds:rubble3
execute as @s[scores={move=195}] at @s  run camerashake add @a[r=16] 4 0.40
execute as @s[scores={move=195..}] at @s  run tp @s @s
execute as @s[scores={move=194}] at @s  run tp @s ^ ^35 ^
execute as @s[scores={move=192..195}] at @s  run particle ds:evade1
execute as @s[scores={move=192..195}] at @s  run particle ds:evade2
execute as @s[scores={move=192..195}] at @s  run particle ds:evade3
execute as @s[scores={move=192..195}] at @s  run particle ds:evade4

scoreboard players set @s[scores={move=145..}] Camera 5
scoreboard players set @s[scores={move=5..100}] Camera 5

execute as @s[scores={move=178}] at @s  run playsound music.energy @a[r=200] ~~~ 999999 0.75 999999
execute as @s[scores={move=155..175}] at @s  run playsound mob.shocked3 @a[r=200] ~~~ 0.25  1 999999
execute as @s[scores={move=155..175}] at @s  run playsound mob.shocked3 @a[r=200] ~~~ 0.25 1.33 999999
execute as @s[scores={move=150..175}] at @s anchored eyes run particle ds:electro_cannon_charge ^^-0.1^1
execute as @s[scores={move=150..175}] at @s anchored eyes run particle ds:electro_cannon_charge1 ^^-0.1^1
execute as @s[scores={move=150..175}] at @s anchored eyes run particle ds:electro_cannon_charge2 ^^-0.1^1

execute as @s[scores={move=150..175}] at @s run tp @s ~~~
execute as @s[scores={move=150..175}] at @s run camerashake add @a[r=100] 1 0.15

execute as @s[scores={move=175}] at @s anchored eyes run particle ds:electro_cannon_charge3 ^^-0.1^1
execute as @s[scores={move=165}] at @s anchored eyes run particle ds:electro_cannon_charge3 ^^-0.1^1
execute as @s[scores={move=155}] at @s anchored eyes run particle ds:electro_cannon_charge3 ^^-0.1^1

execute as @s[scores={move=15..175}] at @s anchored eyes run particle ds:electro_orbs_charge1 ~~15~
execute as @s[scores={move=150..175}] at @s anchored eyes run particle ds:energy_orb2 ^^-0.1^1
execute as @s[scores={move=150..175}] at @s anchored eyes run particle ds:electro_cannons_charge4 ^^-0.1^1

execute as @s[scores={move=150}] at @s anchored eyes run summon ds:projectile CannonOrb ^^1.75^-1
execute as @s[scores={move=121..150}] at @s anchored eyes run tp @e[name=CannonOrb,c=1] ^^1.75^-1
execute as @s[scores={move=121..150}] at @s anchored eyes run playanimation @e[name=CannonOrb,c=1] animation.electro_cannon_orb

execute as @s[scores={move=125..120}] at @s anchored eyes run tp @e[name=CannonOrb,c=1,r=10] ~~-50~
execute as @s[scores={move=125..115}] at @s anchored eyes run kill @e[name=CannonOrb,c=1,r=70]

execute as @s[scores={move=117}] at @s anchored eyes run particle ds:electro_cannon_charge3 ^^-0.1^1

execute as @s[scores={move=115..117}] at @s anchored eyes run particle ds:electro_cannon_charge ^^-0.1^1
execute as @s[scores={move=125..113}] at @s anchored eyes run particle ds:electro_cannon_charge ^^-0.1^1
execute as @s[scores={move=100..109}] at @s anchored eyes run particle ds:electro_cannon_charge ^^-0.1^1

execute as @s[scores={move=115..117}] at @s anchored eyes run particle ds:energy_orb2 ^^-0.1^1
execute as @s[scores={move=115..117}] at @s anchored eyes run particle ds:electro_cannon_charge4 ^^-0.1^1


execute as @s[scores={move=120}] at @s  run playsound music.laser1 @a[r=200] ~~~ 999999 1 999999



execute as @s[scores={move=150..180},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^ ^-3 ^5 facing @s

title @s[scores={move=175},tag=!impactframesoff,type=player] title 
title @s[scores={move=173},tag=!impactframesoff,type=player] title §l
title @s[scores={move=168},tag=!impactframesoff,type=player] title 
title @s[scores={move=166},tag=!impactframesoff,type=player] title §l
title @s[scores={move=158},tag=!impactframesoff,type=player] title 
title @s[scores={move=156},tag=!impactframesoff,type=player] title §l



execute as @s[scores={move=115},type=player] at @s anchored eyes run camera @s set minecraft:free pos ^55 ^25 ^45 facing @s

execute as @s[scores={move=1..9}] at @s run tickingarea remove ecannon


execute as @s[scores={move=25..100}] at @s positioned ^^^1 run particle ds:electro_beam1
execute as @s[scores={move=25..100}] at @s positioned ^^^1 run particle ds:electro_beam2
execute as @s[scores={move=25..100}] at @s positioned ^^^1 run particle ds:electro_beam3
execute as @s[scores={move=25..100}] at @s positioned ^^^1 run particle ds:electro_beam4

execute as @s[scores={move=100}] at @s positioned ^37^1^ run particle ds:invert
execute as @s[scores={move=97}] at @s positioned ^37^1^ run particle ds:invert




execute as @s[scores={move=25..100}] at @s positioned ^^^1 run function kashimo/e_cannon
execute as @s[scores={move=25..100}] at @s positioned ^^^1.5 run function kashimo/e_cannon
execute as @s[scores={move=25..100}] at @s positioned ^^^3 run function kashimo/e_cannon
execute as @s[scores={move=25..100}] at @s positioned ^^^4.5 run function kashimo/e_cannon
execute as @s[scores={move=25..100}] at @s positioned ^^^6 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^7.5 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^9 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^10.5 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^12 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^13.5 run function kashimo/e_cannon
execute as @s[scores={move=25..99}] at @s positioned ^^^15 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^16.5 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^18 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^19.5 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^21 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^22.5 run function kashimo/e_cannon
execute as @s[scores={move=25..98}] at @s positioned ^^^24 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^25.5 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^27 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^28.5 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^30 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^31.5 run function kashimo/e_cannon
execute as @s[scores={move=25..97}] at @s positioned ^^^33 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^34.5 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^36 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^37.5 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^39 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^40.5 run function kashimo/e_cannon
execute as @s[scores={move=25..96}] at @s positioned ^^^42 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^43.5 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^45 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^46.5 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^48 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^49.5 run function kashimo/e_cannon
execute as @s[scores={move=25..95}] at @s positioned ^^^51 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^52.5 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^54 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^55.5 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^57 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^58.5 run function kashimo/e_cannon
execute as @s[scores={move=25..94}] at @s positioned ^^^60 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^61.5 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^63 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^64.5 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^66 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^67.5 run function kashimo/e_cannon
execute as @s[scores={move=25..93}] at @s positioned ^^^69 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^70.5 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^72 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^73.5 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^75 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^76.5 run function kashimo/e_cannon
execute as @s[scores={move=25..92}] at @s positioned ^^^78 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^79.5 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^81 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^82.5 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^84 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^85.5 run function kashimo/e_cannon
execute as @s[scores={move=25..91}] at @s positioned ^^^87 run function kashimo/e_cannon
execute as @s[scores={move=25..90}] at @s positioned ^^^88.5 run function kashimo/e_cannon
execute as @s[scores={move=25..90}] at @s positioned ^^^90 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^92.5 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^94 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^95.5 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^97 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^98.5 run function kashimo/e_cannon
execute as @s[scores={move=25..89}] at @s positioned ^^^100 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^101.5 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^103 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^104.5 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^106 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^107.5 run function kashimo/e_cannon
execute as @s[scores={move=25..88}] at @s positioned ^^^109 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^110.5 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^112 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^113.5 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^115 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^116.5 run function kashimo/e_cannon
execute as @s[scores={move=25..87}] at @s positioned ^^^118 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^119.5 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^121 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^122.5 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^124 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^125.5 run function kashimo/e_cannon
execute as @s[scores={move=25..86}] at @s positioned ^^^127 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^128.5 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^130 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^131.5 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^133 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^134.5 run function kashimo/e_cannon
execute as @s[scores={move=25..85}] at @s positioned ^^^136 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^137.5 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^139 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^140.5 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^142 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^143.5 run function kashimo/e_cannon
execute as @s[scores={move=25..84}] at @s positioned ^^^145 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^146.5 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^148 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^149.5 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^151 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^152.5 run function kashimo/e_cannon
execute as @s[scores={move=25..83}] at @s positioned ^^^154 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^155.5 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^157 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^158.5 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^160 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^161.5 run function kashimo/e_cannon
execute as @s[scores={move=25..82}] at @s positioned ^^^163 run function kashimo/e_cannon
execute as @s[scores={move=25..81}] at @s positioned ^^^164.5 run function kashimo/e_cannon
execute as @s[scores={move=25..100}] at @s run camerashake add @a[r=200] 2.5 0.15



execute as @s[scores={move=145}] at @s run tp @s ~~~ ~ ~40
execute as @s[scores={move=1..100}] at @s run tp @s ~~~

execute as @s[scores={move=195}] at @s  run effect @s levitation 7 0 true
execute as @s[scores={move=195}] at @s  run effect @s slow_falling 10 1 true

