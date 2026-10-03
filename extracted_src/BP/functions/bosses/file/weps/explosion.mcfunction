scoreboard players remove @s[scores={Deleter=16..}] Deleter 1

execute as @e[name="xero_explode"] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 190

execute as @s[scores={Deleter=30..180}] at @s run particle  ds:xero_explosion_marker1 ~~15~ 
execute as @s[scores={Deleter=180..181}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 4 9999

execute as @s[scores={Deleter=1..150}] at @s run particle  ds:xero_explosion_marker ~~~ 

execute as @s[scores={Deleter=30..150}] at @s run particle  ds:xero_explosion_marker2 ~~25~ 
execute as @s[scores={Deleter=150..151}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3.5 9999

execute as @s[scores={Deleter=30..120}] at @s run particle  ds:xero_explosion_marker1 ~~35~ 
execute as @s[scores={Deleter=120..121}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3 9999

execute as @s[scores={Deleter=30..100}] at @s run particle  ds:xero_explosion_marker3 ~~45~ 
execute as @s[scores={Deleter=100..101}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 2.5 9999

execute as @s[scores={Deleter=30..70}] at @s run particle  ds:xero_explosion_marker2 ~~55~ 
execute as @s[scores={Deleter=70..71}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3.5 9999

execute as @s[scores={Deleter=30..50}] at @s run particle  ds:xero_explosion_marker4 ~~65~ 
execute as @s[scores={Deleter=50..51}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 2 9999

execute as @s[scores={Deleter=50..51}] at @s run execute as @a[r=300] at @s run playsound music.buildup @s ~~~ 99999 7 99999

execute as @s[scores={Deleter=12..30}] at @s run particle ds:xero_exploding ~~~
execute as @s[scores={Deleter=6..11}] at @s run particle ds:dirt4
execute as @s[scores={Deleter=6..11}] at @s run particle ds:xero_explode
execute as @s[scores={Deleter=6..11}] at @s run particle ds:xero_explode1
execute as @s[scores={Deleter=6..11}] at @s run particle ds:xero_explode2
execute as @s[scores={Deleter=6..11}] at @s run particle ds:xero_explode3
execute as @s[scores={Deleter=8..20}] at @s run particle ds:red_tint
execute as @s[scores={Deleter=15..16}] at @s run particle ds:invert
execute as @s[scores={Deleter=15..16}] at @s run  particle ds:large_shockwave
execute as @s[scores={Deleter=15..16}] at @s run summon gg:impact_frame
execute as @s[scores={Deleter=8..9}] at @s run summon gg:impact_frame
execute as @s[scores={Deleter=13..15}] at @s run camerashake add @a[r=300] 4 1 rotational
execute as @s[scores={Deleter=39..40}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=6..11}] at @s run playsound mob.shock1 @a[r=300] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=6..11}] at @s run playsound mob.wither.break_block @a[r=300] ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=6..11}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 0.5 99999

execute as @s[scores={Deleter=13..14}] at @s if entity @p[tag=griefable] run function 32x32sphere
execute as @s[scores={Deleter=1..14}] at @s if entity @p[tag=griefable] run fill~5~5~5~-5~-5~-5 air

execute as @s[scores={Deleter=13..14}] at @s run scoreboard players random @e[family=!heroic,tag=!Frames,r=30,family=!projectile] damage 128 256
execute as @s[scores={Deleter=13..14}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=30,family=!projectile] knockdown 50
execute as @s[scores={Deleter=13..14}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=30,family=!projectile] Hit 3

scoreboard players remove @s[scores={Deleter=16..}] Deleter 1
