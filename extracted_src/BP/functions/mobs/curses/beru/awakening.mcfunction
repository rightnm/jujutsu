playanimation @s[scores={cutscene=438..}] animation.beru.transform
tag @s[scores={cutscene=1..2}] remove ant_awakening
execute as @s[scores={cutscene=1..7}] at @s run fog @a remove ant
execute as @s[scores={cutscene=1..7}] at @s run camera @a[r=100] clear

execute as  @s[scores={cutscene=441..}] at @s run stopsound @a[r=400]
execute as  @s[scores={cutscene=441..}] at @s run playsound music.tempmusic @a[r=400]
execute as  @s[scores={cutscene=441..}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.25 99999

execute as  @s[scores={cutscene=440..}] at @s run camera @a[r=50] fade time 0 0.25 0.25 color 0 0 0
execute as  @s[scores={cutscene=1..}] at @s run tp @s ~~~~ 0
execute as  @s[scores={cutscene=440..442}] at @s run summon ds:knockback

scoreboard players set @s[scores={knockdown=1..}] knockdown 0
scoreboard players set @s[scores={knock=1..}] knock 0

effect @s[scores={cutscene=440..}] slow_falling 12 1 true

effect @s[scores={cutscene=440..}] regeneration 15 8 true

scoreboard players set @s[scores={cutscene=18..20}] Exp 1200
execute as  @s[scores={cutscene=440}] at @s run particle ds:ground_pound1
execute as  @s[scores={cutscene=440}] at @s run particle ds:ground_pound2
execute as  @s[scores={cutscene=440}] at @s run particle ds:ground_pound3
execute as  @s[scores={cutscene=440}] at @s run particle ds:ground_pound4
execute as  @s[scores={cutscene=440}] at @s run particle ds:leap
execute as  @s[scores={cutscene=440}] at @s run camerashake add @a[r=100] 2 0.15
execute as  @s[scores={cutscene=440}] at @s run playsound mob.wither.shoot @a[r=100] ~~~ 999999 0.75 999999
execute as  @s[scores={cutscene=440}] at @s run playsound mob.wither.break_block @a[r=100] ~~~ 999999 0.75 999999
execute as  @s[scores={cutscene=440}] at @s run playsound random.explode @a[r=100] ~~~ 999999 0.75 999999

execute as  @s[scores={cutscene=439}] at @s run tp @s ~~20~~ 0



execute as  @s[scores={cutscene=30..31}] at @s run camera @a[r=50] fade time 1 0.75 0.75 color 0 0 0

execute as  @s[scores={cutscene=438..}] at @s run camera @a[r=50] set minecraft:free pos ^^^1 facing ~~~
execute as  @s[scores={cutscene=436..438}] at @s run camera @a[r=50] set minecraft:free ease 1 in_sine pos ^^3.3^1 facing ~~3.3~

execute as  @s[scores={cutscene=410..420}] at @s run camera @a[r=50] set minecraft:free pos ^-1^3.3^0.75 facing ^^3.3^0.5
execute as  @s[scores={cutscene=409..410}] at @s run camera @a[r=50] set minecraft:free pos ^-1^2.5^1 facing ~~3~
execute as  @s[scores={cutscene=399..400}] at @s run camera @a[r=50] set minecraft:free pos ^^4^-0.75 facing ~~3~
execute as  @s[scores={cutscene=385}] at @s run camera @a[r=50] set minecraft:free pos ^^3.5^1.5 facing ~~3~
execute as  @s[scores={cutscene=400..415}] at @s run playsound mob.phantom_death @a ~~~ 99999 0.85 99999
execute as  @s[scores={cutscene=400..415}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.25 99999
execute as  @s[scores={cutscene=415}] at @s run camerashake add @a[r=100] 2 0.15 rotational
execute as  @s[scores={cutscene=417}] at @s run camerashake add @a[r=100] 3 0.33
execute as  @s[scores={cutscene=401}] at @s run camerashake add @a[r=100] 2 0.15 rotational
execute as  @s[scores={cutscene=415}] at @s run particle ds:invert
execute as  @s[scores={cutscene=414}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=413}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=413}] at @s run function clear_impframe
execute as  @s[scores={cutscene=412}] at @s run particle ds:invert

execute as  @s[scores={cutscene=405}] at @s run playsound mob.phantom_death @a ~~~ 99999 0.85 99999
execute as  @s[scores={cutscene=405}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.85 99999
execute as  @s[scores={cutscene=405}] at @s run particle ds:invert
execute as  @s[scores={cutscene=404}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=403}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=403}] at @s run function clear_impframe
execute as  @s[scores={cutscene=402}] at @s run particle ds:invert

execute as  @s[scores={cutscene=342..370}] at @s run camera @a[r=50] set minecraft:free pos ^0.8^2.15^2 facing ^1^1.9^
execute as  @s[scores={cutscene=306..341}] at @s run camera @a[r=50] set minecraft:free pos ^0.7^1.75^2.33 facing ^0.9^2.15^
execute as  @s[scores={cutscene=350}] at @s run camerashake add @a[r=100] 1 0.33
execute as  @s[scores={cutscene=345}] at @s run camerashake add @a[r=100] 3 0.25
execute as  @s[scores={cutscene=330..345}] at @s run playsound mob.phantom_death @a ~~~ 99999 0.85 99999
execute as  @s[scores={cutscene=325..345}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.6 99999
execute as  @s[scores={cutscene=343}] at @s run playsound mob.swordslash @a ~~~ 99999 0.5 99999
execute as  @s[scores={cutscene=343}] at @s run playsound mob.slash1 @a ~~~ 99999 0.5 99999
execute as  @s[scores={cutscene=345}] at @s run particle ds:invert
execute as  @s[scores={cutscene=344}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=343}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=343}] at @s run function clear_impframe
execute as  @s[scores={cutscene=342}] at @s run particle ds:invert

playsound ambient.basalt_deltas.mood @a ~~20~ 999999 2.75 999999

execute as  @s[scores={cutscene=305}] at @s run camera @a[r=50] set minecraft:free pos ^0.33^2^1.5 facing ~~2.5~
execute as  @s[scores={cutscene=290..300}] at @s run playsound mob.phantom_death @a ~~~ 99999 0.45 99999
execute as  @s[scores={cutscene=270..299}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.655 99999
execute as  @s[scores={cutscene=293}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=291}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=297}] at @s run camerashake add @a[r=100] 1 0.33
execute as  @s[scores={cutscene=295}] at @s run camerashake add @a[r=100] 3 0.25
execute as  @s[scores={cutscene=298}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=295}] at @s run particle ds:invert
execute as  @s[scores={cutscene=294}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=293}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=292}] at @s run function clear_impframe
execute as  @s[scores={cutscene=291}] at @s run particle ds:invert

execute as  @s[scores={cutscene=270..}] at @s run particle ds:egg_aura1 ~~0.25~
execute as  @s[scores={cutscene=270..}] at @s run particle ds:egg_aura2 ~~0.25~
execute as  @s[scores={cutscene=270..}] at @s run particle ds:egg_aura3 ~~0.25~

playanimation @s[scores={cutscene=1..8}] animation.cancel
scoreboard players set @s[scores={cutscene=32..100}] cutscene 31

execute as  @s[scores={cutscene=290}] at @s run camera @a[r=50] set minecraft:free pos ^5^3^10 facing ^5^3^
execute as  @s[scores={cutscene=288..290}] at @s run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^^3^10 facing ^^3^

execute as  @s[scores={cutscene=230..260}] at @s run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^^-5^10 facing ^^3^
execute as  @s[scores={cutscene=250}] at @s run camera @a[r=50] fade time 1 0.265 0.25 color 0 0 0

execute as  @s[scores={cutscene=225}] at @s run camera @a[r=50] set minecraft:free pos ^^^2 facing ^^^
execute as  @s[scores={cutscene=223..224}] at @s run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^^3^2 facing ^^3^

execute as  @s[scores={cutscene=5..180}] at @s run camera @a[r=50] set minecraft:free ease 0.15 in_sine pos ^^3^1.25 facing ^^3^

execute as  @s[scores={cutscene=188..260}] at @s run particle ds:ant_scream1 ~~2.5~
execute as  @s[scores={cutscene=188..260}] at @s run particle ds:ant_scream2 ~~2.5~
execute as  @s[scores={cutscene=260}] at @s run particle ds:ant_scream3 ~~2.5~

event entity @s[scores={cutscene=1..5}] beru_awaken

execute as  @s[scores={cutscene=223..225}] at @s run playsound mob.wither.spawn @a ~~~ 99999 0.5 99999
execute as  @s[scores={cutscene=223..225}] at @s run playsound mob.wither.death @a ~~~ 99999 0.25 99999
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura1 ~~2.5~
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura2 ~~2.5~
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura3 ~~2.5~
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura4 ~~2.5~
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura5 ~~2.5~
execute as  @s[scores={cutscene=220..225}] at @s run particle ds:ant_scream_aura6 ~~2.5~

execute as  @s[scores={cutscene=230..260}] at @s run camerashake add @a[r=100] 1 0.15
execute as  @s[scores={cutscene=230..260}] at @s run playsound mob.phantom_death @a ~~~ 99999 0.45 99999
execute as  @s[scores={cutscene=240..259}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.655 99999
execute as  @s[scores={cutscene=258}] at @s run camera @a[r=100] fade time 0 0 0.1 color 255 255 255
execute as  @s[scores={cutscene=253}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=251}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=258}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=255}] at @s run particle ds:invert
execute as  @s[scores={cutscene=254}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=253}] at @s run summon gg:impact_frame
execute as  @s[scores={cutscene=252}] at @s run function clear_impframe
execute as  @s[scores={cutscene=251}] at @s run particle ds:invert


