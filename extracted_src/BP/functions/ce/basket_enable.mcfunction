

playanimation @s[scores={move=20..}] animation.basket_enable

scoreboard players set @s[scores={move=7..}] Move 7

execute as @s[scores={move=15}] at @s run playsound beacon.power @a[r=25] ~~~ 9999 1.5 9999
execute as @s[scores={move=15}] at @s run camerashake add @a[r=10] 0.15 1 
execute as @s[scores={move=7..13}] at @s run particle ds:divergent_ac2 ~~1~
execute as @s[scores={move=7..13}] at @s run particle ds:divergent_ac3 ~~1~
execute as @s[scores={move=7..13}] at @s run particle ds:divergent_ac6 ~~~
execute as @s[scores={move=18}] at @s run scoreboard objectives add hollowwickerbasket dummy
execute as @s[scores={move=18}] at @s run scoreboard objectives add domainimmune dummy
execute as @s[scores={move=17}] at @s run scoreboard players set @s hollowwickerbasket 300
execute as @s[scores={move=16}] at @s run scoreboard players operation @s hollowwickerbasket += @s Energy
execute as @s[scores={move=15}] at @s run scoreboard players operation @s hollowwickerbasket /= two endurance


tag @s[scores={move=1..3},tag=hollow_basket_activate] remove hollow_basket_activate

