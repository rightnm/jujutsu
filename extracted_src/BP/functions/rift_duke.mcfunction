particle ds:rift1
particle ds:wind_aura
particle ds:wind_aura2
camerashake add @a[r=10] 0.08 0.08
playsound portal.portal @a ~~~ 0.05 2
execute as @s unless entity @s[scores={Deleter=0..}] run scoreboard players random @s Deleter 4000 12000



execute as @s[scores={Deleter=3..100}] at @s unless entity @e[type=ds:duke] run camerashake add @a[r=100] 0.15 0.07 rotational
execute as @s[scores={Deleter=23..100}] at @s unless entity @e[type=ds:duke] run particle ds:rift_charging1 ~~~
execute as @s[scores={Deleter=23..100}] at @s unless entity @e[type=ds:duke] run particle ds:rift_charging2 ~~~
execute as @s[scores={Deleter=23..40}] at @s unless entity @e[type=ds:duke] run particle ds:rift_charging3 ~~~


execute as @s[scores={Deleter=100}] at @s unless entity @e[type=ds:duke] run playsound portal.trigger @a ~~~ 99999 0.75 99999
execute as @s[scores={Deleter=20}] at @s unless entity @e[type=ds:duke] run camera @a[r=100] fade time 0.8 0.5 1 color 255 255 255
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run playsound mob.distort3 @a ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run playsound mob.distort1 @a ~~~ 99999 0.5 99999
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run playsound mob.wither.spawn @a ~~~ 99999 0.25 99999
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run camerashake add @a[r=100] 4 1 rotational
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run particle ds:rift_explode1 
execute as @s[scores={Deleter=0..20}] at @s unless entity @e[type=ds:duke] run particle ds:rift_explode2
execute as @s[scores={Deleter=0..5}] at @s run scoreboard objectives add duke dummy
execute as @s[scores={Deleter=0..5}] at @s run scoreboard players set @a duke 1
execute as @s[scores={Deleter=0..4}] at @s unless entity @e[type=ds:duke] run summon ds:duke ~~1~
execute as @s[scores={Deleter=0..1}] at @s run event entity @s ds:disappear
