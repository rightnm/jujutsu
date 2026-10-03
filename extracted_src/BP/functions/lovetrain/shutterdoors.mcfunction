playanimation @s[tag=!closing,scores={Deleter=38..},tag=!slicingdoor] animation.shutter_doors.appear1
playanimation @s[tag=!closing,scores={Deleter=38..},tag=slicingdoor] animation.shutter_doors.appear2
execute as @s at @s run tp @s ~~~
execute as @s[tag=!slicingdoor,tag=!closing] at @s run tp @s ^^^1.33

execute as @s[tag=!slicingdoor,scores={Deleter=1..3}] at @s run tp @s ~~-40~
effect @s[scores={Deleter=1..3}] invisibility 1 1 true

execute as @s[tag=!slicingdoor,scores={Deleter=4..}] at @s unless block ^^^1.5 air unless block ^^^1.5 tallgrass unless block ^^^1.5 double_plant run scoreboard players set @s Deleter 3

execute as @s[tag=!slicingdoor,tag=!closing,scores={Deleter=1..}] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=2.25] run scoreboard players set @s Deleter 51
execute as @s[tag=!slicingdoor,tag=!closing,scores={Deleter=1..}] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,type=!arrow,type=!armor_stand,type=!ds:projectile,r=2.25] run tag @s add closing

playanimation @s[tag=closing,scores={Deleter=49..},tag=!closing2] animation.shutter_doors.close
playanimation @s[tag=closing,scores={Deleter=52..},tag=closing2] animation.shutter_doors.appear_close


tag @s[scores={Deleter=49..}] add closing
execute as @s[tag=!slicingdoor,scores={Deleter=45}] at @s run function damages/slash_damage
execute as @s[tag=!slicingdoor,scores={Deleter=46},tag=closing] at @s run scoreboard players random @s chance 1 100
execute as @s[tag=!slicingdoor,scores={Deleter=46},tag=closing] at @s if entity @p[scores={chance=6969},r=100] run scoreboard players set @s chance 100
execute as @s[tag=!slicingdoor,scores={Deleter=45,chance=1..98},tag=closing] at @s run playsound mob.metal1 @a[r=100] ~~~ 99999 1.25 99999
execute as @s[tag=!slicingdoor,scores={Deleter=45,chance=99..},tag=closing] at @s run playsound mob.metal2 @a[r=100] ~~~ 99999 1 99999
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run playsound random.anvil_land @a ~~~ 1 0.85
execute as @s[tag=!slicingdoor,scores={Deleter=1..45},tag=closing] at @s run tp @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=5,tag=Big] ~~-0.9~
execute as @s[tag=!slicingdoor,scores={Deleter=1..45},tag=closing] at @s run tp @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] ~~-0.9~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors1] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] 10 entity_attack entity @s
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors2] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] 17 entity_attack entity @s
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors3] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] 22 entity_attack entity @s
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors4] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] 30 entity_attack entity @s
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] Stun 25
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] Evade 14
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=2.25] Hit 3


execute as @s[tag=!slicingdoor,type=ds:shutterdoors3] at @s run particle ds:golden_door ~~~
execute as @s[tag=!slicingdoor,type=ds:shutterdoors4] at @s run particle ds:rainbow_door ~~~

execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run particle ds:heavy_impact1 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run particle ds:heavy_impact2 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run particle ds:heavy_impact3 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run particle ds:dirt2 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing] at @s run particle ds:ground_slam2 ~~~

execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors1] at @s run particle ds:doorcrash_green1~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors1] at @s run particle ds:doorcrash_green2~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors1] at @s run particle ds:doorcrash_green3~~~

execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors2] at @s run particle ds:doorcrash_red1~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors2] at @s run particle ds:doorcrash_red2~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors2] at @s run particle ds:doorcrash_red3~~~

execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors3] at @s run particle ds:doorcrash_gold1~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors3] at @s run particle ds:doorcrash_gold2~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors3] at @s run particle ds:doorcrash_gold3~~~

execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors4] at @s run particle ds:doorcrash_rainbow1 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors4] at @s run particle ds:doorcrash_rainbow2 ~~~
execute as @s[tag=!slicingdoor,scores={Deleter=45},tag=closing,type=ds:shutterdoors4] at @s run particle ds:doorcrash_rainbow3 ~~~


execute as @s[tag=slicingdoor] at @s run tp @s ^^^1.44

execute as @s[tag=slicingdoor] at @s unless block ~~-0.2~ air run particle ds:skid_sparks1 ^^^-6.4


execute as @s[tag=slicingdoor,type=ds:shutterdoors3] at @s run particle ds:golden_door2 ~~~
execute as @s[tag=slicingdoor,type=ds:shutterdoors4] at @s run particle ds:rainbow_door2 ~~~


execute as @s[tag=slicingdoor] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] run camerashake add @a[r=10] 2 0.15
execute as @s[tag=slicingdoor] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] run playsound mob.sword @a ~~~ 1 1.25
execute as @s[tag=slicingdoor,type=ds:shutterdoors1] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] 5 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors2] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] 10 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors3] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] 20 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors4] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] 30 entity_attack entity @s
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] Stun 35
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] Evade 15
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=1.5,tag=!Big] Hit 8

execute as @s[tag=slicingdoor] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] run camerashake add @a[r=10] 2 0.15
execute as @s[tag=slicingdoor] at @s if entity @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] run playsound mob.sword @a ~~~ 1 1.25
execute as @s[tag=slicingdoor,type=ds:shutterdoors1] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] 5 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors2] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] 10 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors3] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] 20 entity_attack entity @s
execute as @s[tag=slicingdoor,type=ds:shutterdoors4] at @s run damage @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] 30 entity_attack entity @s
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] Stun 35
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] Evade 15
execute as @s[tag=slicingdoor] at @s run scoreboard players add @e[tag=!Frames,family=!projectile,family=!damage,family=!despawncito,type=!item,r=3.85,tag=Big] Hit 8
