tp @s ~~~

tag @s[scores={Deleter=199..},tag=!GojoProj] add GojoProj
tag @s[scores={Deleter=199..},tag=!Frames] add Frames

execute as @s[scores={Deleter=1..3}] at @s run tickingarea remove bluecore
execute as @s[scores={Deleter=4..}] at @s run tickingarea add ~66 ~ ~66 ~-66 ~ ~-66 bluecore


execute as @s[scores={Deleter=199..201}] at @s run particle ds:lapse_pull4
execute as @s[scores={Deleter=7..8}] at @s run particle ds:lapse_pull4

execute as @s[scores={Deleter=11..12}] at @s run playsound beacon.deactivate @a[r=100] ~~~ 9999 0.75 9999

execute as @s[scores={Deleter=50..}] at @s run playsound beacon.ambient @a[r=100] ~~~ 9999 0.5 9999

execute as @s[scores={Deleter=3..199}] at @s run particle ds:blue_phase1 ~~-1~
execute as @s[scores={Deleter=3..199}] at @s run particle ds:blue_phase2 ~~-1~
execute as @s[scores={Deleter=3..199}] at @s run particle ds:blue_phase3 ~~-1~
execute as @s[scores={Deleter=3..199}] at @s run particle ds:blue_phase5 ~~-1~
execute as @s[scores={Deleter=3..199}] at @s run particle ds:lapse_energy3 ~~-1~

execute as @s[scores={Deleter=3..199}] at @s run execute as @s if entity @e[name=phasered,r=5] run function limitless/improvised_purple_activate
execute as @s[scores={Deleter=3..199}] at @s run execute as @s if entity @e[name=Reversal,r=5] run function limitless/improvised_purple_activate

execute as @s[scores={Deleter=3..199}] at @s run execute as @e[r=9,family=projectile,tag=!GojoProj,name=!ReversalTRG,tag=!Frames] at @s run tp @s ^^^0.5 facing @e[name="Blue Core",c=1]
execute as @s[scores={Deleter=3..199}] at @s if entity @e[r=9,family=projectile,tag=!GojoProj,name=!ReversalTRG,tag=!Frames] at @s run kill @e[family=projectile,name=!ReversalTRG,name=!"Blue Core",r=0.5,tag=!GojoProj,tag=!Frames]


execute as @s[scores={Deleter=1000},tag=improvisedpurple] at @s run playsound mob.blitz2 @a[r=500] ~~~ 99999 0.7 99999
execute as @s[scores={Deleter=1000},tag=improvisedpurple] at @s run playsound music.improvisedpurple1 @a[r=500] ~~~ 99999 0.7 99999
execute as @s[scores={Deleter=950},tag=improvisedpurple] at @s run playsound music.improvisedpurple2 @a[r=500] ~~~ 99999 0.8 99999
execute as @s[scores={Deleter=950},tag=improvisedpurple] at @s run playsound music.bassboost @a[r=500] ~~~ 99999 0.65 99999

execute as @s[scores={Deleter=950},tag=improvisedpurple] at @s run stopsound @a[r=300] music.nuke

execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run playsound mob.electricity @a[r=100] ~~~ 99999 3 99999
execute as @s[scores={Deleter=952..990},tag=improvisedpurple] at @s run particle ds:improvised_purple1 
execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run particle ds:improvised_purple2 
execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run particle ds:improvised_purple3
execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run particle ds:improvised_purple4 
execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run particle ds:improvised_purple5 
execute as @s[scores={Deleter=952..},tag=improvisedpurple] at @s run particle ds:improvised_purple6 
execute as @s[scores={Deleter=980..990},tag=improvisedpurple] at @s run particle ds:improvised_purple7
execute as @s[scores={Deleter=940..990},tag=improvisedpurple] at @s run particle ds:improvised_purple8

execute as @s[scores={Deleter=961..},tag=improvisedpurple] at @s run camerashake add @a[r=50] 0.15 0.1
execute as @s[scores={Deleter=950..960},tag=improvisedpurple] at @s run camerashake add @a[r=50] 0.5 0.1
execute as @s[scores={Deleter=940..950},tag=improvisedpurple] at @s run particle ds:improvised_purple7
execute as @s[scores={Deleter=965},tag=improvisedpurple] at @s run particle ds:improvised_purple_wave
execute as @s[scores={Deleter=958},tag=improvisedpurple] at @s run particle ds:improvised_purple_start1

execute as @s[scores={Deleter=940..950},tag=improvisedpurple] at @s run camerashake add @a[r=50] 2 0.1
execute as @s[scores={Deleter=944},tag=improvisedpurple] at @s run camera @a[r=60] fade time 0.25 0.8 1 color 255 255 255
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end1
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end2
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end3
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end4
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end5
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run particle ds:improvised_purple_end8
execute as @s[scores={Deleter=950},tag=improvisedpurple] at @s run particle ds:improvised_purple_shockwave
execute as @s[scores={Deleter=940},tag=improvisedpurple] at @s run particle ds:improvised_purple_shockwave
execute as @s[scores={Deleter=960..985},tag=improvisedpurple] at @s run particle ds:improvised_purple_end7
execute as @s[scores={Deleter=940..947},tag=improvisedpurple] at @s run particle ds:improvised_purple_end6
execute as @s[scores={Deleter=940..948},tag=improvisedpurple] at @s run particle ds:hollow_impact
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run execute as @e[scores={wheelactive=1..},r=50,tag=!Frames] at @s positioned ~~1~ run function damages/deletion_damage
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run execute as @e[family=mahoraga,r=50,tag=!Frames] at @s positioned ~~1~ run function damages/deletion_damage
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run damage @e[tag=!Frames,r=50,tag=!limitless,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] 300 
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run damage @e[tag=!Frames,r=50,tag=limitless,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] 100
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run scoreboard players set @e[tag=!Frames,r=50,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] Stun 30
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run scoreboard players set @e[tag=!Frames,r=50,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] Hit 10
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run scoreboard players set @e[tag=!Frames,r=50,type=!item,type=!xp_orb,family=!damage,family=!projectile,type=!ds:projectile,type=!arrow,family=!despawncito,tag=!unselect,type=!armor_stand] Evade 50
execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s if entity @e[tag=griefable] run function 23x23sphere
execute as @s[scores={Deleter=860..945},tag=improvisedpurple] at @s if entity @e[tag=griefable]  run fill ~5~5~5 ~-5~-5~-5 air
execute as @s[scores={Deleter=860..945},tag=improvisedpurple] at @s if entity @e[tag=griefable]  positioned ~~-21~ run fill ~2~2~2 ~-2~-2~-2 air


execute as @s[scores={Deleter=945},tag=improvisedpurple] at @s run scoreboard players set @e[tag=limitless,scores={ability7=1..},c=1] ability7 3000
execute as @s[scores={Deleter=946..990},tag=improvisedpurple] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=1..55}] run scoreboard players set @s Energy 0
execute as @s[scores={Deleter=946..990},tag=improvisedpurple] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=56..}] run scoreboard players remove @s Energy 56
execute as @s[scores={Deleter=951..990},tag=improvisedpurple,tag=!downgrade] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run stopsound @a[r=200]
execute as @s[scores={Deleter=951..990},tag=improvisedpurple,tag=!downgrade] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] as @e[scores={Deleter=951..990},tag=improvisedpurple,c=1] at @s run function limitless/improvised_purple_small
execute as @s[scores={Deleter=951..990},tag=improvisedpurple,tag=!downgrade] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run scoreboard players set @e[scores={Deleter=951..990},tag=improvisedpurple,c=1] Deleter 3

scoreboard players set @s[scores={Deleter=865..867},tag=improvisedpurple] Deleter 3


execute as @s[tag=hollownuke,scores={Deleter=2000}]  at @s run execute as @a[r=150] at @s run playsound music.nuke @s ~~~ 1 0.4
execute as @s[tag=hollownuke,scores={Deleter=2000}]  at @s run execute as @a[r=150] at @s run playsound music.distort1 @s ~~~ 1 0.75
execute as @s[tag=hollownuke,scores={Deleter=2000}]  at @s run particle ds:improvised_purple_shockwave
execute as @s[tag=hollownuke,scores={Deleter=2000}]  at @s run particle ds:improvised_purple_start1
execute as @s[tag=hollownuke,scores={Deleter=2000}]  at @s run camerashake add @a[r=100] 4 0.15
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run playsound mob.electricity @a[r=100] ~~~ 99999 2 99999
execute as @s[scores={Deleter=1995..},tag=hollownuke] at @s run particle ds:hollow_purple7 ~~-2.8~
execute as @s[scores={Deleter=1995..},tag=hollownuke] at @s run particle ds:hollow_purple8 ~~-2.8~
execute as @s[scores={Deleter=1975},tag=hollownuke] at @s run particle ds:improvised_purple_wave
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple1 
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple2 
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple3
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple4 
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple5 
execute as @s[scores={Deleter=1960..1990},tag=hollownuke] at @s run particle ds:improvised_purple6 
execute as @s[scores={Deleter=1980..1990},tag=hollownuke] at @s run particle ds:improvised_purple7
execute as @s[scores={Deleter=1940..1990},tag=hollownuke] at @s run particle ds:improvised_purple8

execute as @s[scores={Deleter=1935..},tag=hollownuke] at @s run camerashake add @a[r=150] 0.15 0.1

execute as @s[scores={Deleter=1785..1835},tag=hollownuke] at @s run camerashake add @a[r=150] 4 0.25 rotational

execute as @s[scores={Deleter=1960},tag=hollownuke] at @s run camerashake add @a[r=150] 4 0.15
execute as @s[scores={Deleter=1960},tag=hollownuke] at @s run camera @a[r=150] fade time 0 0 0.25 color 200 0 200
execute as @s[scores={Deleter=1960},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort1 @s ~~~ 1 1
execute as @s[scores={Deleter=1960},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort3 @s ~~~ 1 0.5
execute as @s[scores={Deleter=1960},tag=hollownuke] at @s run particle ds:improvised_purple_shockwave
execute as @s[scores={Deleter=1955..1962},tag=hollownuke] at @s run particle ds:hollow_purple7 ~~-2.8~
execute as @s[scores={Deleter=1955..1962},tag=hollownuke] at @s run particle ds:hollow_purple8 ~~-2.8~

execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple1 ~~-2.8~
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple2 ~~-2.8~
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple3 ~~-2.8~
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple4 ~~-2.8~
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple5 ~~-2.8~ 
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple6 ~~-2.8~ 
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:hollow_purple7 ~~-2.8~ 
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:improvised_purple6 
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:improvised_purple7
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:improvised_purple8
execute as @s[scores={Deleter=1910..1957},tag=hollownuke] at @s run particle ds:improvised_purple_end7

execute as @s[scores={Deleter=1909},tag=hollownuke] at @s run camerashake add @a[r=150] 4 0.25
execute as @s[scores={Deleter=1909},tag=hollownuke] at @s run camera @a[r=150] fade time 0 0 0.35 color 200 0 200
execute as @s[scores={Deleter=1909},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort1 @s ~~~ 1 1
execute as @s[scores={Deleter=1909},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort3 @s ~~~ 1 0.35
execute as @s[scores={Deleter=1909},tag=hollownuke] at @s run particle ds:improvised_purple_shockwave
execute as @s[scores={Deleter=1905..1911},tag=hollownuke] at @s run particle ds:hollow_purple7 ~~-2.8~
execute as @s[scores={Deleter=1905..1911},tag=hollownuke] at @s run particle ds:hollow_purple8 ~~-2.8~

execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple1 ~~~
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple2 ~~~
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple3 ~~~
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple4 ~~~
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple5 ~~~ 
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple6 ~~~ 
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:nuke_purple7 ~~~ 
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:hollow_purple7 ~~-2.8~ 
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:improvised_purple6 
execute as @s[scores={Deleter=1880..1909},tag=hollownuke] at @s run particle ds:improvised_purple7
execute as @s[scores={Deleter=1860..1909},tag=hollownuke] at @s run particle ds:improvised_purple8
execute as @s[scores={Deleter=1890..1909},tag=hollownuke] at @s run particle ds:improvised_purple_end7
execute as @s[scores={Deleter=1888},tag=hollownuke] at @s run particle ds:improvised_purple_start2
execute as @s[scores={Deleter=1878},tag=hollownuke] at @s run particle ds:improvised_purple_wave
execute as @s[scores={Deleter=1888},tag=hollownuke] at @s run particle ds:improvised_purple_wave
execute as @s[scores={Deleter=1868},tag=hollownuke] at @s run particle ds:improvised_purple_wave
execute as @s[scores={Deleter=1890..1909},tag=hollownuke] at @s run particle ds:nuke_purple_glow1
execute as @s[scores={Deleter=1850..1909},tag=hollownuke] at @s run particle ds:nuke_purple_glow2

execute as @s[scores={Deleter=1845},tag=hollownuke] at @s run particle ds:nuke_purple_end1
execute as @s[scores={Deleter=1845},tag=hollownuke] at @s run particle ds:improvised_purple_shockwave
execute as @s[scores={Deleter=1830..1845},tag=hollownuke] at @s run particle ds:nuke_purple_end2
execute as @s[scores={Deleter=1830..1833},tag=hollownuke] at @s run particle ds:nuke_purple_end3
execute as @s[scores={Deleter=1830},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort4 @s ~~~ 1 0.85
execute as @s[scores={Deleter=1845},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.distort2 @s ~~~ 1 1.25
execute as @s[scores={Deleter=1840},tag=hollownuke] at @s run execute as @a[r=150] at @s run playsound music.bassboost @s ~~~ 1 0.4
execute as @s[scores={Deleter=1830..1835},tag=hollownuke] at @s run camerashake add @a[r=250] 4 0.1 

execute as @s[scores={Deleter=1825},tag=hollownuke] at @s run execute as @a[r=250] at @s run playsound music.improvisedpurple2 @s ~~~ 1 0.5
execute as @s[scores={Deleter=1825},tag=hollownuke] at @s run execute as @a[r=250] at @s run camera @a[r=250] fade time 0.5 1.5 1 color 255 215 255

execute as @s[scores={Deleter=1798..1845},tag=hollownuke] at @s run scoreboard players set @a[r=100] Camera 7
execute as @s[scores={Deleter=1828..1845},tag=hollownuke] at @s run camera @a[r=80] set minecraft:free pos ^25 ^15 ^25 facing ~~~
execute as @s[scores={Deleter=1833},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title 
execute as @s[scores={Deleter=1832},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title 
execute as @s[scores={Deleter=1831},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title 
execute as @s[scores={Deleter=1830},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title 
execute as @s[scores={Deleter=1829},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title 
execute as @s[scores={Deleter=1829},tag=hollownuke] at @s run title @a[r=80,tag=!impactframesoff] title §l

execute as @s[scores={Deleter=1810..1825},tag=hollownuke] at @s run particle ds:improvised_purple_end2
execute as @s[scores={Deleter=1810..1825},tag=hollownuke] at @s run particle ds:improvised_purple_end3
execute as @s[scores={Deleter=1810..1825},tag=hollownuke] at @s run particle ds:limitless_explode1
execute as @s[scores={Deleter=1810..1825},tag=hollownuke] at @s run particle ds:limitless_explode2
execute as @s[scores={Deleter=1810..1825},tag=hollownuke] at @s run particle ds:limitless_explode3
execute as @s[scores={Deleter=1825},tag=hollownuke] at @s run particle ds:improvised_purple_end1
execute as @s[scores={Deleter=1820},tag=hollownuke] at @s run particle ds:nuke_purple_explode1
execute as @s[scores={Deleter=1800},tag=hollownuke] at @s run particle ds:nuke_purple_explode2
execute as @s[scores={Deleter=1800},tag=hollownuke] at @s run particle ds:nuke_purple_explode3
execute as @s[scores={Deleter=1827},tag=hollownuke] at @s run  damage @e[r=150,tag=!limitless] 700 override
execute as @s[scores={Deleter=1827},tag=hollownuke] at @s run  damage @e[r=150,tag=limitless] 220 override
execute as @s[scores={Deleter=1780..1822},tag=hollownuke] at @s run kill @e[type=item,r=150]
execute as @s[scores={Deleter=1780..1822},tag=hollownuke] at @s run kill @e[type=xp_orb,r=150]

execute as @s[scores={Deleter=1820},tag=hollownuke] at @s if entity @e[tag=griefable] run function 32x32sphere
execute as @s[scores={Deleter=1600..1830},tag=hollownuke] at @s if entity @e[tag=griefable] run fill ~5~5~5~-5~-5~-5 air


execute as @s[scores={Deleter=1945},tag=hollownuke] at @s run scoreboard players set @e[tag=limitless,scores={ability7=1..},c=1] ability7 8000
execute as @s[scores={Deleter=1890..1990},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=1..54}] run scoreboard players set @s Energy 0
execute as @s[scores={Deleter=1890..1990},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=55..}] run scoreboard players remove @s Energy 55
execute as @s[scores={Deleter=1851..1889},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=1..24}] run scoreboard players set @s Energy 0
execute as @s[scores={Deleter=1851..1889},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] at @s if entity @s[type=player,scores={Energy=25..}] run scoreboard players remove @s Energy 25

execute as @s[scores={Deleter=1946..1990},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run stopsound @a[r=200]
execute as @s[scores={Deleter=1946..1990},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] as @e[scores={Deleter=1946..1990},tag=hollownuke,c=1] at @s run function limitless/improvised_purple_small
execute as @s[scores={Deleter=1891..1944},tag=hollownuke,tag=!improvisedpurple] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run tag @e[scores={Deleter=1891..1944},tag=hollownuke,tag=!improvisedpurple,c=1] add improvisedpurple
execute as @s[scores={Deleter=1891..1944},tag=hollownuke,tag=!downgrade] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run tag @e[scores={Deleter=1891..1944},tag=hollownuke,tag=!downgrade,c=1] add downgrade
execute as @s[scores={Deleter=1891..1944},tag=hollownuke,tag=improvisedpurple] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run tag @e[scores={Deleter=1891..1944},tag=hollownuke,tag=improvisedpurple,c=1] remove hollownuke
execute as @s[scores={Deleter=1891..1944},tag=improvisedpurple,tag=downgrade] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run scoreboard players set @e[scores={Deleter=1891..1944},tag=improvisedpurple,tag=downgrade,c=1] Deleter 966
execute as @s[scores={Deleter=1946..1990},tag=hollownuke] at @s run execute as @e[tag=limitless,scores={ability7=1..},c=1] if entity @s[type=player,scores={Energy=0..2}] run scoreboard players set @e[scores={Deleter=1946..1990},tag=hollownuke,c=1] Deleter 3


execute as @s[scores={Deleter=1945}] run tellraw @a {"rawtext":[{"text": "§f> §l§dɴɪɴᴇ ʀᴏᴘᴇꜱ"}]}
execute as @s[scores={Deleter=1925}] run  tellraw @a {"rawtext":[{"text": "§f> §l§dᴘᴏʟᴀʀɪᴢᴇᴅ ʟɪɢʜᴛ"}]}
execute as @s[scores={Deleter=1910}] run  tellraw @a {"rawtext":[{"text": "§f> §l§dᴄʀᴏᴡ ᴀɴᴅ ᴅᴇᴄʟᴀʀᴀᴛɪᴏɴ,"}]} 
execute as @s[scores={Deleter=1890}] run  tellraw @a {"rawtext":[{"text": "§f> §l§dʙᴇᴛᴡᴇᴇɴ ꜰʀᴏɴᴛ ᴀɴᴅ ʙᴀᴄᴋ..."}]} 
execute as @s[scores={Deleter=1870}]  run tellraw @a {"rawtext":[{"text": "§f> §l§dʜᴏʟʟᴏᴡ..."}]} 
execute as @s[scores={Deleter=1850}]  run tellraw @a {"rawtext":[{"text": "§f> §o§l§5ᴘᴜʀᴘʟᴇ!"}]} 


scoreboard players set @s[scores={Deleter=1648..1650},tag=hollownuke] Deleter 3