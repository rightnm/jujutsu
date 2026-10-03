playanimation @s[scores={move=65}] animation.enchant_blue
playanimation @s[scores={move=3..7}] animation.enchant_blue_hold


scoreboard players set @s[scores={move=3..,Stun=1..}] move 2
scoreboard players set @s[scores={move=66..}] Frames 5

scoreboard players set @s[scores={move=1..900}] Move 6

scoreboard players set @s[scores={move=1..2}] chant 0
tag @s[scores={move=0..2}] remove form2e
tag @s[scores={move=0..2}] remove phase
tag @s[scores={move=0..2}] remove twilight
tag @s[scores={move=0..2}] remove eyesofwisdom

execute as @s if block ~~-1~ air run scoreboard players add @s levitate 2

execute as @s[scores={move=64..65}] at @s run scoreboard objectives add chant dummy
execute as @s[scores={move=57}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=57}] at @s run particle ds:enchant_blue1 ~~~
execute as @s[scores={move=57}] at @s run particle ds:enchant_blue2 ~~~
execute as @s[scores={move=57}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=57}] at @s run particle ds:blue_chant1 ^1.15^1.37^-0.15
execute as @s[scores={move=57}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 0.97 99999

execute as @s[scores={move=38..56},tag=itemUse:ds:limitless2] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=38..56},tag=itemUse:ds:limitless2] move 501

execute as @s[scores={move=37}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=37}] at @s run particle ds:enchant_blue1 ~~~
execute as @s[scores={move=37}] at @s run particle ds:enchant_blue2 ~~~
execute as @s[scores={move=37}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=37}] at @s run particle ds:blue_chant2 ^-1.15^1.5^-0.15
execute as @s[scores={move=37}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 1 99999

execute as @s[scores={move=16..36},tag=itemUse:ds:limitless2] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=16..36},tag=itemUse:ds:limitless2] move 601

execute as @s[scores={move=15}] at @s run scoreboard players add @s chant 1
execute as @s[scores={move=15}] at @s run particle ds:enchant_blue1 ~~~
execute as @s[scores={move=15}] at @s run particle ds:enchant_blue2 ~~~
execute as @s[scores={move=15}] at @s run camerashake add @s 0.1 0.08
execute as @s[scores={move=15}] at @s run particle ds:blue_chant3 ^1.15^1.75^-0.15
execute as @s[scores={move=15}] at @s run playsound mob.chant @a[r=50] ~~~ 99999 0.9 99999

execute as @s[scores={move=4..14},tag=itemUse:ds:limitless2] at @s run playsound beacon.activate @a[r=50] ~~~ 99999 1.5 99999
scoreboard players set @s[scores={move=4..14},tag=itemUse:ds:limitless2] move 1001

scoreboard players set @s[scores={move=3..5}] move 5

playanimation @s[scores={move=500}] animation.enchant_blue1

execute as @s[scores={move=490}] at @s run summon ds:projectile ^^1^1.5 facing ^^1^20 none phaseblue
execute as @s[scores={move=490}] at @s run scoreboard players set @e[name=phaseblue,c=1] Deleter 31
execute as @s[scores={move=490}] at @s run particle ds:lapse_pull3 ^^1^1
execute as @s[scores={move=490}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 99999 1.1 99999
execute as @s[scores={move=490}] at @s run playsound beacon.activate @a[r=50] ~~~ 999999 0.5 999999
execute as @s[scores={move=490}] at @s run camerashake add @a[r=50] 2 0.15
execute as @s[scores={move=490}] at @s run effect @a[r=50] night_vision 1 1 true

execute as @s[scores={move=484..485}] at @s run function cancel_attackv2


playanimation @s[scores={move=600}] animation.enchant_blue2

execute as @s[scores={move=575..600}] at @s run tp @s ~~~

execute as @s[scores={move=589..597}] at @s run camerashake add @s 0.1 0.08 
execute as @s[scores={move=599}] at @s run particle ds:lapse_pull4 ^^1^1
execute as @s[scores={move=597}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=595}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=593}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=591}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=589}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=587}] at @s run playsound beacon.activate @a[r=20] ~~~ 9999 3.5 9999
execute as @s[scores={move=597}] at @s run summon ds:projectile ^-0.33^0.33^1 facing ^^1^10 none twilight
execute as @s[scores={move=595}] at @s run summon ds:projectile ^0.33^0.33^1 facing ^^1^10 none twilight
execute as @s[scores={move=593}] at @s run summon ds:projectile ^0.8^1^1 facing ^^1^10 none twilight
execute as @s[scores={move=591}] at @s run summon ds:projectile ^0.33^1.66^1 facing ^^1^10 none twilight
execute as @s[scores={move=589}] at @s run summon ds:projectile ^-0.33^1.66^1 facing ^^1^10 none twilight
execute as @s[scores={move=587}] at @s run summon ds:projectile ^-0.8^1^1 facing ^^1^10 none twilight
execute as @s[scores={move=576..598}] at @s run tag @e[name=twilight,c=1,tag=!Stopped,r=10] add Stopped
execute as @s[scores={move=576..600}] at @s run scoreboard players set @e[name=twilight,r=5] Deleter 55
execute as @s[scores={move=570..575}] at @s run tag @e[name=twilight,c=1,tag=Stopped] remove Stopped
execute as @s[scores={move=575}] at @s positioned ^^^55 run summon ds:projectile twilightTRG
execute as @s[scores={move=575}] at @s positioned ^^^55 run scoreboard players set @e[name=twilightTRG,c=1] Deleter 25

execute as @s[scores={move=560..567}] at @s run function cancel_attackv2


playanimation @s[scores={move=1000}] animation.enchant_blue3

execute as @s[scores={move=995}] at @s run particle ds:lapse_pull2 ^-1^2^
execute as @s[scores={move=995}] at @s run particle ds:lapse_pull3 ^-1^2^
execute as @s[scores={move=995}] at @s run particle ds:lapse_pull4 ^-1^2^
execute as @s[scores={move=992}] at @s run summon ds:projectile wisdomblue ^-1^2^
execute as @s[scores={move=992}] at @s run summon ds:projectile wisdomblueTRG ^^1^40
execute as @s[scores={move=990..992}] at @s run scoreboard players set @e[name=wisdomblue,c=1] Deleter 55
execute as @s[scores={move=990..992}] at @s positioned ^^1^40 run scoreboard players set @e[name=wisdomblueTRG,c=1] Deleter 55

execute as @s[scores={move=900..992},family=!gojo] at @s positioned ^^1^40 run tp @e[name=wisdomblueTRG,c=1] ~~~
execute as @s[scores={move=900..992},family=gojo] at @s positioned ^^1.25^40 unless blocks ~ ~ ~ ~ ~-10 ~ ~ 365 ~ all run tp @e[name=wisdomblueTRG,c=1] ~~~
execute as @s[scores={move=900..992},family=gojo] at @s positioned ^^1^40 if blocks ~ ~ ~ ~ ~-10 ~ ~ 365 ~ all run tp @e[name=wisdomblueTRG,c=1] ~~~

execute as @s[scores={move=930..945}] at @s run function cancel_attackv2