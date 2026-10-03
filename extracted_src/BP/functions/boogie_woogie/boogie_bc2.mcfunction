
#animation
execute as @s[scores={move=10}] run playanimation @s animation.todo.jjk_jumping_todo

execute as @s[scores={move=6},tag=yuji_preshibuya_brother] at @s positioned ^^^3 run tag @e[tag=!Frames,type=!item,type=!xp_orb,c=1,r=2.9,type=!gg:impact_frame,family=!projectile,family=!damage,type=!ds:yuji_itadori] add jjk_jumpvictim
execute as @s[scores={move=6},tag=yuji_awakened_brother] at @s positioned ^^^3 run tag @e[tag=!Frames,type=!item,type=!xp_orb,c=1,r=2.9,type=!gg:impact_frame,family=!projectile,family=!damage,type=!ds:yuji_itadori_awakened] add jjk_jumpvictim
execute as @s[scores={move=6},tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] at @s positioned ^^^3 run tag @e[tag=!Frames,type=!item,type=!xp_orb,c=1,r=2.9,type=!gg:impact_frame,family=!projectile,family=!damage] add jjk_jumpvictim

tag @s[scores={move=4..},tag=!jjk_jumptodo] add jjk_jumptodo
tag @s[scores={move=4..7},tag=!swapper] add swapper
execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] run execute as @s[tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] run execute as @e[tag=!jjk_jumptodo,scores={brotherID=1..},r=99,c=1,rm=0.15,tag=!jjk_jumpvictim] at @s if score @s brotherID = @e[tag=swapper,c=1] brotherID run tag @s add jjk_jumpbrother


execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] run execute as @s[tag=yuji_preshibuya_brother] at @s unless entity @e[type=ds:yuji_itadori,r=99,c=1,tag=!jjk_jumpvictim,tag=!jjk_jumpbrother] run summon ds:yuji_itadori ^^^-10
execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] run execute as @s[tag=yuji_preshibuya_brother] at @s run tag @e[type=ds:yuji_itadori,c=1,r=99,tag=!jjk_jumpvictim,tag=!jjk_jumpbrother] add jjk_jumpbrother

execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] run execute as @s[tag=yuji_awakened_brother] at @s unless entity @e[type=ds:yuji_itadori_awakened,r=99,c=1,tag=!jjk_jumpvictim,tag=!jjk_jumpbrother] run summon ds:yuji_itadori_awakened ^^^-10
execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] run execute as @s[tag=yuji_awakened_brother] at @s run tag @e[type=ds:yuji_itadori_awakened,c=1,r=99,tag=!jjk_jumpvictim,tag=!jjk_jumpbrother] add jjk_jumpbrother

execute as @s[scores={move=4..5}] at @s positioned ^^^3 if entity @e[tag=jjk_jumpvictim,r=5] if entity @e[tag=jjk_jumpbrother,c=1,r=99] run scoreboard players set @s move 1001


scoreboard players set @s[scores={move=4..6}] atk 2
execute as @s[scores={move=4..5}] at @s positioned ^^^3 unless entity @e[tag=jjk_jumpvictim,r=5] run scoreboard players set @s move 3
execute as @s[scores={move=4..5}] at @s positioned ^^^3 unless entity @e[tag=jjk_jumpbrother,r=99] run scoreboard players set @s move 3


execute as @s[scores={move=6}] at @s run playsound mob.clap @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=1000}] at @s run summon gg:impact_frame
execute as @s[scores={move=999..}] at @s run particle ds:boogie_woogie_tp 
execute as @s[scores={move=999..}] at @s run particle ds:boogie_woogie_tp2 
execute as @s[scores={move=999..}] at @s run execute as @e[tag=jjk_jumpbrother,c=1] at @s run particle ds:boogie_woogie_tp 
execute as @s[scores={move=999..}] at @s run execute as @e[tag=jjk_jumpbrother,c=1] at @s run particle ds:boogie_woogie_tp2 

execute as @s[scores={move=999..}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=1000}] at @s run summon ds:projectile ^^^1 facing ~~~ none "jjk_jump"
execute as @s[scores={move=1000}] at @s run scoreboard players set @e[name="jjk_jump",c=1] Deleter 130

execute as @s[scores={move=999..}] at @s run camera @s set minecraft:free pos ^3^1.33^1 facing ^^1.33^1
execute as @s[scores={move=999..}] at @s run camera @p[tag=jjk_jumpbrother,c=1] set minecraft:free pos ^3^1.33^1 facing ^^1.33^1

execute as @s[scores={move=965}] at @s run camera @s set minecraft:free ease 0.3 in_sine pos ^1^1.33^-2 facing ^^1.33^1
execute as @s[scores={move=965}] at @s run camera @p[tag=jjk_jumpbrother,c=1] set minecraft:free ease 0.3 in_sine  pos ^1^1.33^-2 facing ^^1.33^1


execute as @s[scores={move=999..}] at @s run playanimation @e[tag=jjk_jumpbrother,c=1] animation.todo.jjk_jumping_brother
execute as @s[scores={move=999..}] at @s run playanimation @e[tag=jjk_jumpvictim,c=1] animation.todo.jjk_jumping_victim

execute as @s[scores={move=999..}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumpbrother,c=1] ^^^1.33 facing ~~~
execute as @s[scores={move=999..}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumpvictim,c=1] ~~~ facing ^^^1
execute as @s[scores={move=999..}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumptodo,c=1] ^^^-1.33 facing ~~~

execute as @s[scores={move=700..}] at @s run scoreboard players set @e[r=5] Stun 20
execute as @s[scores={move=700..}] at @s run scoreboard players set @e[r=5] Camera 20


execute as @s[scores={move=979..980}] at @s run particle ds:boogie_woogie_tp 
execute as @s[scores={move=979..980}] at @s run particle ds:boogie_woogie_tp2 
execute as @s[scores={move=979..980}] at @s run execute as @e[tag=jjk_jumpbrother,c=1] at @s run particle ds:boogie_woogie_tp 
execute as @s[scores={move=979..980}] at @s run execute as @e[tag=jjk_jumpbrother,c=1] at @s run particle ds:boogie_woogie_tp2 
execute as @s[scores={move=980}] at @s run playsound mob.clap @a[r=100] ~~~ 99999 1.25 99999
execute as @s[scores={move=980}] at @s run summon gg:impact_frame
execute as @s[scores={move=980}] at @s run playsound mob.enderdragon.flap @a[r=33] ^^1^1 99999 1.7 9999
execute as @s[scores={move=979..980}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumpbrother,c=1] ^^^-1.7 facing ~~~
execute as @s[scores={move=979..980}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumpvictim,c=1] ~~~ facing ^^^1
execute as @s[scores={move=979..980}] at @s run execute as @e[name="jjk_jump",c=1] at @s run tp @e[tag=jjk_jumptodo,c=1] ^^^1.33 facing ~~~

execute as @s[scores={move=965}] at @s run playsound mob.enderdragon.flap @a[r=33] ^^1^1 99999 1.25 9999
execute as @s[scores={move=996}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch3 ~~1~
execute as @s[scores={move=996}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.punch1 @a[r=33] ~~1~ 9999 1.4 9999
execute as @s[scores={move=996}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound random.explode @a[r=33] ~~1~ 9999 1.4 9999
execute as @s[scores={move=996}] at @s run camerashake add @a[r=10] 0.1 0.15

execute as @s[scores={move=989}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=989}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=989}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch3 ~~1~
execute as @s[scores={move=989}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.punch1 @a[r=33] ~~1~ 9999 1.77 9999
execute as @s[scores={move=989}] at @s run camerashake add @a[r=10] 0.08 0.15

execute as @s[scores={move=984}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch1 ~~1~
execute as @s[scores={move=984}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch2 ~~1~
execute as @s[scores={move=984}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:punch3 ~~1~
execute as @s[scores={move=984}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.punch1 @a[r=33] ~~1~ 9999 1.77 9999
execute as @s[scores={move=984}] at @s run camerashake add @a[r=10] 0.08 0.15

execute as @s[scores={move=980}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=980}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.punch1 @a[r=33] ~~1~ 9999 1.35 9999
execute as @s[scores={move=980}] at @s run camerashake add @a[r=10] 0.25 0.15


execute as @s[scores={move=966}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=966}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=966}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.shock1 @a[r=33] ~~1~ 9999 1.75 9999
execute as @s[scores={move=966}] at @s run camerashake add @a[r=10] 0.4 0.15


execute as @s[scores={move=960}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:slam
execute as @s[scores={move=960}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:large_impact1 ~~1~
execute as @s[scores={move=960}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=960}] at @s run execute as @e[tag=jjk_jumpvictim] at @s run playsound mob.shock1 @a[r=33] ~~1~ 9999 1 9999
execute as @s[scores={move=960}] at @s run camerashake add @a[r=10] 2 0.15

execute as @s[scores={move=952..960}] at @s run tp @s ~~~
execute as @s[scores={move=959..960}] at @s run summon ds:knockback
scoreboard players set @s[scores={move=961..}] atk 2
execute as @s[scores={move=959}] at @s run scoreboard players set @e[tag=jjk_jumpvictim] knockdown 100
execute as @s[scores={move=960}] at @s run effect @e[tag=jjk_jumpvictim] levitation 1 12 true
execute as @s[scores={move=960}] at @s run damage @e[tag=jjk_jumpvictim] 20 override
execute as @s[scores={move=960}] at @s run scoreboard players set @e[tag=jjk_jumpvictim] Stun 30
execute as @s[scores={move=960}] at @s run scoreboard players set @e[tag=jjk_jumpvictim] Hit 7
execute as @s[scores={move=960}] at @s run scoreboard players add @e[tag=jjk_jumpvictim] Evade 40
execute as @s[scores={move=960}] at @s run scoreboard players operation @e[tag=jjk_jumpvictim] damage += @s damageadd
execute as @s[scores={move=960}] at @s run scoreboard players operation @e[tag=jjk_jumpvictim] damage += @e[tag=jjk_jumpbrother,c=1] damageadd

execute as @s[scores={move=960}] at @s run kill @e[name="jjk_jump",c=1]
scoreboard players set @s[scores={move=100..950}] move 3

scoreboard players set @e[type=!player,tag=jjk_jumpbrother,c=1] scroll 3000

scoreboard players random @s[scores={move=964}] blackflashchance 1 269
scoreboard players set @s[scores={move=964},tag=blackflashrig] blackflashchance 7

execute as @s[scores={move=962..965}] at @s run execute as @e[tag=jjk_jumpbrother,c=1] at @s run tp @s ^0.3^1^-1.33

execute as @s[scores={move=1..3}] at @s unless entity @e[tag=jjk_jumpbrother,c=1,r=10] run playanimation @s[scores={move=1..3}] animation.stunned
execute as @s[scores={move=1..3}] at @s run camera @a[r=6] clear
execute as @s[scores={move=1..3}] at @s positioned ^^^4 run tag @e[tag=jjk_jumpvictim,c=1] remove jjk_jumpvictim
execute as @s[scores={move=1..3}] at @s positioned ^^^4 run tag @e[tag=jjk_jumpbrother,c=1] remove jjk_jumpbrother
tag @s[scores={move=1..3}] remove swapper
tag @s[scores={move=1..3}] remove jjk_jumptodo
tag @s[scores={move=1..3}] remove form6

