playanimation @s[scores={move=90,amberbeast=0}] animation.grand_javelin
playanimation @s[scores={move=90,amberbeast=1..}] animation.grand_javelin2

tag @s[scores={move=1..2},tag=form1d] remove form1d

tag @s[scores={move=86..,Stun=1..},tag=form1d] remove form1d
scoreboard players set @s[scores={move=86..,Stun=1..}] move 0

effect @s speed 0 50 true
scoreboard players set @s[scores={move=1..85}] Frames 6
scoreboard players set @s[scores={move=1..}] Move 4

execute as @s[scores={move=60}] at @s run playsound mob.electricity @a ~~~
execute as @s[scores={move=60}] at @s run playsound mob.electricity @a ~~~ 1 0.75
execute as @s[scores={move=60}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.25 9999
execute as @s[scores={move=60}] at @s run playsound random.explode @a[r=100] ~~~ 99999 0.45 9999
execute as @s[scores={move=60}] at @s run playsound mob.shocked3 @a[r=100] ~~~ 99999 0.45 9999
execute as @s[scores={move=60}] at @s run camerashake add @a[r=100] 4 0.75
execute as @s[scores={move=60}] at @s run effect @s slowness 1 15 true
execute as @s[scores={move=60}] at @s run effect @s slowness 0 10 true
execute as @s[scores={move=60}] at @s run effect @a[r=40] night_vision 1 1 true

execute as @s[scores={move=85..}] at @s if block ~~-0.33~ air run tp @s ~~-0.33~
execute as @s[scores={move=85..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=85..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=85..}] at @s if block ~~-1~ air run tp @s ~~-1~

effect @s[type=ds:kashimo,scores={move=1..30}] slow_falling 4 1 true
execute as @s[type=ds:kashimo,scores={move=20..50}] at @s  run tp @s ~~~ facing  @e[tag=!Frames,type=!ds:finger_bearer,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,r=80,c=1]
execute as @s[scores={move=85}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=85}] at @s  run playsound random.explode @a[r=100] ~~~ 9999 0.35 9999
execute as @s[scores={move=85}] at @s  run playsound mob.wither.shoot @a[r=100] ~~~ 9999 0.55 9999
execute as @s[scores={move=85}] at @s  run playsound mob.wither.break_block @a[r=100] ~~~ 9999 0.75 9999
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact1
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact2
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact3
execute as @s[scores={move=85}] at @s  run particle ds:heavy_impact5
execute as @s[scores={move=85}] at @s  run particle ds:ground_slam1
execute as @s[scores={move=85}] at @s  run particle ds:ground_slam2
execute as @s[scores={move=85}] at @s  run particle ds:ground_slam3
execute as @s[scores={move=85}] at @s  run particle ds:crater3
execute as @s[scores={move=85}] at @s  run particle ds:rubble3
execute as @s[scores={move=85}] at @s  run camerashake add @a[r=16] 4 0.40

effect @s[scores={move=84}] levitation 1 80 true
effect @s[scores={move=77}] levitation 0 100 true

effect @s[scores={move=50..77}] levitation 1 0 true
effect @s[scores={move=21..77}] slow_falling 1 1 true

scoreboard players set @s[scores={move=1..30}] Camera 5
camera @s[scores={move=21..},type=player] set minecraft:third_person


execute as @s[scores={move=30}] at @s run effect @a[r=200] night_vision 2 1 true

execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.witch.throw @a[r=100] ~~~ 99999 0.75 99999

execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam3
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1 run particle ds:ground_slam2
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^1 run particle mcdp_v:knockback_roar_particle_2

title @s[scores={move=60},tag=!impactframesoff,type=player] title 
title @s[scores={move=59},tag=!impactframesoff,type=player] title §l
title @s[scores={move=58},tag=!impactframesoff,type=player] title 
title @s[scores={move=57},tag=!impactframesoff,type=player] title §l

title @s[scores={move=31},tag=!impactframesoff,type=player] title 
title @s[scores={move=30},tag=!impactframesoff,type=player] title 
title @s[scores={move=29},tag=!impactframesoff,type=player] title 
title @s[scores={move=28},tag=!impactframesoff,type=player] title 
camera @s[scores={move=31},type=player] fade time 0 0 0.1 color 255 255 255
title @s[scores={move=27},tag=!impactframesoff,type=player] title §l


execute as @s[scores={move=17..30,amberbeast=0}] at @s  run scriptevent ds:lightning 3,3,5, 0.35,0.65,1, 0.35,0.65,1, 0,0,5, 2,0,0
execute as @s[scores={move=17..30,amberbeast=1..}] at @s  run scriptevent ds:lightning 3,3,5, 1,0.25,0.75, 1,0.25,0.75, 0,0,5, 2,0,0

execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=100] ~~~ 0.4 0.6 99999
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=100] ~~~ 0.4  1 99999
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=100] 3 0.35

execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 0.4  1.3 99999
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked2 @a[r=100] ~~~ 0.4  0.75 99999
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:electro_carve1
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes positioned ^^^1 run particle ds:electro_carve2
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes run summon ds:projectile GrandJavelin ^^-1^0.25
execute as @s[scores={move=30,amberbeast=0}] at @s anchored eyes run summon ds:projectile GrandJavelinTRG ^^^50
execute as @s[scores={move=28..30,amberbeast=0}] at @s anchored eyes run scoreboard players set @e[name=GrandJavelin,c=1] Deleter 45
execute as @s[scores={move=28..30,amberbeast=0}] at @s anchored eyes positioned ^^^50 run scoreboard players set @e[name=GrandJavelinTRG,c=1] Deleter 45

execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.wither.shoot @a[r=100] ~~~ 0.4  0.75 99999
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.witch.throw @a[r=100] ~~~ 0.4  0.75 99999

execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=100] ~~~ 0.4  0.4 99999
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shock1 @a[r=100] ~~~ 0.4  0.8 99999
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run camerashake add @a[r=100] 4 0.35

execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked3 @a[r=100] ~~~ 0.4  1.3 99999
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1.5 run playsound mob.shocked2 @a[r=100] ~~~ 0.4  0.75 99999
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_shockwave1a
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:lightning_sparkle1a
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:electro_carve1a
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes positioned ^^^1 run particle ds:electro_carve2a
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes run summon ds:projectile GrandJavelin ^^^0.25
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes run summon ds:projectile GrandJavelinTRG ^^^50
execute as @s[scores={move=30,amberbeast=1..}] at @s anchored eyes run tag @e[type=ds:projectile,name=GrandJavelin,c=1] add amber
execute as @s[scores={move=28..30,amberbeast=1..}] at @s anchored eyes run scoreboard players set @e[name=GrandJavelin,c=1] Deleter 45
execute as @s[scores={move=28..30,amberbeast=1..}] at @s anchored eyes positioned ^^^50 run scoreboard players set @e[name=GrandJavelinTRG,c=1] Deleter 45

tickingarea remove grandjavelin2
execute as @s[scores={move=5..30}] at @s anchored eyes positioned ^^^50 run tickingarea add ~20~~20~-20~~-20 grandjavelin2


execute as @e[type=ds:projectile,family=projectile,type=!item,name="GrandJavelin"] run function kashimo/grand_javelin


