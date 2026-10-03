playanimation @s[scores={cutscene=330..}] animation.beru.awaken
tag @s[scores={cutscene=1..2}] remove ant_awaken
execute as @s[scores={cutscene=1..7}] at @s run fog @a remove ant
execute as @s[scores={cutscene=1..7}] at @s run camera @a[r=100] clear



execute as  @s[scores={cutscene=330..332}] at @s run playsound block.turtle_egg.crack @a ~~~ 99999 0.25 99999

execute as  @s[scores={cutscene=335..}] at @s run camera @a[r=50] fade time 0 0.25 0.25 color 0 0 0
execute as  @s[scores={cutscene=1..}] at @s run tp @s ~~~~ 0
execute as  @s[scores={cutscene=330..332}] at @s run summon ds:knockback


execute as  @s[scores={cutscene=1..7}] at @s run camera @a[r=50] fade time 0 0.25 0.25 color 0 0 0

execute as  @s[scores={cutscene=333..334}] at @s run camera @a[r=50] set minecraft:free pos ^2^0.25^-2.5 facing ~~3~
execute as  @s[scores={cutscene=329..330}] at @s run camera @a[r=50] set minecraft:free ease 1 linear pos ^-0.75^2^-2 facing ^-0.7^1.5^
execute as  @s[scores={cutscene=310..311}] at @s run camera @a[r=50] set minecraft:free ease 1 linear pos ^-1.5^2^1 facing ^^2^2
execute as  @s[scores={cutscene=292..293}] at @s run camera @a[r=50] set minecraft:free ease 1 linear pos ^^4^1.5 facing ^^2^0.33
execute as  @s[scores={cutscene=272..273}] at @s run camera @a[r=50] set minecraft:free ease 2 in_sine pos ^^5^2.25 facing ^^3^0.25


execute as  @s[scores={cutscene=240}] at @s run camera @a[r=50] set minecraft:free pos ^^2.64^0.8 facing ^^2.3^0.5

execute as  @s[scores={cutscene=240}] at @s run fog @a push minecraft:fog_hell ant
execute as  @s[scores={cutscene=180}] at @s run camera @a[r=50] set minecraft:free pos ^^3^1.5 facing ^^3^0.33
execute as  @s[scores={cutscene=178..180}] at @s run camera @a[r=50] set minecraft:free ease 2.75 in_out_circ pos ^^0.15^2 facing ^^3^-1
execute as  @s[scores={cutscene=235..240}] at @s run playsound mob.spider.step @a ~~~ 9999999 0.4 999999
execute as  @s[scores={cutscene=230}] at @s run playsound mob.blaze.breathe @a ~~~ 9999999 0.4 999999
execute as  @s[scores={cutscene=230}] at @s run playsound random.fizz @a ~~~ 9999999 0.6 999999

execute as  @s[scores={cutscene=113..114}] at @s run camera @a[r=50] set minecraft:free ease 2 in_out_circ pos ^^^7 facing ^^3^-1

execute as  @s[scores={cutscene=71..130}] at @s run camerashake add @a[r=200] 0.01 0.08
execute as  @s[scores={cutscene=20..70}] at @s run camerashake add @a[r=200] 0.25 0.1



execute as  @s[scores={cutscene=130}] at @s run  summon gg:impact_frame ~~~
execute as  @s[scores={cutscene=130}] at @s run particle ds:invert
execute as  @s[scores={cutscene=129}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=129..130}] at @s run playsound mob.wither.death @a ~~6~ 99999 1.44 9999
execute as  @s[scores={cutscene=20..130}] at @s run playsound mob.phantom.death @a ~~6~ 99999 0.55 9999
execute as  @s[scores={cutscene=20..130}] at @s run playsound mob.phantom.hurt @a ~~6~ 99999 0.45 9999
execute as  @s[scores={cutscene=70..130}] at @s run particle ds:turbo_intensity3 ~~~
execute as  @s[scores={cutscene=70..130}] at @s run particle ds:turbo_intensity4 ~~~
execute as  @s[scores={cutscene=70..130}] at @s run particle ds:ant_scream1 ~~3~ 
execute as  @s[scores={cutscene=70..130}] at @s run particle ds:ant_scream2 ~~3~ 
execute as  @s[scores={cutscene=130}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=120}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=110}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=100}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=90}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=80}] at @s run particle ds:ant_scream3 ~~3~ 
execute as  @s[scores={cutscene=70}] at @s run particle ds:ant_scream3 ~~3~ 

execute as  @s[scores={cutscene=25..70}] at @s run camera @a[r=50] set minecraft:free pos ^70^2^ facing ~~35~

execute as  @s[scores={cutscene=70}] at @s run playsound mob.blitz @a ~~~ 99999 1.5 99999
execute as  @s[scores={cutscene=70}] at @s run  summon gg:impact_frame ~~~
execute as  @s[scores={cutscene=69}] at @s run particle ds:invert
execute as  @s[scores={cutscene=68}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=66}] at @s run  summon gg:impact_frame ~~~
execute as  @s[scores={cutscene=65}] at @s run function clear_impframe
execute as  @s[scores={cutscene=64}] at @s run particle ds:invert
execute as  @s[scores={cutscene=63}] at @s run particle ds:red_tint
execute as  @s[scores={cutscene=15..70}] at @s run particle ds:ant_scream_aura1 ~~-3~
execute as  @s[scores={cutscene=15..70}] at @s run particle ds:ant_scream_aura2 ~~-3~
execute as  @s[scores={cutscene=15..70}] at @s run particle ds:ant_scream_aura3 ~~-3~
execute as  @s[scores={cutscene=15..70}] at @s run particle ds:ant_scream_aura4 ~~-3~
execute as  @s[scores={cutscene=15..70}] at @s run particle ds:ant_scream_aura5 ~~-3~
execute as  @s[scores={cutscene=60}] at @s run particle ds:ant_scream_aura6 ~~3~ 
execute as  @s[scores={cutscene=40}] at @s run particle ds:ant_scream_aura6 ~~3~ 
execute as  @s[scores={cutscene=20}] at @s run particle ds:ant_scream_aura6 ~~3~ 
execute as  @s[scores={cutscene=70}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 
execute as  @s[scores={cutscene=60}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 
execute as  @s[scores={cutscene=50}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 
execute as  @s[scores={cutscene=40}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 
execute as  @s[scores={cutscene=30}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 
execute as  @s[scores={cutscene=20}] at @s run particle ds:ant_scream_shockwave1 ~~3~ 

