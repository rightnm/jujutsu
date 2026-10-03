
# Startup
execute as @s[scores={domain=1..200}] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 IronMountain


execute as @s[scores={domain=200}] at @s run stopsound @a[r=33]
execute as @s[scores={domain=200}] at @s run kill @e[type=ds:iron_mountain,r=33]
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[r=33,rm=0.2,type=!item,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand] Stun 15
execute as @s[scores={domain=200}] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=200}] at @s run playanimation @a[r=33,rm=0.33,m=!spectator] animation.stunned
execute as @s[scores={domain=200}] at @s run tp @s ~~~~ 0
playanimation @s[scores={domain=200..}] animation.jogo_domain2


execute as @s[scores={domain=170,Energy=1..50}] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=200}] at @s run execute as @a[r=33] at @s run playsound music.jogodomain2 @s ~~~ 100000 1 10000

tag @s[scores={domain=1..190},tag=form7] remove form7
tag @s[scores={domain=1..190},tag=form7b] remove form7b
execute as @s[scores={domain=190..}] at @s run scoreboard players set @e[r=40,scores={domainstart=1..}] domainstart 0

# invincibility during startup
scoreboard players add @s[scores={domain=190..}] infinity 15
scoreboard players add @s[scores={domain=1..}] infinity 1
scoreboard players set @s[scores={domain=1..}] ProjImmune 50


scoreboard players set @s[scores={domain=1..18,infinity=1..}] infinity 0

# misc
execute as @s[scores={domain=1..}] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=form6] remove form6
tag @s[scores={domain=1..5},tag=domainlayout] remove domainlayout
scoreboard players set @s[scores={domain=7..}] Camera 4
execute as @s[scores={domain=7..}] at @s run scoreboard players set @a[r=33] Camera 4


execute as @s[scores={domain=200}] at @s run camera @a[r=33] fade time 1.5 1 1 color 0 0 0


execute as @s[scores={domain=200}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^ ^-0.5 ^5 facing ~~0.25~
execute as @s[scores={domain=199}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.8 in_out_circ pos ^ ^ ^1.5 facing ~~~

# transition to domain
execute as @s[scores={domain=170..}] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=170..}] at @s run particle ds:chimera_blackv1 ~~~
execute as @s[scores={domain=160..170}] at @s run particle ds:chimera_blackv2 ~~~


# barrier
execute as @s[scores={domain=200}] at @s run summon ds:projectile CoffinBarrier ~~~
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[type=ds:projectile,name=CoffinBarrier,c=1,r=3] Deleter 550
execute as @s[scores={domain=200}] at @s run scoreboard players set @e[type=ds:projectile,name=CoffinBarrier,c=1,r=3] Energy 35

# domain placement
execute as @s[scores={domain=161..190}] at @s run tp @s ~~~~ 0
execute as @s[scores={domain=161..167}] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=161..167}] at @s run tp @s ~ ~ ~ facing ^^^20
execute as @s[scores={domain=161}] at @s run tp @s ^^^1.5

execute as @s[scores={domain=164}] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=160..169}] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=160..164}] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=1..60}] at @s positioned ~ ~ ~ run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[scores={domain=1..60}] at @s positioned ~ ~ ~ run fill ~33 302 ~33 ~-33 302 ~-33 air

execute as @s[scores={domain=169}] at @s run execute as @e[r=47,name=!CoffinBarrier,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=163..169}] at @s run execute as @e[r=47,name=!CoffinBarrier,type=!item,type=!xp_orb,type=!arrow,type=!falling_block,type=!ds:lapse_explode,type=!ds:red_reversal,type=!ds:hollow_nuke,type=!ds:limitless_explosion,type=!ds:pressure,type=!ds:energy_explosion,type=!ds:massive_bomb,type=!ds:shrine_dmg,type=!ds:pachinko_impact1,type=!ds:bolt_explode,type=!ds:shikigami_impact,type=!ds:oxrushex,type=!gg:impact_frame,type=!armor_stand,tag=!domainunselect] at @s run tp @s ~ 301.1 ~
execute as @s[scores={domain=169}] at @s run effect @a[r=33] night_vision 2 1 true

execute as @s[scores={domain=150}] at @s run summon ds:iron_mountain "IronMountain" ~ 301.05 ~
execute as @s[scores={domain=148..150}] at @s run playanimation @e[type=ds:iron_mountain,name=IronMountain,c=1,r=50] animation.iron_mountain.form

execute as @s[scores={domain=158..160},type=player] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^^2 rot ~ ~180
execute as @s[scores={domain=158..160}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^^2 rot ~ ~180

execute as @s[scores={domain=60..140}] at @s run camerashake add @a[r=50] 2 0.15


execute as @s[scores={domain=140}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^9^3^-5 facing ^15^-1^-25
execute as @s[scores={domain=139}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1 in_sine pos ^9^3^-5 facing ^12^-1^-25

execute as @s[scores={domain=115}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^7^3^3 facing ^15^7^15
execute as @s[scores={domain=114}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1 in_sine pos ^7^3^3 facing ^15^9^18

execute as @s[scores={domain=85}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^2^3^-6 facing ^15^6^-8
execute as @s[scores={domain=84}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1 in_sine pos ^2^3^-6 facing ^13^4^-8

execute as @s[scores={domain=60}] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^^1 facing ~~~
execute as @s[scores={domain=59}] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1 in_out_circ pos ^4^-1^20 facing ^-2^^1


execute as @s[scores={domain=150}] at @s run scoreboard players add @e[type=ds:iron_mountain,name=IronMountain,c=1,r=50] Deleter 331
execute as @s[scores={domain=150}] at @s run scoreboard players operation @e[type=ds:iron_mountain,name=IronMountain,c=1,r=50] Deleter += @s Energy
execute as @s[scores={domain=149..150}] at @s run scoreboard players operation @s domainactive = @e[type=ds:iron_mountain,name=IronMountain,c=1,r=50] Deleter

execute as @s[scores={domain=158}] at @s run scoreboard players add @e[type=ds:projectile,name=CoffinBarrier,c=1] Deleter 331
execute as @s[scores={domain=158}] at @s run scoreboard players operation @e[type=ds:projectile,name=CoffinBarrier,c=1] Deleter += @s Energy

execute as @s[scores={domain=1..5}] at @s  run scoreboard players set @e[type=ds:iron_mountain,name=IronMountain,c=1,r=50] Evade 150

execute as @s[scores={domain=1..5}] at @s anchored eyes run camera @a[r=33] clear


