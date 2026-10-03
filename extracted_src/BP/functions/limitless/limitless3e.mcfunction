playanimation @s[scores={move=65}] animation.enchant_red
playanimation @s[scores={move=3..7}] animation.enchant_red_hold

scoreboard players set @s[scores={move=3..,Stun=1..}] move 2
scoreboard players set @s[scores={move=66..}] Frames 5

scoreboard players set @s[scores={move=1..}] Move 6

scoreboard players set @s[scores={move=1..2}] chant 0
tag @s[scores={move=0..2}] remove form3e
tag @s[scores={move=0..2}] remove phase
tag @s[scores={move=0..2}] remove paramita
tag @s[scores={move=0..2}] remove pillaroflight

execute as @s if block ~~-1~ air run scoreboard players add @s levitate 2

execute as @s[scores={move=64..65}] at @s run playsound mob.red1 @a[r=50] ~~~ 0.2 0.3

execute as @s[scores={move=64..65}] at @s run scoreboard objectives add chant dummy
execute as @s[scores={move=57}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=57}] at @s run particle ds:enchant_red1 ~~~
execute as @s[scores={move=57}] at @s run particle ds:enchant_red2 ~~~
execute as @s[scores={move=57}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=57}] at @s run particle ds:blue_chant1 ^1.15^1.37^-0.15
execute as @s[scores={move=57}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 0.97 99999

execute as @s[scores={move=38..56},tag=itemUse:ds:limitless3] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=38..56},tag=itemUse:ds:limitless3] move 501

execute as @s[scores={move=37}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=37}] at @s run particle ds:enchant_red1 ~~~
execute as @s[scores={move=37}] at @s run particle ds:enchant_red2 ~~~
execute as @s[scores={move=37}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=37}] at @s run particle ds:red_chant2 ^-1.15^1.5^-0.15
execute as @s[scores={move=37}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 1 99999

execute as @s[scores={move=16..36},tag=itemUse:ds:limitless3] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=16..36},tag=itemUse:ds:limitless3] move 601

execute as @s[scores={move=15}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=15}] at @s run particle ds:enchant_red1 ~~~
execute as @s[scores={move=15}] at @s run particle ds:enchant_red2 ~~~
execute as @s[scores={move=15}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=15}] at @s run particle ds:red_chant3 ^1.15^1.75^-0.15
execute as @s[scores={move=15}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 0.9 99999

execute as @s[scores={move=4..14},tag=itemUse:ds:limitless3] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=4..14},tag=itemUse:ds:limitless3] move 1001

scoreboard players set @s[scores={move=3..5}] move 5

playanimation @s[scores={move=500}] animation.enchant_red1

execute as @s[scores={move=500}] at @s run playsound mob.red1 @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={move=492}] at @s run summon ds:projectile ^^1.5^1.5 facing ^^1^20 none phasered
execute as @s[scores={move=492}] at @s positioned ^^1.5^50 run summon ds:projectile phaseredTRG ~~~
execute as @s[scores={move=492}] at @s run scoreboard players set @e[name=phasered,c=1] Deleter 61
execute as @s[scores={move=492}] at @s positioned ^^1.5^50 run scoreboard players set @e[name=phaseredTRG,c=1] Deleter 61
execute as @s[scores={move=492}] at @s run particle ds:red_ex6 ^^1^1
execute as @s[scores={move=492}] at @s run particle ds:red_ex6 ^^1^1
execute as @s[scores={move=492}] at @s run particle ds:red_ex1 ^^1^1
execute as @s[scores={move=492}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.1 99999
execute as @s[scores={move=492}] at @s run playsound mob.shock2 @a[r=50] ~~~ 999999 1.25 999999
execute as @s[scores={move=492}] at @s run camerashake add @a[r=50] 1 0.15
execute as @s[scores={move=492}] at @s run effect @a[r=50] night_vision 1 1 true

execute as @s[scores={move=480..485}] at @s run function cancel_attackv2


playanimation @s[scores={move=600}] animation.enchant_red2

execute as @s[scores={move=600}] at @s run playsound mob.red1 @a[r=100] ^^1^1 99999 0.75 99999
execute as @s[scores={move=580}] at @s run camera @a[r=100] fade time 0 0 2 color 200 50 50

execute as @s[scores={move=580}] at @s run summon ds:projectile ^^1.25^1 facing ^^1.25^10 none paramita
execute as @s[scores={move=580}] at @s run scoreboard players set @e[name=paramita,c=1] Deleter 31
execute as @s[scores={move=550..580}] at @s run playsound mob.shock2 @a[r=100] ^^1^4 99999 1.85 99999
execute as @s[scores={move=550..580}] at @s run playsound mob.shock2 @a[r=100] ^^1^4 99999 2.25 99999
execute as @s[scores={move=550..580}] at @s run camerashake add @a[r=10] 0.1 0.1
execute as @s[scores={move=550..580}] at @s run playanimation @e[name=paramita,c=1] animation.paramita_red
execute as @s[scores={move=540..580}] at @s run tp @s @s
execute as @s[scores={move=550..580}] at @s positioned ^^1.25^2.5 run function limitless/paramita
execute as @s[scores={move=550..580}] at @s positioned ^^1.25^5 run function limitless/paramita
execute as @s[scores={move=550..580}] at @s positioned ^^1.25^7.5 run function limitless/paramita
execute as @s[scores={move=550..580}] at @s anchored eyes run camera @s set minecraft:free pos ^5 ^3 ^5 facing ^^1^2.5
execute as @s[scores={move=550..580}] at @s run tp @e[name=paramita,c=1] ^^1.25^1 facing ^^1.25^10
scoreboard players set @s[scores={move=550..580}] Camera 5
scoreboard players set @s[scores={move=550..580}] Move 5

execute as @s[scores={move=540..547}] at @s run function cancel_attackv2


playanimation @s[scores={move=1000}] animation.enchant_red3
execute as @s[scores={move=1000}] at @s if block ~~-1~ air run playanimation @s animation.enchant_red3air

execute as @s[scores={move=941}] at @s run camera @s fade time 0 0 1 color 255 50 50
execute as @s[scores={move=1000}] at @s run playsound mob.red3 @a[r=100] ~~~ 99999 0.35 99999
execute as @s[scores={move=940}] at @s run playsound mob.red2 @a[r=100] ~~~ 99999 0.8 99999
execute as @s[scores={move=940}] at @s run camerashake add @a[r=100] 4 0.25

execute as @s[scores={move=940}] at @s positioned ^^1^1 run function limitless/red_beam

execute as @s[scores={move=925..930}] at @s run function cancel_attackv2