execute unless entity @s[scores={Deleter=0..}] run scoreboard players set @s Deleter 601
execute as @s[scores={Deleter=500..}] at @s run stopsound @a music.ultra1
execute as @s[scores={Deleter=500..595}] at @s run event entity @e[type=ds:rift_prison] ds:disappear
execute as @s[scores={Deleter=500..595}] at @s run tag @a[r=200] add darkness

execute as @s[scores={Deleter=600}] at @s run playsound beacon.power @a ~~~ 9999 0.75 9999
execute as @s[scores={Deleter=600}] at @s run playsound conduit.short @a ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=370..}] at @s run particle ds:primeorb1 ~~~
execute as @s[scores={Deleter=370..}] at @s run particle ds:primeorb2 ~~~
execute as @s[scores={Deleter=340..430}] at @s run particle ds:primeorb4 ~~~

execute as @s[scores={Deleter=300..420}] at @s run particle ds:primeorb_1
execute as @s[scores={Deleter=425}] at @s run playsound random.fizz @a ~~~ 999999 0.1 999999

execute as @s[scores={Deleter=61..100}] at @s run particle ds:primeorb_2
playsound conduit.ambient @a ~~~ 0.2 1.1
execute as @s[scores={Deleter=23..28}] at @s run execute as @a at @s unless entity @s[scores={primesoul=1..}] run scoreboard objectives add primesoul dummy
execute as @s[scores={Deleter=23..28}] at @s run execute as @a at @s unless entity @s[scores={primesoul=1..}] run scoreboard players add @s primesoul 1

execute as @s[scores={Deleter=100}] at @s run playsound portal.trigger @a ~~~  99999 1 99999
execute as @s[scores={Deleter=51..76}] at @s run particle ds:primeorb3 ~~~

execute as @s[scores={Deleter=23..35}] at @s run execute as @a[r=200] at @s run tp @s ~~~ facing  -59936 260 -59937
execute as @s[scores={Deleter=23..24}] at @s run particle ds:primeorb_3
execute as @s[scores={Deleter=23..24}] at @s run playsound respawn_anchor.deplete @a ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=23..24}] at @s run playsound mob.distort1 @a ~~~ 9999 3 9999
execute as @s[scores={Deleter=23..24}] at @s run playsound mob.distort3 @a ~~~ 9999 0.25 9999
execute as @s[scores={Deleter=23..24}] at @s run playsound mob.bass @a ~~~ 9999 0.5 9999
execute as @s[scores={Deleter=15..22}] at @s run particle ds:rift1 ~~-1~

execute as @s[scores={Deleter=22..24}] at @s unless entity @e[type=ds:primesoul] run summon ds:primesoul ~ 260 ~ 
execute as @s[scores={Deleter=4..24}] at @s run summon gg:impact_frame ~ 240 ~

 
