scoreboard players set @s Move 6
scoreboard players set @s infinity 6
scoreboard players set @s Frames 6
scoreboard players set @s Camera 6
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

playanimation @s[scores={cutscene=15..}] animation.stunned

tag @s[type=ds:mahito,tag=!warned_by_sukuna] add warned_by_sukuna

camera @s[scores={cutscene=120..}] fade time 0.25 1.5 0.75 color 0 0 0

execute as @s[scores={cutscene=120}] at @s run playsound music.menuintro2 @s ~~1~ 99999 1 99999
execute as @s[scores={cutscene=114}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=113}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=112}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=111}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=110}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=109}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=108}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=107}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=106}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=105}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=104}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=103}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=102}] at @s run title @a[r=40,tag=!impactframesoff] title  
execute as @s[scores={cutscene=101}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=100}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=99}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=98}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=97}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=96}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=95}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=94}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=93}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=92}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=91}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=90}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=89}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=88}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=87}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=86}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=85}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=84}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=83}] at @s run title @a[r=40,tag=!impactframesoff] title 
execute as @s[scores={cutscene=82}] at @s run title @a[r=40,tag=!impactframesoff] title §l

execute as @s[scores={cutscene=21..115}] at @s positioned ~ 2800 ~ run function sukuna/innatedomain_ambience
execute as @s[scores={cutscene=115}] at @s positioned ~ 2800 ~ run summon ds:sukuna_innate_domain
execute as @s[scores={cutscene=21..115}] at @s run scoreboard players set @e[type=ds:sukuna_innate_domain,c=1] Deleter 30
execute as @s[scores={cutscene=21..115}] at @s run scoreboard players set @e[type=ds:innate_sukuna,c=1] Deleter 30
execute as @s[scores={cutscene=20..115}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run tp @s @s
execute as @s[scores={cutscene=115}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run summon ds:innate_sukuna ^^4.7^20 facing ~~~ 
execute as @s[scores={cutscene=20..115}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run tp @e[type=ds:innate_sukuna,c=1] ^^4.7^20 facing ~~~ 
execute as @s[scores={cutscene=82..115}] at @s positioned ~ 2800 ~ run playanimation @e[type=ds:innate_sukuna,c=1,r=50] animation.innate_sukuna


execute as @s[scores={cutscene=65..110}] at @s positioned ~ 2800 ~ run camera @s set minecraft:free pos ~~1~ facing @e[type=ds:innate_sukuna,c=1]
execute as @s[scores={cutscene=90}] at @s run playsound music.knowyourplace @s ~ 280 ~ 99999 1 99999
execute as @s[scores={cutscene=40..50}] at @s positioned ~ 2800 ~ run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @p[tag=sukuna_warning,c=1] set minecraft:free pos ^^1^2.5 facing ~~1~

execute as @s[scores={cutscene=51..80}] at @s run titleraw @a[tag=sukuna_warning,c=1] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cKnow your place..."}]}
execute as @s[scores={cutscene=30..50}] at @s run titleraw @a[tag=sukuna_warning,c=1] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cFool..."}]}

execute as @s[scores={cutscene=20..25}] at @s run camera @s fade time 0.15 0.15 0.15 color 100 0 0


execute as @s[scores={cutscene=0..15}] at @s run camera @s clear


execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s[scores={domainactive=4..}] domainactive 3
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @e[type=ds:perfection_domain,c=1,r=70] Deleter 31

execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s[scores={antiheal=1..}] dying 3
execute as @s[scores={cutscene=0..10,antiheal=1..}] at @s run particle ds:blood_mist ~~1~
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s Frames 0
execute as @s[scores={cutscene=0..10}] at @s run tag @s remove Frames
execute as @s[scores={cutscene=0..10}] at @s run effect @s clear resistance
execute as @s[scores={cutscene=0..10}] at @s run damage @s 100 override
execute as @s[scores={cutscene=0..10}] at @s run playanimation @s animation.sukuna_warning_stunned
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s antiheal 1200
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s Stun 110
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s Disabled2 110
execute as @s[scores={cutscene=0..10}] at @s run scoreboard players set @s Hit 20
execute as @s[scores={cutscene=0..10}] at @s run playsound mob.blood @a[r=50] ~~1~ 9999 1.5 9999
execute as @s[scores={cutscene=0..10}] at @s run particle ds:heavy_impact1 ~~1~
execute as @s[scores={cutscene=0..10}] at @s run particle ds:cleave1 ~~1~
execute as @s[scores={cutscene=0..10}] at @s run camerashake add @a[r=10] 2 0.25
execute as @s[scores={cutscene=0..10}] at @s run function idle_transfig/remove_sukuna_warning




