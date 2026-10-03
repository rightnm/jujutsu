
# Startup
tag @s[tag=!mahito_domain,scores={domain=4..}] add mahito_domain
tag @s[scores={domain=0..3}] remove mahito_domain

execute as @s[scores={domain=420..421}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=420..421}] at @s run kill @e[type=!item,type=ds:perfection_domain,r=33]
execute as @s[scores={domain=420..421}] at @s run scoreboard players set @e[r=33,rm=0.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 15
execute as @s[scores={domain=420..421}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=420..421}] at @s run playanimation @a[r=33,rm=0.33,m=!spectator] animation.stunned
execute as @s[scores={domain=420..421}] at @s run tp @s ~~~~ 0

execute as @s[scores={domain=420..421}] at @s run execute as @a[r=50] at @s run playsound music.perfection @s ~~~ 99999 1 99999

playanimation @s[scores={domain=420..421}] animation.mahito.domain


execute as @s[scores={domain=410,Energy=1..50}] at @s run scoreboard players add @s Energy 200

execute as @s[scores={domain=410..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0


# invincibility during startup
scoreboard players set @s[scores={domain=15..}] infinity 15
scoreboard players set @s[scores={domain=1..}] ProjImmune 50


scoreboard players set @s[scores={domain=1..18,infinity=4..}] infinity 3

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..3},tag=domain_start] remove domain_start
tag @s[scores={domain=1..5},tag=domainlayout] remove domainlayout
execute as @s[scores={domain=7..}] at @s run scoreboard players set @a[r=33] Camera 5


execute as @s[scores={domain=420..421}] at @s run camera @a[r=33] fade time 0 0.1 0 color 0 0 0


# Zoom Out Face Phase
execute as @s[scores={domain=417..418}] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^^1^0.5 facing ~~~
execute as @s[scores={domain=416}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1 in_sine pos ^^-0.25^1.5 facing ~~~


# Zoom Out Hands Phase
execute as @s[scores={domain=390}] at @s run summon ds:perfection_intro_hands ~~~ facing ^^^10

execute as @s[scores={domain=390}] at @s run playsound mob.fuga_hands @a[r=44] ~~~ 99999 1.5 99999
execute as @s[scores={domain=393..394}] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^^-0.25^1.5 facing ^^-0.25^
execute as @s[scores={domain=392..393}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 2.15 in_sine pos ^^-0.25^6.25 facing ^^-0.25^
execute as @s[scores={domain=350..385}] at @s run camerashake add @a[r=44] 0.09 0.08 rotational

execute as @s[scores={domain=350..385}] at @s run  particle ds:mahito_domain_start1 ~~1~
execute as @s[scores={domain=350..385}] at @s run  particle ds:mahito_domain_start2 ~~1~

execute as @s[scores={domain=350}] at @s run camera @a[r=44] fade time 0.1 0.5 1 color 0 0 0
execute as @s[scores={domain=349}] at @s run playsound mob.shock1 @a[r=200] ~~1~ 999999 2 9999999

execute as @s[scores={domain=340}] at @s positioned ~ 400 ~ run summon ds:perfection_intro_hands2 ~~~ facing ~~~5
execute as @s[scores={domain=340}] at @s positioned ~ 400 ~ run particle ds:mahito_intro_sparks3 ~~0.5~
execute as @s[scores={domain=337..340}] at @s positioned ~ 400 ~ run particle ds:mahito_intro_sparks2 ~~0.5~

execute as @s[scores={domain=320..340}] at @s positioned ~ 400 ~ run particle ds:mahito_intro_sparks1 ~~0.5~

execute as @s[scores={domain=340..349}] at @s run camera @a[r=40] set minecraft:free pos ~ 400.55 ~0.75 facing ~ 400.55 ~
execute as @s[scores={domain=300..349}] at @s positioned ~ 400 ~ run tp @e[type=ds:perfection_intro_hands2,c=1] ~~~ facing ~~~5

execute as @s[scores={domain=300..349}] at @s run particle ds:chimera_blackv1 ~~1~
execute as @s[scores={domain=300..319}] at @s run particle ds:chimera_blackv2 ~~1~


execute as @s[scores={domain=290}] at @s run camera @a[r=44] fade time 0.25 1 0.25 color 0 0 0
execute as @s[scores={domain=280..285}] at @s run camera @a[r=44] set minecraft:free pos ^^1^1 facing ~~1~
execute as @s[scores={domain=280..285}] at @s run playanimation @s animation.mahito.domain2

execute as @s[scores={domain=266}] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^^2^-46 facing ^^2^-80
execute as @s[scores={domain=264..265}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 7 in_sine pos ^^^1 facing ^^^
execute as @s[scores={domain=124..125}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1.75 in_out_circ pos ^-1.5^-0.5^7 facing ^^1^-3
execute as @s[scores={domain=258..280}] at @s run playanimation @e[type=ds:perfection_domain,c=1] animation.perfection_domain.start


execute as @s[scores={domain=258}] at @s positioned ^^3^-35 run playsound mob.fuga_hands @a[r=44] ~~~ 99999 0.4 99999
execute as @s[scores={domain=209}] at @s positioned ^^3^-35 run playsound mob.clap @a ~~~ 9999 1 9999
execute as @s[scores={domain=147}] at @s positioned ^^3^-10 run playsound mob.clap @a ~~~ 9999 0.9 9999

execute as @s[scores={domain=82}] at @s run camera @a[r=50] fade time 0.1 0 0.25 color 255 235 255



# barrier
execute as @s[scores={domain=282}] at @s run summon ds:projectile PerfectionBarrier ~~~
execute as @s[scores={domain=282}] at @s run scoreboard players set @e[name=PerfectionBarrier,r=5,c=1] Deleter 550
execute as @s[scores={domain=282}] at @s run scoreboard players set @e[name=PerfectionBarrier,r=5,c=1] Energy 35

# domain placement
execute as @s[scores={domain=280..281}] at @s run tp @s ~~~~ 0
execute as @s[scores={domain=279..281}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=278..280}] at @s run tp @s ~ ~ ~ facing ^^^20


execute as @s[scores={domain=280}] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=277..280}] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=197..200}] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air
execute as @s[scores={domain=277..280}] at @s positioned ~ ~ ~ run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[scores={domain=277..280}] at @s positioned ~ ~ ~ run fill ~33 302 ~33 ~-33 302 ~-33 air

execute as @s[scores={domain=270..275}] at @s run execute as @e[type=ds:perfection_domain] at @s run tp @e[tag=mahito_domain,scores={domain=270..280},c=1] ~~~-25 facing ~~1~
execute as @s[scores={domain=274..276}] at @s run execute as @e[r=47,name=!PerfectionBarrier,type=!item] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=274..276}] at @s run execute as @e[r=47,name=!PerfectionBarrier] at @s run tp @s ~ 301.1 ~

execute as @s[scores={domain=129}] at @s run effect @a[r=33] night_vision 2 1 true


tellraw @s[scores={domain=40}] {"rawtext":[{"text":"§eUse your Idle Transfiguration: Soul Manipulation skills and they will be a guaranteed hit."}]}

execute as @s[scores={domain=280}] at @s run summon ds:perfection_domain ~ 299.85 ~ facing ~ 299.85 ~10 none "perfection_domain"


execute as @s[scores={domain=0..15}] at @s run scoreboard players add @e[type=ds:perfection_domain,name=perfection_domain,r=450,c=1] Deleter 331
execute as @s[scores={domain=0..15}] at @s run scoreboard players operation @e[type=ds:perfection_domain,name=perfection_domain,r=450,c=1] Deleter += @s Energy
execute as @s[scores={domain=0..15}] at @s run scoreboard players operation @s domainactive = @e[type=ds:perfection_domain,name=perfection_domain,r=450,c=1] Deleter

execute as @s[scores={domain=100}] at @s run execute as @a[r=50] at @s run playsound music.mahito_domain2 @s ~~~ 99999 1 99999

execute as @s[scores={domain=271..280}] at @s run scoreboard players set @e[name=PerfectionBarrier,c=1] Deleter 331
execute as @s[scores={domain=270..280}] at @s run scoreboard players operation @e[name=PerfectionBarrier,c=1] Deleter += @s Energy



execute as @s[scores={domain=1..5}] at @s  run scoreboard players set @e[type=ds:perfection_domain,r=50,c=1] Evade 150
execute as @s[scores={domain=1..5}] at @s run camera @a[r=50] clear


