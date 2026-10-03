execute as @s positioned ~~14~ run fill ~15~15~15~-15~-15~-15 air [] replace barrier
fill ~15~15~15~-15~-15~-15 air [] replace barrier
fill ~15~15~15 ~-15~~-15 air [] replace barrier
camera @a[r=50] fade time 0 1 0.5 color 0 0 0 
scoreboard players set @e[r=250,scores={domainactive=!0}] domainactive 0
stopsound @a music.malevolent_kitchen
stopsound @a music.malevolent_kitchen2
stopsound @a music.incomplete_shrine
playsound mob.wither.death @a[r=1000] ~~~ 999999 0.6 999999
particle ds:malevolent_appear1 ~~7.5~
particle ds:malevolent_appear2 ~~7.5~
particle ds:malevolent_appear3 ~~7.5~
particle ds:malevolent_appear4 ~~7.5~
particle ds:malevolent_appear5 ~~7.5~
particle ds:malevolent_appear6 ~~7.5~
scriptevent ds:shockwave_stop
particle ds:malevolent_kitchen_orbs2 ~~7.5~
gamerule dotiledrops true
tag @e[tag=mahoraga_shrine_cutscene] remove mahoraga_shrine_cutscene
tp @s ~~-200~
kill @e[family=projectile,r=50]