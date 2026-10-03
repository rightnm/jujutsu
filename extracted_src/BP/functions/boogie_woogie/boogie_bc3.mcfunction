
#animation
execute as @s[scores={move=30}] run playanimation @s animation.todo.stylistic_swap1

scoreboard players set @s[scores={move=20..21}] atk 2
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run playsound mob.witch.throw @a[r=15] ~~~ 9999 1.25 9999
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run execute as  @e[tag=!Frames,r=2.49,family=!projectile,c=1]  at @s run particle ds:impact_vfx1 ~~1~
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run execute as  @e[tag=!Frames,r=2.49,family=!projectile,c=1]  at @s run particle ds:ground_slam1
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run execute as  @e[tag=!Frames,r=2.49,family=!projectile,c=1]  at @s run playsound random.explode @a[r=33] ~~~ 9999 1.5 9999
execute as @s[scores={move=20}] at @s positioned ^^^2.5 run execute as  @e[tag=!Frames,r=2.49,family=!projectile,c=1]  at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=20},tag=yuji_preshibuya_brother] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,family=!projectile,c=1,type=!ds:yuji_itadori] add styleswap_victim
execute as @s[scores={move=20},tag=yuji_awakened_brother] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,family=!projectile,c=1,type=!ds:yuji_itadori_awakened] add styleswap_victim
execute as @s[scores={move=20},tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49,family=!projectile,c=1] add styleswap_victim

execute as @s[scores={move=15..19}] at @s positioned ^^^2.5 unless entity @e[tag=styleswap_victim,c=1,r=4] run scoreboard players set @s move 3
execute as @s[scores={move=15..20}] at @s positioned ^^^2.5 if entity @e[tag=styleswap_victim,c=1,r=4] run scoreboard players set @s move 1001

execute as @s[scores={move=25..}] at @s if block ~~-1~ air run tp @s ~~-1~


playanimation @s[scores={move=1000..1001}] animation.todo.stylistic_swap2
execute as  @s[scores={move=1000..1001}] at @s run tp @s ~~~~ 0
execute as  @s[scores={move=998..1001}] at @s run tp @e[tag=styleswap_victim,c=1] ^^^2 facing ~~~
execute as  @s[scores={move=997..1001}] at @s run scoreboard players set @e[tag=styleswap_victim,c=1] Stun 80
execute as  @s[scores={move=997..1001}] at @s run scoreboard players set @e[tag=styleswap_victim,c=1] Flourish 3
execute as  @s[scores={move=900..1001}] at @s run playanimation @e[tag=styleswap_victim,c=1] animation.stunned 

#Camera Stop and Stun
scoreboard players set @s[scores={move=900..,Stun=0..5}] Stun 20
scoreboard players set @s[scores={move=900..,Camera=0..5}] Camera 20
execute as  @s[scores={move=900..1001}] at @s run scoreboard players set @e[tag=stylisticswap_brother,c=1] Stun 20
execute as  @s[scores={move=900..1001}] at @s run scoreboard players set @s[tag=stylisticswap_brother,c=1] Camera 20
execute as  @s[scores={move=900..1001}] at @s run scoreboard players set @e[tag=stylistic_swap_victim,c=1] Stun 20
execute as  @s[scores={move=900..1001}] at @s run scoreboard players set @e[tag=stylistic_swap_victim,c=1] Camera 20

tag @a[tag=!styleswap_tag,tag=styleswap_brother] add styleswap_tag
tag @a[tag=!styleswap_tag,tag=styleswapper] add styleswap_tag
tag @a[tag=!styleswap_tag,tag=styleswap_victim] add styleswap_tag
execute as @s[scores={move=989..}] at @s run camera @s set minecraft:free pos ^0.8^1.45^0.25 facing ^^1.45^
execute as @s[scores={move=989..}] at @s run camera @p[tag=styleswap_victim,c=1] set minecraft:free pos ^0.8^1.45^0.25 facing ^^1.45^
execute as @s[scores={move=989..}] at @s run camera @p[tag=styleswap_brother,c=1] set minecraft:free pos ^0.8^1.45^0.25 facing ^^1.45^

execute as @s[scores={move=988}] at @s run camera @s set minecraft:free ease 1.5 in_out_circ pos ^1.15^1.45^ facing ^^1.45^
execute as @s[scores={move=988}] at @s run camera @p[tag=styleswap_victim,c=1] set minecraft:free ease 1.5 in_out_circ pos ^1.15^1.45^ facing ^^1.45^
execute as @s[scores={move=988}] at @s run camera @p[tag=styleswap_brother,c=1] set minecraft:free ease 1.5 in_out_circ pos ^1.15^1.45^ facing ^^1.45^

execute as @s[scores={move=989}] at @s run playsound mob.clap @a[r=50] ~~1~ 99999 0.9 99999
execute as @s[scores={move=974..989}] at @s run scriptevent ds:styleswap -0.75,1.25,0
execute as @s[scores={move=969..989}] at @s run camerashake add @s 0.1 0.08

execute as @s[scores={move=969}] at @s run summon gg:impact_frame
execute as @s[scores={move=967..969}] at @s run particle ds:boogie_woogie_tp
execute as @s[scores={move=967..969}] at @s run particle ds:boogie_woogie_tp2

tag @s[tag=styleswap_brother] remove styleswap_brother
execute as @s[scores={move=950..970}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s run camera @s set minecraft:free ease 0.08 in_sine pos ^5^5^-4 facing ^^1^1
execute as @s[scores={move=950..970}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s run camera @a[tag=styleswap_tag,c=2] set minecraft:free ease 0.08 in_sine pos ^5^5^-4 facing ^^1^1

execute as @s[scores={move=950..970}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s run camera @p[tag=styleswap_victim,c=1] set minecraft:free ease 0.08 in_sine pos ^5^5^-4 facing ^^1^1


execute as @s[scores={move=974}] at @s run execute as @e[tag=styleswap_brother,c=1,r=100] at @s run summon ds:projectile swap_tp ~~~
execute as @s[scores={move=973..974}] at @s run execute as @e[tag=styleswap_brother,c=1,r=100] at @s run scoreboard players set @e[type=ds:projectile,c=1,name=swap_tp] Deleter 10
execute as @s[scores={move=973}] at @s run tp @e[tag=styleswap_brother,c=1,r=100] ~~0.25~ facing ^^0.25^10
execute as @s[scores={move=967..968}] at @s run tp @s @e[name=swap_tp,c=1]

execute as @s[scores={move=967..969}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s run playsound mob.wither.shoot @a[r=50] ~~1~ 99999 1.25 99999
execute as @s[scores={move=967..969}] at @s run scoreboard players set @e[tag=styleswap_brother,c=1] atk 2
execute as @s[scores={move=968..972}] at @s run playanimation @e[tag=styleswap_brother,c=1] animation.todo.stylistic_swap_brother
execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1,type=player] at @s run tp @s ~~~~ 0
execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1,type=!player] at @s run tp @s ~~~ facing @e[tag=styleswap_victim,c=1]


execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s if block ^^^0.55 air run tp @s ^^^0.55
execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s if block ^^^0.55 air run tp @s ^^^0.55
execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s if block ^^^0.55 air run tp @s ^^^0.55
execute as @s[scores={move=950..966}] at @s run execute as @e[tag=styleswap_brother,c=1] at @s positioned ^^^1 run execute as @e[tag=!Frames,r=2.5,tag=!styleswap_brother,type=!item,type=!xp_orb,type=!gg:impact_frame,family=!projectile] at @s run function boogie_woogie/styleswap_hit

tag @s[scores={move=999..1000},tag=!styleswapper] add styleswapper

execute as @s[scores={move=999..1000}] at @s positioned ^^^3 if entity @e[tag=styleswap_victim,r=15] run execute as @s[tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] run execute as @e[tag=!styleswapper,scores={brotherID=1..},r=99,c=1,rm=0.15,tag=!styleswap_victim] at @s if score @s brotherID = @e[tag=styleswapper,c=1] brotherID run tag @s add styleswap_brother


execute as @s[scores={move=1000}] at @s positioned ^^^3 if entity @e[tag=styleswap_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s unless entity @e[type=ds:yuji_itadori,r=99,c=1,tag=!styleswap_victim,tag=!styleswap_brother] run summon ds:yuji_itadori ^^^-10
execute as @s[scores={move=999..1000}] at @s positioned ^^^3 if entity @e[tag=styleswap_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s run tag @e[type=ds:yuji_itadori,c=1,r=99,tag=!styleswap_victim,tag=!styleswap_brother] add styleswap_brother

execute as @s[scores={move=1000}] at @s positioned ^^^3 if entity @e[tag=styleswap_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s unless entity @e[type=ds:yuji_itadori_awakened,r=99,c=1,tag=!styleswap_victim,tag=!styleswap_brother] run summon ds:yuji_itadori_awakened ^^^-10
execute as @s[scores={move=999..1000}] at @s positioned ^^^3 if entity @e[tag=styleswap_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s run tag @e[type=ds:yuji_itadori_awakened,c=1,r=99,tag=!styleswap_victim,tag=!styleswap_brother] add styleswap_brother

scoreboard players set @e[type=!player,tag=styleswap_brother,c=1] scroll 3000

tag @s[scores={move=996..997}] add styleswap_tag
execute as @s[scores={move=996..997}] at @s run tag @p[tag=styleswap_brother,c=1] add styleswap_tag
execute as @s[scores={move=997..998}] at @s positioned ^^^3 unless entity @e[tag=styleswap_victim,r=15] run scoreboard players set @s move 3
execute as @s[scores={move=997..998}] at @s positioned ^^^3 unless entity @e[tag=styleswap_brother,r=99] run scoreboard players set @s move 3




scoreboard players set @s[scores={move=900..950}] move 3


execute as @s[scores={move=1..3}] at @s run camera @a[r=60] clear
execute as @s[scores={move=1..3}] at @s positioned ^^^4 run tag @e[tag=styleswap_victim,c=1] remove styleswap_victim
execute as @s[scores={move=1..3}] at @s positioned ^^^4 run tag @e[tag=styleswap_brother,c=1] remove styleswap_brother
tag @s[scores={move=1..3}] remove styleswapper
execute as @s[scores={move=1..3}] at @s run tag @e remove styleswap_tag
tag @s[scores={move=1..3}] remove form7
