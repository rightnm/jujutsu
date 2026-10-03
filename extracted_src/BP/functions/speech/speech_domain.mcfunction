
# Startup
execute as @s[scores={domain=1..200}] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 speech_domain


execute as @s[scores={domain=200}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=200}] at @s run kill @e[type=!item,type=ds:resonant_chamber,r=33]
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[r=33,rm=0.2,type=!item,family=!projectile,family=!despawncito,family=!damage,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 15
execute as @s[scores={domain=200}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=200}] at @s run playanimation @a[r=33,rm=0.33,m=!spectator] animation.stunned
execute as @s[scores={domain=200}] at @s run tp @s ~~~~ 0
playanimation @s[scores={domain=21..}] animation.cursed_speech.domain_hold


execute as @s[scores={domain=170,Energy=1..50}] at @s run scoreboard players add @s Energy 200

execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0


# invincibility during startup
scoreboard players add @s[scores={domain=190..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1
scoreboard players set @s[scores={domain=1..}] ProjImmune 50


scoreboard players set @s[scores={domain=1..18,infinity=!0}] infinity 0

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..3},tag=form12] remove form12
tag @s[scores={domain=1..5},tag=domainlayout] remove domainlayout
scoreboard players set @s[scores={domain=7..}] Camera 4

execute as @s[scores={domain=7..}] at @s run scoreboard players set @a[r=33] Camera 4

tellraw @s[scores={domain=25},type=player] {"rawtext":[{"text":"§e- Use Cursed Speech and the domain will echo your last words every 20 seconds..."}]}


execute as @s[scores={domain=200..}] at @s run camera @a[r=33] fade time 0 0.1 0.25 color 0 0 0

execute as @s[scores={domain=200..}] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ^^-1^3 facing ~~~
execute as @s[scores={domain=199..}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 1.5 in_out_circ pos ^^-0.5^2 facing ~~~

execute as @s[scores={domain=160..161}] at @s run camera @a[r=33] fade time 0.4 2 0.5 color 0 0 0
execute as @s[scores={domain=145..146}] at @s anchored eyes run camera @a[r=44] set minecraft:free pos ~ ~60 ~ facing ^^90^0.1
execute as @s[scores={domain=143..144}] at @s anchored eyes run camera @a[r=44] set minecraft:free ease 7 in_expo pos ~ ~6 ~ facing ^^90^-0.1
execute as @s[scores={domain=30}] at @s anchored eyes run camera @a[r=44] fade time 1 1 1 color 0 0 0

# transition to domain
execute as @s[scores={domain=190}] at @s run playsound mob.wither.shoot @a[r=200] ~~1~ 999999 0.15 9999999


# barrier
execute as @s[scores={domain=200}] at @s run summon ds:projectile SpeechBarrier ~~~
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[type=ds:projectile,name=SpeechBarrier,r=5,c=1] Deleter 550
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[type=ds:projectile,name=SpeechBarrier,r=5,c=1] Energy 35

# domain placement
execute as @s[scores={domain=154..155}] at @s run tp @s ~~~~ 0
execute as @s[scores={domain=149..155}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=148..149}] at @s run tp @s ~ ~ ~ facing ^^^20


execute as @s[scores={domain=150}] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=140..160}] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=130..149}] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=1..130}] at @s positioned ~ ~ ~ run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[scores={domain=1..130}] at @s positioned ~ ~ ~ run fill ~33 302 ~33 ~-33 302 ~-33 air

execute as @s[scores={domain=150..152}] at @s run execute as @e[r=47,name=!SpeechBarrier,type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=150..152}] at @s run execute as @e[r=47,name=!SpeechBarrier,type=!item,family=!disappear,type=!xp_orb,type=!arrow,type=!thrown_trident,type=!fireball,type=!dragon_fireball,type=!small_fireball,type=!fireworks_rocket,type=!fishing_hook,type=!splash_potion,type=!area_effect_cloud,type=!snowball,type=!egg,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!domainunselect] at @s run tp @s ~ 301.1 ~
execute as @s[scores={domain=149}] at @s run effect @a[r=33] night_vision 2 1 true



execute as @s[scores={domain=150}] at @s run summon ds:resonant_chamber "speech_domain" ~ 299.85 ~
execute as @s[scores={domain=148}] at @s run scoreboard players add @e[type=ds:resonant_chamber,name=speech_domain,r=50,c=1] Deleter 331
execute as @s[scores={domain=148}] at @s run scoreboard players operation @e[type=ds:resonant_chamber,name=speech_domain,r=50,c=1] Deleter += @s Energy
execute as @s[scores={domain=147..148}] at @s run scoreboard players operation @s domainactive = @e[type=ds:resonant_chamber,name=speech_domain,r=50,c=1] Deleter

execute as @s[scores={domain=148}] at @s run scoreboard players add @e[type=ds:projectile,name=SpeechBarrier,c=1] Deleter 331
execute as @s[scores={domain=148}] at @s run scoreboard players operation @e[type=ds:projectile,name=SpeechBarrier,c=1] Deleter += @s Energy

execute as @s[scores={domain=1..5}] at @s  run scoreboard players set @e[type=ds:resonant_chamber,r=50,c=1] Evade 150

execute as @s[scores={domain=1..5}] at @s anchored eyes run camera @a[r=33] clear


