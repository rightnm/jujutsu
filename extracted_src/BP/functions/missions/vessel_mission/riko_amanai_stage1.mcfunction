execute unless entity @s[scores={Deleter=0..}] at @s run scoreboard players set @s Deleter 321

execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={Evade=1..}] Evade 0
execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={infinity=4..}] infinity 3
execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={Stun=0..21}] Stun 30
execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={cutscene=0..6}] cutscene 20
execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={Move=0..6}] Move 20
execute as @s[scores={Deleter=20..321}] at @s run scoreboard players set @e[r=60,scores={Camera=0..6}] Camera 20
execute as @s[scores={Deleter=20..321}] at @s run effect @e[type=!player,r=60] slowness 1 15 true

playanimation @s[scores={Deleter=400..}] animation.riko_amanai.passed_out2
scoreboard players set @s[scores={Deleter=0..2}] Deleter 9999999

execute as @s[scores={Deleter=400..}] at @s unless entity @e[type=ds:kokun,r=200] unless entity @e[type=ds:bayer,r=200] run execute as @p[tag=special_mission_vessel,r=200] at @s run summon ds:riko_amanai_awake RikoAmanai
execute as @s[scores={Deleter=400..}] at @s unless entity @e[type=ds:kokun,r=200] unless entity @e[type=ds:bayer,r=200] run event entity @s ds:disappear

execute as @s run tp @s ~~~~ 0

execute as @s if block ~~-1~ air run tp @s ~~-1~
execute as @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={Deleter=320..321}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~1~ 99999 2 99999

execute as @s[scores={Deleter=296}] at @s run playsound mob.enderdragon.flap @a[r=100] ~~1~ 99999 0.25 99999

#dialogue

execute as @s[scores={Deleter=176..240}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fThank god... she's still breathing."}]}
execute as @s[scores={Deleter=141..175}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fWho was responsible for th-"}]}

execute as @s[scores={Deleter=81..140}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§c< Bayer > Wonderful!"}]}
execute as @s[scores={Deleter=41..80}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§m< Kokun > Those uniforms, you're from Jujutsu High right? Hand over the kid!"}]}

execute as @s[scores={Deleter=7..40}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§fYou'll have to get through me first!"}]}

execute as @s[scores={Deleter=1..6}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n§c< Bayer > Alright, if you insist."}]}

execute as @s[scores={Deleter=5}] at @s run tellraw @a[r=50] {"rawtext":[{"text":"§e- Eliminate the Q Sorcerers!"}]}
execute as @s[scores={Deleter=4..6}] at @s run execute as @e[type=ds:bayer_npc] at @s unless entity @e[type=ds:bayer,r=5] run summon ds:bayer
execute as @s[scores={Deleter=4..6}] at @s run execute as @e[type=ds:kokun_npc] at @s unless entity @e[type=ds:kokun,r=5]  run summon ds:kokun


execute as @s[scores={Deleter=4..5}] at @s run execute as @e[type=ds:bayer_npc] at @s if entity @e[type=ds:bayer,r=5] run event entity @s ds:disappear
execute as @s[scores={Deleter=4..5}] at @s run execute as @e[type=ds:kokun_npc] at @s if entity @e[type=ds:kokun,r=5] run event entity @s ds:disappear

execute as @s[scores={Deleter=20}] at @s run camera @a[r=50] fade time 0.5 1 0.5 color 0 0 0

execute as @s[scores={Deleter=319..321}] at @s run execute as @p[tag=special_mission_vessel,c=1] at @s run tp @s ~~~ facing ~~~-3

execute as @s[scores={Deleter=318..321}] at @s run execute as @p[tag=special_mission_vessel,c=1] at @s run scriptevent ds:knockback 1
execute as @s[scores={Deleter=315..318}] at @s run execute as @p[tag=special_mission_vessel,c=1] at @s run tp @s ~~~~ 0
execute as @s[scores={Deleter=315..317}] at @s run execute as @p[tag=special_mission_vessel,c=1] at @s run tp @e[name=Stage1,c=1] ^^^0.6 facing @s

execute as @s[scores={Deleter=300..321}] at @s run kill @e[family=purecurse,r=100]
execute as @s[scores={Deleter=299..314}] at @s run tp @p[tag=special_mission_vessel,c=1] ^^^0.5 facing @s
execute as @s[scores={Deleter=299..321}] at @s run camera @a[tag=special_mission_vessel,r=50] set minecraft:free pos ^2^1.5^-2.5 facing ^^0.25^0.5
execute as @s[scores={Deleter=299..321}] at @s run camera @a[tag=special_mission_vessel,r=50] fade time 0 0.25 0.25 color 0 0 0
execute as @s[scores={Deleter=299..321}] at @s run playanimation @s animation.riko_amanai.lay_down
execute as @s[scores={Deleter=299..321}] at @s run playanimation @p[tag=special_mission_vessel,c=1] animation.riko_amanai.stage1_cutscene

execute as @s[scores={Deleter=297..299}] at @s run camera @a[tag=special_mission_vessel,r=50] set minecraft:free ease 2 in_sine pos ^2.5^1.35^-3 facing ^^^0.5
execute as @s[scores={Deleter=260}] at @s run camera @a[tag=special_mission_vessel,r=50] fade time 0.5 0.25 0.25 color 0 0 0

execute as @s[scores={Deleter=249..250}] at @s run camera @a[tag=special_mission_vessel,r=50] set minecraft:free pos ^1^1.5^2 facing ^^^0.5
execute as @s[scores={Deleter=247..250}] at @s run camera @a[tag=special_mission_vessel,r=50] set minecraft:free ease 4.5 in_sine pos ^1.5^1.5^2.5 facing ^^1.35^0.5

execute as @s[scores={Deleter=161}] at @s run playsound random.explode @a[r=100] ^^^9 9999 1 9999
execute as @s[scores={Deleter=161}] at @s run playsound mob.wither.shoot @a[r=100] ^^^9 9999 0.5 9999
execute as @s[scores={Deleter=164}] at @s run playsound mob.burst @a[r=100] ^^^9 9999 2 9999
execute as @s[scores={Deleter=161}] at @s run camerashake add @a[r=40] 1 0.15
execute as @s[scores={Deleter=161}] at @s run particle ds:dirt0 ^2^^9
execute as @s[scores={Deleter=161}] at @s run particle ds:slam_dust1 ^2^^9
execute as @s[scores={Deleter=161}] at @s run particle ds:slam_dust2 ^2^^9

execute as @s[scores={Deleter=161}] at @s run particle ds:dirt0 ^-2^^9
execute as @s[scores={Deleter=161}] at @s run particle ds:slam_dust1 ^-2^^9
execute as @s[scores={Deleter=161}] at @s run particle ds:slam_dust2 ^-2^^9

execute as @s[scores={Deleter=161}] at @s run fill ^-4^0.5^2 ^4^5^11 air 
 
execute as @s[scores={Deleter=140..141}] at @s run camera @a[tag=special_mission_vessel,r=50] set minecraft:free ease 1 in_sine pos ^1.5^1.5^-2.5 facing ^^1.33^10

execute as @s[scores={Deleter=140}] at @s run summon ds:bayer_npc ^2^^9 facing ~~1~
execute as @s[scores={Deleter=140}] at @s run summon ds:kokun_npc ^-2^^9 facing ~~1~

execute as @s[scores={Deleter=136..137}] at @s run playanimation @e[type=ds:kokun_npc,c=1] animation.kokun_intro
execute as @s[scores={Deleter=133..137}] at @s run replaceitem entity @e[type=ds:kokun_npc,c=1] slot.weapon.mainhand 1 ds:glock
execute as @s[scores={Deleter=136..137}] at @s run playanimation @e[type=ds:bayer_npc,c=1] animation.bayer_intro