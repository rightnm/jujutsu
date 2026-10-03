
# Startup
execute as @s[scores={domain=1..340},tag=lightning] at @s positioned ~ ~ ~-0 run tickingarea add ~30 ~ ~30 ~-30 ~ ~-30 kashimodomain

execute as @s[scores={domain=340},tag=lightning] at @s run stopsound @a[r=33]
execute as @s[scores={domain=340},tag=lightning] at @s run kill @e[type=!item,type=ds:projectile,r=33]
execute as @s[scores={domain=340},tag=lightning] at @s run scoreboard players set @e[r=33,rm=0.2,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] Stun 15
execute as @s[scores={domain=340},tag=lightning] at @s run scoreboard players set @a[r=33,rm=0.33,scores={move=4..}] move 3
execute as @s[scores={domain=340},tag=lightning] at @s run playanimation @a[r=33,rm=0.33] animation.stunned
execute as @s[scores={domain=340},tag=lightning] at @s run tp @s @s
playanimation @s[scores={domain=340..},tag=lightning] animation.kashimo_domain2

execute as @s[scores={domain=310,Energy=1..50},tag=lightning] at @s run scoreboard players add @s Energy 200
execute as @s[scores={domain=190},tag=lightning] at @s run playsound music.storm @a[r=33] ~~~ 100000 1 10000

tag @s[scores={domain=1..330},tag=form6] remove form6
tag @s[scores={domain=1..330},tag=form6b] remove form6b
execute as @s[scores={domain=330..}] at @s run scoreboard players set @e[r=40,type=!item,scores={domainstart=1..}] domainstart 0

# invincibility during startup
scoreboard players add @s[scores={domain=320..},tag=lightning] infinity 15
scoreboard players add @s[scores={domain=1..},tag=lightning] infinity 1
scoreboard players set @s[scores={domain=1..},tag=lightning] ProjImmune 50


scoreboard players set @s[scores={domain=1..18},tag=lightning] infinity 0

# misc
execute as @s[scores={domain=1..},tag=lightning] at @s run scoreboard players set @a[r=33] Stun 5
tag @s[scores={domain=1..},tag=lightning,tag=form6] remove form6
tag @s[scores={domain=1..5},tag=lightning,tag=domainlayout] remove domainlayout
scoreboard players set @s[scores={domain=1..},tag=lightning] Camera 4

execute as @s[scores={domain=301},tag=lightning] at @s run playsound beacon.power @a[r=50] ~~~ 999999 1.3 999999
execute as @s[scores={domain=301},tag=lightning] at @s run particle ds:electro_carve1 ~~1~
execute as @s[scores={domain=301},tag=lightning] at @s run particle ds:electro_carve1 ~~1~
execute as @s[scores={domain=301},tag=lightning] at @s run particle ds:electro_carve1 ~~1~



execute as @s[scores={domain=300},tag=lightning] at @s run camera @a[r=33] fade time 0 0.15 0.5 color 15 15 15

execute as @s[scores={domain=320},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.5 in_sine pos ^^^2 rot ~ ~180


# transition to domain
execute as @s[scores={domain=240},tag=lightning] at @s run camera @a[r=33] fade time 2 1 1 color 15 15 15
execute as @s[scores={domain=60},tag=lightning] at @s run camera @a[r=33] fade time 2 1 1 color 15 15 15
execute as @s[scores={domain=280..300},tag=lightning] at @s run playsound elytra.loop @a[r=50] ~~~ 999999 1.3 999999
execute as @s[scores={domain=280..300},tag=lightning] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 999999 0.5 999999
execute as @s[scores={domain=200..300},tag=lightning] at @s run particle ds:kashimo_domain_start1 ~~~
execute as @s[scores={domain=200..300},tag=lightning] at @s run particle ds:kashimo_domain_start1 ~~~
execute as @s[scores={domain=200..300},tag=lightning] at @s run particle ds:kashimo_domain_start2 ~~~

execute as @s[scores={domain=200..250},tag=lightning] at @s run particle ds:kashimo_domain4 ~~~
execute as @s[scores={domain=200..250},tag=lightning] at @s run particle ds:kashimo_domain6 ~~~

# barrier
execute as @s[scores={domain=200},tag=lightning] at @s run summon ds:projectile StormBarrier ~~~
execute as @s[scores={domain=200},tag=lightning] at @s run scoreboard players set @e[type=!item,name=StormBarrier] Deleter 550
execute as @s[scores={domain=200},tag=lightning] at @s run scoreboard players set @e[type=!item,name=StormBarrier] Energy 35

# domain placement
execute as @s[scores={domain=161..190},tag=lightning] at @s run tp @s @s
execute as @s[scores={domain=161..189},tag=lightning] at @s run tp @s ~ ~ ~ facing ~ ~ ~1
execute as @s[scores={domain=161..189},tag=lightning] at @s run tp @s ~ ~ ~ facing ^^^20
execute as @s[scores={domain=187},tag=lightning] at @s run tp @s ^^^1.5

execute as @s[scores={domain=184},tag=lightning] at @s positioned ~ ~ ~-0 run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air

execute as @s[scores={domain=160..189},tag=lightning] at @s positioned ~ ~ ~ run fill ~33 300 ~33 ~-33 300 ~-33 barrier [] replace air
execute as @s[scores={domain=160..184},tag=lightning] at @s positioned ~ ~ ~ run fill ~30 ~-1 ~30 ~-30 ~-1 ~-30 barrier [] replace air

execute as @s[scores={domain=1..60},tag=lightning] at @s positioned ~ ~ ~ run fill ~33 301 ~33 ~-33 301 ~-33 air
execute as @s[scores={domain=1..60},tag=lightning] at @s positioned ~ ~ ~ run fill ~33 302 ~33 ~-33 302 ~-33 air

execute as @s[scores={domain=189},tag=lightning] at @s run execute as @e[type=!item,r=47,name=!StormBarrier,tag=!domainunselect] at @s run tp @s ~ 301.1 ~-0
execute as @s[scores={domain=183..189},tag=lightning] at @s run execute as @e[type=!item,r=47,name=!StormBarrier,tag=!domainunselect] at @s run tp @s ~ 301.1 ~
execute as @s[scores={domain=189},tag=lightning] at @s run effect @e[r=33,type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback] night_vision 2 1 true

execute as @s[scores={domain=189},tag=lightning] at @s run summon ds:projectile StormDomain ~ 298.85 ~

execute as @s[scores={domain=191..220},tag=lightning,type=player] at @s anchored eyes run camera @s set minecraft:free pos ^^^2 rot ~ ~180
execute as @s[scores={domain=191..220},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free pos ^^^2 rot ~ ~180

execute as @s[scores={domain=193},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 0.75 in_out_circ pos ^^15^10 facing @s

execute as @s[scores={domain=189},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.3 in_sine pos ^-15^15^ facing @s
execute as @s[scores={domain=148},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 2.3 in_sine pos ^^19^-15 facing @s
execute as @s[scores={domain=107},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease  2.3 in_sine  pos ^15^10^ facing @s
execute as @s[scores={domain=66},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease 1.3 in_sine pos ^^^15  facing @s
execute as @s[scores={domain=50},tag=lightning] at @s anchored eyes run camera @a[r=33] set minecraft:free ease  2.3 in_out_circ pos ^^^5 rot ~ ~180

execute as @s[scores={domain=188},tag=lightning] at @s run scoreboard players add @e[type=ds:projectile,name=StormDomain,c=1] Deleter 331
execute as @s[scores={domain=188},tag=lightning] at @s run scoreboard players operation @e[type=ds:projectile,name=StormDomain,c=1] Deleter += @s Energy
execute as @s[scores={domain=187..188},tag=lightning] at @s run scoreboard players operation @s domainactive = @e[type=ds:projectile,name=StormDomain,c=1] Deleter

execute as @s[scores={domain=188},tag=lightning] at @s run scoreboard players add @e[type=!item,name=StormBarrier,c=1] Deleter 331
execute as @s[scores={domain=188},tag=lightning] at @s  run scoreboard players operation @e[type=!item,name=StormBarrier,c=1] Deleter += @s Energy

execute as @s[scores={domain=1..5},tag=lightning] at @s anchored eyes run camera @a[r=33] clear


