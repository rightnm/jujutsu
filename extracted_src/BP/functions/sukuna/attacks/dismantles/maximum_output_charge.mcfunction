playanimation @s[scores={move=65}] animation.dismantle_charge1
playanimation @s[scores={move=3..7}] animation.dismantle_charge1hold


scoreboard players set @s[scores={move=3..,Stun=1..}] move 2
scoreboard players set @s[scores={move=66..}] Frames 5

execute as @s[scores={move=63..65}] if block ~~-1~ air run scriptevent ds:downfall

scoreboard players set @s[scores={move=1..}] Move 6

scoreboard players set @s[scores={move=1..2}] chant 0
tag @s[scores={move=0..2}] remove form3s
tag @s[scores={move=0..2}] remove charge1
tag @s[scores={move=0..2}] remove charge2
tag @s[scores={move=0..2}] remove charge3
tag @s[scores={move=0..2}] remove charge4



execute as @s if block ~~-1~ air run scriptevent ds:antiair

execute as @s[scores={move=64..65}] at @s run scoreboard objectives add chant dummy
execute as @s[scores={move=57}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=57}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=57}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=57}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.6 99999

execute as @s[scores={move=57}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o1\n§r§f[ §eClick to Fire §f]\n- Or keep charging -"}]}
execute as @s[scores={move=37}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o2\n§r§f[ §eClick to Fire §f]\n- Or keep charging -"}]}
execute as @s[scores={move=27}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o3\n§r§f[ §eClick to Fire §f]\n- Or keep charging -"}]}
execute as @s[scores={move=8}] at @s run titleraw @s title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§r§l§fCharge: §o4\n§r§f[ §eClick to Fire §f]\n- Or keep charging -"}]}

execute as @s[scores={move=38..56},tag=itemUse:ds:sukuna1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=38..56},tag=itemUse:ds:sukuna1] move 501

execute as @s[scores={move=37}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=37}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=37}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=37}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=27..36},tag=itemUse:ds:sukuna1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=27..36},tag=itemUse:ds:sukuna1] move 601

execute as @s[scores={move=27}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=27}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=27}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=27}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=9..26},tag=itemUse:ds:sukuna1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=9..26},tag=itemUse:ds:sukuna1] move 821

execute as @s[scores={move=8}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars2 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:dismantle_stars_charge ~~1~
execute as @s[scores={move=8}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=8}] at @s run playsound mob.wither.hurt @a[r=50] ~~~ 99999 0.5 99999

execute as @s[scores={move=4..7},tag=itemUse:ds:sukuna1] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=4..7},tag=itemUse:ds:sukuna1] move 1001

scoreboard players set @s[scores={move=3..5}] move 5

playanimation @s[scores={move=500}] animation.dismantle_maximum1

scoreboard players set @s[scores={move=70..}] Frames 5

scoreboard players set @s[scores={move=491}] Camera 4
execute as @s[scores={move=490..491}] at @s run tp @s @s
execute as @s[scores={move=490}] at @s run summon ds:projectile ^^^2.5 facing ^^1^20 none maxdismantle1
execute as @s[scores={move=490}] at @s run scoreboard players set @e[name=maxdismantle1,c=1] Deleter 26
execute as @s[scores={move=490}] at @s run particle ds:dismantle_stars1 ^^1^1
execute as @s[scores={move=490}] at @s run playsound mob.dismantle @a[r=50] ~~~ 99999 0.85 99999
execute as @s[scores={move=490}] at @s run playsound mob.slash @a[r=50] ~~~ 99999 0.75 99999
execute as @s[scores={move=490}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=490}] at @s run summon gg:impact_frame ^^1^1 
execute as @s[scores={move=488}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=490}] at @s run camerashake add @a[r=50] 2 0.15 rotational

execute as @s[scores={move=480..485}] at @s run scoreboard players set @s sukuna_ab6 888

execute as @s[scores={move=480..485}] at @s run function cancel_attackv2


playanimation @s[scores={move=600}] animation.dismantle_maximum2

scoreboard players set @s[scores={move=591}] Camera 4
execute as @s[scores={move=590..591}] at @s run tp @s @s
execute as @s[scores={move=590}] at @s run summon ds:projectile ^^1^2.5 facing ^^1^20 none maxdismantle2
execute as @s[scores={move=590}] at @s run scoreboard players set @e[name=maxdismantle2,c=1] Deleter 35
execute as @s[scores={move=590}] at @s run particle ds:dismantle_stars1 ^^1^1
execute as @s[scores={move=588..590}] at @s run playsound mob.dismantle @a[r=50] ~~~ 99999 0.85 99999
execute as @s[scores={move=588..590}] at @s run playsound mob.slash @a[r=50] ~~~ 99999 0.85 99999
execute as @s[scores={move=588..590}] at @s run playsound mob.slash1 @a[r=50] ~~~ 99999 1.2 99999
execute as @s[scores={move=588..590}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 0.5 99999
execute as @s[scores={move=590}] at @s run summon gg:impact_frame ^^1^1 
execute as @s[scores={move=588}] at @s run tp @e[type=gg:impact_frame,c=1] ~~-200~
execute as @s[scores={move=590}] at @s run camerashake add @a[r=50] 4 0.15 rotational

execute as @s[scores={move=580..585}] at @s run function cancel_attackv2

execute as @s[scores={move=580..785}] at @s run scoreboard players set @s sukuna_ab6 999


playanimation @s[scores={move=820}] animation.dismantle_maximum3


scoreboard players set @s[scores={move=720..}] Camera 4
execute as @s[scores={move=790..791}] at @s run tp @s @s

execute as @s[scores={move=815}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 1.5 9999
execute as @s[scores={move=812}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 1.25 9999
execute as @s[scores={move=810}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 1.15 9999
execute as @s[scores={move=809}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 1.35 9999
execute as @s[scores={move=805}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 9999 1.5 9999

execute as @s[scores={move=800}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=800}] at @s run playsound mob.ring @a[r=20] ~~~ 9999 1.5 9999

execute as @s[scores={move=741..790}] at @s run summon ds:projectile ^^1^2 facing ^^1^20 none maxdismantle3

execute as @s[scores={move=772}] at @s run camera @s set minecraft:free pos ^17^17^ facing ^^^10

execute as @s[scores={move=770}] at @s run particle ds:invert_2sec ^14^14^

execute as @s[scores={move=740..790}] at @s run execute as @e[name=maxdismantle3,r=10] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 25

execute as @s[scores={move=740}] at @s run stopsound @a mob.rapiddismantle 
execute as @s[scores={move=790}] at @s run playsound mob.rapiddismantle @a[r=70] ~~3~ 99999 1 99999

execute as @s[scores={move=720..735}] at @s run scoreboard players set @s sukuna_ab6 1600


execute as @s[scores={move=720..735}] at @s run function cancel_attackv2


playanimation @s[scores={move=1000}] animation.dismantle_maximum4


scoreboard players set @s[scores={move=970..}] Camera 5
execute as @s[scores={move=1000..}] at @s run tp @s @s

execute as @s[scores={move=1000}] at @s run execute as @a[r=200] at @s run playsound music.bass3 @s ~~~ 99999 0.8 99999

execute as @s[scores={move=970..}] at @s run particle ds:dismantle_stars_small ~~1~
execute as @s[scores={move=975..}] at @s run camerashake add @a[r=20] 0.12 0.08

execute as @s[scores={move=975..}] at @s run particle ds:chanting ~~~
execute as @s[scores={move=975..}] at @s run particle ds:chanting2 ~~~

execute as @s[scores={move=1000}] at @s run camera @s set minecraft:free pos ^^1^7 facing ~~3~
execute as @s[scores={move=1000}] at @s run camera @s set minecraft:free ease 1 in_out_circ pos ^^3^-14 facing ^^7^10

execute as @s[scores={move=973}] at @s run summon gg:impact_frame ~~~
execute as @s[scores={move=970}] at @s run particle ds:invert ^^1^1 
execute as @s[scores={move=966..970}] at @s run playsound mob.cleave @a[r=220] ~~~ 9999 0.3 9999
execute as @s[scores={move=966..970}] at @s run playsound mob.slash @a[r=220] ~~~ 9999 1 9999
execute as @s[scores={move=966..970}] at @s run playsound mob.shock1 @a[r=220] ~~~ 9999 1 9999
execute as @s[scores={move=966..970}] at @s run playsound mob.slash1 @a[r=220] ~~~ 9999 0.5 9999
execute as @s[scores={move=970}] at @s run camerashake add @a[r=200] 4 0.1 rotational

execute as @s[scores={move=970..}] at @s run scoreboard players set @s sukuna_ab6 3200

execute as @e[name=waffle_dismantle] at @s run function sukuna/attacks/waffle_dismantle

execute as @s[scores={move=970}] at @s run summon ds:projectile ^^12^2 facing ^^12^20 none waffle_dismantle
execute as @s[scores={move=960..970}] at @s run execute as @e[name=waffle_dismantle,c=1] at @s unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 45


execute as @s[scores={move=772}] at @s run camera @s set minecraft:free pos ^17^17^ facing ^^^10

execute as @s[scores={move=940..950}] at @s run function cancel_attackv2