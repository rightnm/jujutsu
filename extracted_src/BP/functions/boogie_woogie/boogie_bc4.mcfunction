
#animation
execute as @s[scores={move=19..21}] run playanimation @s animation.todo.exception_slide

execute as @s[scores={move=11..18}] at @s run scriptevent ds:knockback 1.5
execute as @s[scores={move=7..9}] at @s run scriptevent ds:knockback 0.5
execute as @s[scores={move=17}] at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 9999 0.65 9999








scoreboard players set @s[scores={move=6..7}] atk 2
scoreboard players set @s[scores={move=6..11}] Frames 7
execute as @s[scores={move=6}] at @s run playsound mob.witch.throw @a[r=15] ~~~ 9999 1.25 9999
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run particle ds:impact_vfx1 ~~1.5~
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run particle ds:leap ~~~
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run particle ds:ground_slam1
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run playsound random.explode @a[r=33] ~~~ 9999 1.5 9999
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run playsound mob.enderdragon.flap @a[r=33] ~~~ 9999 1.5 9999
execute as @s[scores={move=6}] at @s run execute as  @e[tag=!Frames,r=2.5,family=!projectile,c=1]  at @s run camerashake add @a[r=20] 2 0.15



execute as @s[type=!player,scores={move=22..}] at @s run tp @s ~~~ 
execute as @s[type=!player] at @s run execute as @e[family=yuji,r=8] at @s run tp @s ~~~~ 0
execute as @s[type=!player] at @s run scoreboard players set @e[family=yuji,r=8] Stun 20

execute as @s[scores={move=6},tag=yuji_preshibuya_brother] at @s run tag @e[tag=!Frames,r=2.5,family=!projectile,c=1,type=!ds:yuji_itadori] add exception_victim
execute as @s[scores={move=6},tag=yuji_awakened_brother] at @s  run tag @e[tag=!Frames,r=2.5,family=!projectile,c=1,type=!ds:yuji_itadori_awakened] add exception_victim
execute as @s[scores={move=6},tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] at @s run tag @e[tag=!Frames,r=2.5,family=!projectile,c=1] add exception_victim


execute as @s[scores={move=4..6}] at @s unless entity @e[tag=exception_victim,c=1,r=4] run scoreboard players set @s move 3
execute as @s[scores={move=4..6}] at @s if entity @e[tag=exception_victim,c=1,r=4] run scoreboard players set @s move 1001

playanimation @s[scores={move=999..1001}] animation.todo.exception_kick
execute as @s[scores={move=999..1001}] at @s run playanimation @e[tag=exception_victim,c=1] animation.todo.exception_kicked

execute as @s[scores={move=998..1001}] at @s unless entity @e[name="exceptionTRG",c=1,r=5] run summon ds:projectile ~~~ facing ^^^10 none "exceptionTRG"
execute as @s[scores={move=996..1001}] at @s run scoreboard players set @e[name="exceptionTRG",c=1,r=5] Deleter 201
execute as @s[scores={move=995..1001}] at @s run tp @s ~~~~ 0
execute as @s[scores={move=995..1001}] at @s run tp @e[tag=exception_victim,c=1] ~~1.4~ facing ^^^-0.15


execute as @s[scores={move=920..1001}] at @s run execute as @e[type=ds:projectile,name="exceptionTRG",c=1] at @s run tp @e[tag=exception_victim,c=1] ~~1.4~ facing ^^^-0.15

scoreboard players set @s[scores={move=100..700}] move 3

execute as @s[scores={move=1000}] at @s run particle ds:dirt03
execute as @s[scores={move=942..1001}] at @s run camera @s set minecraft:free pos ^4^0.33^0.33 facing ^^1^
execute as @s[scores={move=942..1001}] at @s run camera @p[tag=exception_victim,c=1,r=5] set minecraft:free pos ^4^0.33^0.33 facing ^^1^

tag @s[scores={move=999..1001},tag=!exception_todo] add exception_todo

scoreboard players set @e[scores={Stun=0..5},tag=exception_todo] Stun 20
scoreboard players  set @e[scores={Camera=0..5},tag=exception_todo] Camera 20

scoreboard players set  @e[scores={Stun=0..5},tag=exception_brother] Stun 20
scoreboard players  set @e[scores={Camera=0..5},tag=exception_brother] Camera 20

scoreboard players  set @e[scores={Stun=0..5},tag=exception_victim] Stun 20
scoreboard players set  @e[scores={Camera=0..5},tag=exception_victim] Camera 20

execute as @s[scores={move=971}] at @s run  playsound mob.wither.shoot @a[r=33] ~~-5~ 99999 0.6 99999
execute as @s[scores={move=931..971}] at @s run camerashake add @a[r=10] 0.045 0.045
execute as @s[scores={move=971}] at @s run particle ds:dirt03
execute as @s[scores={move=971}] at @s run particle ds:up_kick1

execute as @s[scores={move=970}] at @s run particle ds:exception1 ^^1.65^1.85
execute as @s[scores={move=945}] at @s run particle ds:exception2 ^^1^-1.85

execute as @s[scores={move=939}] at @s run particle ds:leap
execute as @s[scores={move=939}] at @s run particle ds:ground_pound3
execute as @s[scores={move=939}] at @s run particle ds:ground_pound4
execute as @s[scores={move=939}] at @s run particle ds:dirt2 ~~1.4~
execute as @s[scores={move=940}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=939..941}] at @s run particle ds:up_kick1
execute as @s[scores={move=939..940}] at @s run particle ds:up_kick2
execute as @s[scores={move=939}] at @s run particle ds:up_kick3
execute as @s[scores={move=939}] at @s run  playsound mob.shock1 @a[r=33] ~~1~ 99999 1.3 99999
execute as @s[scores={move=939}] at @s run  playsound mob.wither.break_block @a[r=33] ~~1~ 99999 0.8 99999
execute as @s[scores={move=939}] at @s run  playsound mob.wither.shoot @a[r=33] ~~-5~ 99999 1.3 99999
execute as @s[scores={move=935..940}] at @s run camera @s set minecraft:free pos ^5^0.75^0.33 facing ^^2^
execute as @s[scores={move=935..940}] at @s run camera @p[tag=exception_victim,c=1,r=5] set minecraft:free pos ^5^0.75^0.33 facing ^^2^

execute as @s[scores={move=933..934}] at @s run camera @s set minecraft:free ease 0.25 in_sine  pos ^3^1^2 facing ^^3^-0.25
execute as @s[scores={move=933..934}] at @s run camera @p[tag=exception_victim,c=1,r=5] set minecraft:free ease 0.25 in_sine pos ^3^1^2 facing ^^3^-0.25
execute as @s[scores={move=923..924}] at @s run camera @s set minecraft:free ease 0.25 in_sine pos ^3^1.5^2 facing ^^1^-0.25
execute as @s[scores={move=923..924}] at @s run camera @p[tag=exception_victim,c=1,r=5] set minecraft:free ease 0.25 in_sine pos ^3^1.5^2 facing ^^1^-0.25

execute as @s[scores={move=920..928}] at @s run playsound random.whoop @a[r=33] ~~2~ 99999 1.45 9999

execute as @s[scores={move=917..920}] at @s run particle ds:boogie_woogie_tp ^^1.5^-0.5
execute as @s[scores={move=917..920}] at @s run particle ds:boogie_woogie_tp2 ^^1.5^-0.5
execute as @s[scores={move=920}] at @s run summon gg:impact_frame
execute as @s[scores={move=920}] at @s run playsound mob.clap @a[r=50] ~~1.5~ 99999 1.25 99999

execute as @s[scores={move=917..920}] at @s run execute as @e[tag=exception_brother,c=1] at @s run particle ds:boogie_woogie_tp ^^1.5^-0.5
execute as @s[scores={move=917..920}] at @s run execute as @e[tag=exception_brother,c=1] at @s run particle ds:boogie_woogie_tp2 ^^1.5^-0.5



execute as @s[scores={move=920}] at @s if entity @e[tag=exception_victim,r=15] run execute as @s[tag=!yuji_preshibuya_brother,tag=!yuji_awakened_brother] run execute as @e[tag=!exception_todo,scores={brotherID=1..},r=99,c=1,rm=0.15,tag=!exception_victim] at @s if score @s brotherID = @e[tag=exception_todo,c=1] brotherID run tag @s add exception_brother


execute as @s[scores={move=920}] at @s if entity @e[tag=exception_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s unless entity @e[type=ds:yuji_itadori,r=99,c=1,tag=!exception_victim,tag=!exception_brother] run summon ds:yuji_itadori ^^^-0.25 facing ^^^10
execute as @s[scores={move=919..920}] at @s if entity @e[tag=exception_victim,r=15] run execute as @s[tag=yuji_preshibuya_brother] at @s run tag @e[type=ds:yuji_itadori,c=1,r=99,tag=!exception_victim,tag=!exception_brother] add exception_brother

execute as @s[scores={move=920}] at @s if entity @e[tag=exception_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s unless entity @e[type=ds:yuji_itadori_awakened,r=99,c=1,tag=!exception_victim,tag=!exception_brother] run summon ds:yuji_itadori_awakened ^^^-0.25 facing ^^^10
execute as @s[scores={move=919..920}] at @s if entity @e[tag=exception_victim,r=15] run execute as @s[tag=yuji_awakened_brother] at @s run tag @e[type=ds:yuji_itadori_awakened,c=1,r=99,tag=!exception_victim,tag=!exception_brother] add exception_brother

execute as @s[scores={move=916..919}] at @s unless entity @e[tag=exception_brother,r=99] run scoreboard players set @s move 3

execute as @s[scores={move=916..919}] at @s run execute as @e[type=ds:projectile,name="exceptionTRG",c=1] at @s run tp @e[tag=exception_victim,c=1] ~~0.15~ facing ^^^-0.15


execute as @s[scores={move=918..919}] at @s run execute as @e[tag=exception_brother,c=1] at @s unless entity @e[name="exceptionswap",r=5] run summon ds:projectile "exceptionswap" ~~~
execute as @s[scores={move=918..919}] at @s run spreadplayers ~ ~ 12 15 @e[name=exceptionswap,r=3]

execute as @s[scores={move=918..919}] at @s run tp @e[tag=exception_brother,c=1] ~~~ facing ^^^10
execute as @s[scores={move=914..917}] at @s run tp @s @e[type=ds:projectile,name="exceptionswap",c=1]


execute as @s[scores={move=913..919}] at @s run playanimation @e[tag=exception_brother,c=1] animation.todo.exception_brother
execute as @s[scores={move=917..919}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run tp @e[tag=exception_brother,c=1] ^^^-1.25 facing ^^^10
execute as @s[scores={move=915..919}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_todo,c=1] set minecraft:free pos ^1.5^0.25^0.3 facing ^^1.3^-1.5
execute as @s[scores={move=915..919}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_victim,c=1] set minecraft:free pos ^1.5^0.25^0.3 facing ^^1.3^-1.5
execute as @s[scores={move=915..919}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_brother,c=1] set minecraft:free pos ^1.5^0.25^0.3 facing ^^1.3^-1.5

execute as @s[scores={move=911..912}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_todo,c=1] set minecraft:free ease 2.5 in_out_circ pos ^-2.5^1^1 facing ^^1.3^0.25
execute as @s[scores={move=911..912}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_victim,c=1] set minecraft:free ease 2.5 in_out_circ pos ^-2.5^1^1 facing ^^1.3^0.25
execute as @s[scores={move=911..912}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_brother,c=1] set minecraft:free ease 2.5 in_out_circ pos ^-2.5^1^1 facing ^^1.3^0.25



execute as @s[scores={move=860}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_todo,c=1] set minecraft:free pos ^-6^1^ facing ^^1.3^1
execute as @s[scores={move=860}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_victim,c=1] set minecraft:free pos ^-6^1^ facing ^^1.3^1
execute as @s[scores={move=860}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_brother,c=1] set minecraft:free pos ^-6^1^ facing ^^1.3^1

execute as @s[scores={move=845}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_todo,c=1] set minecraft:free pos ^-12^1^ facing ^^1.3^1
execute as @s[scores={move=845}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_victim,c=1] set minecraft:free pos ^-12^1^ facing ^^1.3^1
execute as @s[scores={move=845}] at @s run execute as @e[name=exceptionTRG,c=1] at @s run camera @p[tag=exception_brother,c=1] set minecraft:free pos ^-12^1^ facing ^^1.3^1
execute as @e[type=!player,tag=exception_victim] at @s run tp @s ~~~~ 0
execute as @e[type=!player,tag=exception_brother] at @s run tp @s ~~~~ 0

execute as @s[scores={move=915}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run playsound music.bass3 @a[r=100] ~~~ 99999 1 999999

execute as @s[scores={move=910..915}] at @s run execute as @e[tag=exception_victim] at @s run damage @e[tag=exception_brother,type=!player,c=1] 1 entity_attack entity @s
execute as @s[scores={move=845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run playsound mob.blackflash @a[r=100] ~~~ 9999 1.25 9999
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run playsound mob.blackflash2 @a[r=100] ~~~ 9999 0.85 9999
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run camerashake add @a[r=20] 1 0.25
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run playsound mob.punch1 @a[r=40] ~~1~ 999999 2.5 999999
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:invert ~~~
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:black_flash8 ^^1^1 
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:black_flash9 ^^1^1 

execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run playsound mob.kokusen3 @a[r=100] ~~~ 99999 1 99999

execute as @s[scores={move=845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:red_tint
execute as @s[scores={move=845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash2
execute as @s[scores={move=875}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash3

execute as @s[scores={move=844}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run summon gg:impact_frame
execute as @s[scores={move=843}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:red_tint
execute as @s[scores={move=845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run particle ds:invert
execute as @s[scores={move=845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run camerashake add @a[r=20] 4 0.5 rotational
execute as @s[scores={move=835..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run scriptevent ds:lightning 1,0.85,0.75, 0.8,0.1,0.1, 0.8,0.1,0.1, 3,3,3, 3,3,3
execute as @s[scores={move=835..840}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run scriptevent ds:lightning 1,0.85,1, 0.8,0.1,0.1, 0.8,0.1,0.1, 2.75,2.75,2.75, 2.75,2.75,2.75
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash1
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash2
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash3
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash4
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash5
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash6
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash7
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash8
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash9
execute as @s[scores={move=844..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run particle ds:black_flash10

execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run damage @e[tag=exception_victim,r=15,c=1] 75 override entity @s
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run scoreboard players set @e[tag=exception_victim,r=15,c=1] Flourish 15
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run scoreboard players add @e[tag=exception_victim,r=15,c=1] Evade 30
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run scoreboard players add @e[tag=exception_victim,r=15,c=1] Hit 5
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run scoreboard players operation @e[tag=exception_victim,r=15,c=1] damage += @s damageadd
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run scoreboard players operation @e[tag=exception_victim,r=15,c=1] damage *= four endurance
execute as @s[scores={move=842}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run tag @e[tag=exception_victim,r=15,c=1] remove exception_victim

execute as @s[scores={move=835}] at @s run execute as  @e[tag=exception_brother,r=100,c=1] at @s positioned ^^1^2 run tag @s remove exception_brother

execute as @s[scores={move=830..845}] at @s run execute as @e[tag=exception_brother,r=100,c=1] at @s run scriptevent ds:lightning 2,0.85,4, 0.8,0.1,0.1, 0.8,0.1,0.1, 4,4,4, 4,4,4

execute as @s[scores={move=842..845}] at @s run kill @e[name=exceptionTRG,c=1]
execute as @s[scores={move=842..845}] at @s run kill @e[name=exceptionswap,c=1]
scoreboard players set @s[scores={move=800..815}] move 3

execute as @s[scores={move=844..845}] at @s run scoreboard players set @e[tag=exception_brother,r=100,c=1] thezone 200



execute as @s[scores={move=1..3}] at @s run camera @a[r=6] clear
execute as @s[scores={move=1..3}] at @s run tag @e remove exception_tag
tag @s[scores={move=1..3}] remove exception_todo
execute as @s[scores={move=1..3}] at @s run tag @e[tag=exception_victim,c=1] remove exception_victim
execute as @s[scores={move=1..3}] at @s run tag @e[tag=exception_brother,c=1] remove exception_brother
tag @s[scores={move=1..3}] remove form8
