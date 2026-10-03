
tp @s ~~~
tag @s add Frames

execute as @s[y=297,dy=320] at @s unless entity @e[tag=domainactive,r=60] unless entity @e[tag=abilitying,r=60] at @s run fill ~25~~25~-25~-4~-25 air [] replace barrier
execute as @s[y=297,dy=320] at @s unless entity @e[tag=domainactive,r=60] unless entity @e[tag=abilitying,r=60] at @s run function tpdown

execute as @s[scores={Deleter=1..3}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace light_block
execute as @s[scores={Deleter=1..3}] at @s run fill ~3~3~3~-3~-3~-3 air [] replace fire


execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning1
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning2
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning3
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning4
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning5
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning6
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning7
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning8
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning9
execute as @s[scores={Deleter=5..6}] at @s run particle ds:kamutoke_lightning10
execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex1 ~~-0.8~

execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex2 ~~-0.8~

execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex3 ~~-0.8~

execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex4 ~~-0.8~

execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex5 ~~-0.8~

execute as @s[scores={Deleter=4..5}] at @s run particle ds:kamutoke_lightning_ex6 ~~-0.8~
execute as @s[scores={Deleter=4..5}] at @s run particle ds:pulse1
execute as @s[scores={Deleter=4..5}] at @s run particle ds:large_slam1
execute as @s[scores={Deleter=4..5}] at @s run particle ds:large_slam2
execute as @s[scores={Deleter=4..5}] at @s run particle ds:large_slam3
execute as @s[scores={Deleter=4..5}] at @s run camerashake add @a[r=100] 4 0.2 rotational
execute as @s[scores={Deleter=10..}] at @s run effect @a[r=100] night_vision 1 1 true
execute as @s[scores={Deleter=3}] at @s run summon gg:impact_frame ~~~

scoreboard players set @s[scores={Deleter=5..}] atk 2

execute as @s[scores={Deleter=3..5}] at @s run effect @e[tag=lightning,r=10] resistance 1 15 true
execute as @s[scores={Deleter=3..5}] at @s run effect @e[type=ds:kashimo] resistance 1 15 true

execute as @s[scores={Deleter=3..4}] at @s run tag @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5,tag=!lightning,type=!ds:kashimo] add hltn
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players set @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5,tag=!lightning,type=!ds:kashimo] knockdown 25
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players set @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5,tag=!lightning,type=!ds:kashimo] Hit 3
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players add @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5] Evade 15
execute as @s[scores={Deleter=3..4}] at @s run scoreboard players add @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5] shocked 30
execute as @s[scores={Deleter=3..4}] at @s run damage @e[tag=!Frames,type=!lightning_bolt,type=!gg:impact_frame,r=5,tag=!lightning,type=!ds:kashimo] 20 override


execute as @s[scores={Deleter=3}] at @s run function damages/explosion_damage
execute as @s[scores={Deleter=3}] at @s run function damages/electric_damage
execute as @s[scores={Deleter=3}] at @s run effect @e[tag=electric_adapted,r=10] instant_health 1 2 true
execute as @s[scores={Deleter=3}] at @s run effect @e[r=30] resistance 1 15 true
execute as @s[scores={Deleter=3}] at @s if entity @e[tag=griefable] unless entity @e[type=ds:kashimo,r=10] unless entity @e[tag=lightning,r=10] run summon ds:energy_explosion ~~10~
execute as @s[scores={Deleter=5}] at @s if entity @e[tag=griefable] unless entity @e[type=ds:kashimo,r=10] unless entity @e[tag=lightning,r=10] run summon lightning_bolt

execute as @s[scores={Deleter=1..2}] at @s run effect @e[r=30] clear resistance

execute as @s[scores={Deleter=1..2}] at @s run playsound ambient.weather.thunder @a ~~~  999999 1 999999
execute as @s[scores={Deleter=1..2}] at @s run playsound ambient.weather.lightning.impact @a ~~~  999999 1 999999
execute as @s[scores={Deleter=1..2}] at @s run playsound item.trident.thunder @a ~~~  999999 1 999999
execute as @s[scores={Deleter=1..2}] at @s run playsound random.explode @a ~~~  999999 0.5 999999
execute as @s[scores={Deleter=1..2}] at @s run playsound random.explode @a ~~~  999999 0.25 999999



