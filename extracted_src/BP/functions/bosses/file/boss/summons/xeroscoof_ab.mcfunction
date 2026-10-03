playanimation @s[scores={move=200..}] animation.xeroscoof.cast


execute as @s[scores={move=180}] at @s run execute as @p[r=200] at @s run summon ds:projectile "xero_explode" ~~~
execute as @e[name="xero_explode"] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 190

execute as @e[name="xero_explode",scores={Deleter=1..}] at @s if entity @p[tag=arenaboss] run tp @s ~ 240 ~ 


particle ds:red_star ~~3~

execute as @e[name="xero_explode",scores={Deleter=45}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fEXPLOSION!!!"}]}



execute as @e[name="xero_explode",scores={Deleter=90}] at @s if entity @e[type=ds:bluelemon,r=40] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fBLUE MOVE YOU TART!"}]}
execute as @e[name="xero_explode",scores={Deleter=60}] at @s if entity @e[type=ds:bluelemon,r=40] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§1Blue Lemon §r§f> §fXero I will bash your head in shut up."}]}

execute as @e[name="xero_explode",scores={Deleter=120}] at @s positioned ~ 250 ~ if entity @e[type=ds:primesoul,r=40] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cɪ ꜱᴡᴇᴀʀ ᴛᴏ ɢᴏᴅ ɪf ʏᴏᴜ ʜɪᴛ ᴍᴇ ᴡɪᴛʜ ᴛʜᴀᴛ ᴇxᴘʟᴏꜱɪᴏɴ ʏᴏᴜ'ʀᴇ ɢᴏɴɴᴀ ᴅɪᴇ xᴇʀᴏ."}]}
execute as @e[name="xero_explode",scores={Deleter=80}] at @s  positioned ~ 250 ~ if entity @e[type=ds:primesoul,r=40] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§4XeroSCOOF §r§f> §fMove then fatty"}]}
execute as @e[name="xero_explode",scores={Deleter=50}] at @s  positioned ~ 250 ~ if entity @e[type=ds:primesoul,r=40] run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §cɪ ᴡɪʟʟ ʟɪᴛᴇʀᴀʟʟʏ ᴊᴜꜱᴛ ᴅᴇꜱᴘᴀᴡɴ ʏᴏᴜ."}]}

execute as @e[name="xero_explode",scores={Deleter=30..180}] at @s run particle  ds:xero_explosion_marker1 ~~15~ 
execute as @e[name="xero_explode",scores={Deleter=180}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 4 9999

execute as @e[name="xero_explode",scores={Deleter=1..150}] at @s run particle  ds:xero_explosion_marker ~~~ 

execute as @e[name="xero_explode",scores={Deleter=30..150}] at @s run particle  ds:xero_explosion_marker2 ~~25~ 
execute as @e[name="xero_explode",scores={Deleter=150}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3.5 9999

execute as @e[name="xero_explode",scores={Deleter=30..120}] at @s run particle  ds:xero_explosion_marker1 ~~35~ 
execute as @e[name="xero_explode",scores={Deleter=120}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3 9999

execute as @e[name="xero_explode",scores={Deleter=30..100}] at @s run particle  ds:xero_explosion_marker3 ~~45~ 
execute as @e[name="xero_explode",scores={Deleter=100}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 2.5 9999

execute as @e[name="xero_explode",scores={Deleter=30..70}] at @s run particle  ds:xero_explosion_marker2 ~~55~ 
execute as @e[name="xero_explode",scores={Deleter=70}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 3.5 9999

execute as @e[name="xero_explode",scores={Deleter=30..50}] at @s run particle  ds:xero_explosion_marker4 ~~65~ 
execute as @e[name="xero_explode",scores={Deleter=50}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 2 9999

execute as @e[name="xero_explode",scores={Deleter=50}] at @s run execute as @a[r=100] at @s run playsound music.buildup @s ~~~ 99999 7 99999

execute as @e[name="xero_explode",scores={Deleter=12..30}] at @s run particle ds:xero_exploding ~~~
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:reality_crater1 ~ 240.1 ~
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:dirt4
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:xero_explode
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:xero_explode1
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:xero_explode2
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run particle ds:xero_explode3
execute as @e[name="xero_explode",scores={Deleter=11..20}] at @s run particle ds:red_tint
execute as @e[name="xero_explode",scores={Deleter=15}] at @s run particle ds:invert
execute as @e[name="xero_explode",scores={Deleter=15}] at @s run summon gg:impact_frame
execute as @e[name="xero_explode",scores={Deleter=15}] at @s run camerashake add @a[r=300] 0.5 0.5 rotational
execute as @e[name="xero_explode",scores={Deleter=40}] at @s run playsound mob.shock2 @a[r=300] ~~~ 99999 0.5 99999
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run playsound mob.shock1 @a[r=300] ~~~ 99999 0.5 99999
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run playsound mob.wither.break_block @a[r=300] ~~~ 99999 0.5 99999
execute as @e[name="xero_explode",scores={Deleter=11}] at @s run playsound mob.wither.spawn @a[r=300] ~~~ 99999 0.5 99999

execute as @e[name="xero_explode",scores={Deleter=14}] at @s run scoreboard players random @e[family=!heroic,tag=!Frames,r=30,family=!projectile] damage 256 487
execute as @e[name="xero_explode",scores={Deleter=14}] at @s run scoreboard players random @e[family=heroic,type=!ds:primesoul,tag=!Frames,r=30] damage 20 100
execute as @e[name="xero_explode",scores={Deleter=14}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=30,family=!projectile] knockdown 50
execute as @e[name="xero_explode",scores={Deleter=14}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=30,family=!projectile] Hit 3
