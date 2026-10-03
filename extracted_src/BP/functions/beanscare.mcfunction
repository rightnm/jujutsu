scoreboard objectives add beanencounter dummy
scoreboard players add @s beanencounter 1

execute as @s[scores={beanencounter=3..7}] at @s run effect @s nausea 9 1 true
execute as @s[scores={beanencounter=3..7}] at @s run playsound ambient.cave @s ~~~ 999999 0.75 999999

execute as @s[scores={beanencounter=7..9}] at @s run effect @s darkness 9 1 true
execute as @s[scores={beanencounter=7..9}] at @s run effect @s nausea 9 1 true
execute as @s[scores={beanencounter=7..9}] at @s run playsound ambient.cave @s ~~~ 999999 0.75 999999
execute as @s[scores={beanencounter=7..9}] at @s run playsound ambient.cave @s ~~~ 999999 1.5 999999
execute as @s[scores={beanencounter=7..9}] at @s run playsound ambient.cave @s ~~~ 999999 1 999999

execute as @s[scores={beanencounter=10..13}] at @s run damage @s 20
execute as @s[scores={beanencounter=10..13}] at @s run effect @s blindness 15 1 true
execute as @s[scores={beanencounter=10..13}] at @s run effect @s nausea 15 1 true
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 0.75 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 1.5 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 1 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 1 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 1 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 0.75 999999
execute as @s[scores={beanencounter=10..13}] at @s run playsound ambient.cave @s ~~~ 999999 1.5 999999


execute as @e[family=stalker,c=1] at @s run function beandeath