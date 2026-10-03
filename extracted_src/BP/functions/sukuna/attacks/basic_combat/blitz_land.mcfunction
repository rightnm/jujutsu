damage @e[tag=demonicblitz,c=1] 40 override
scoreboard players operation @e[tag=demonicblitz,c=1] damage += @s damageadd

scoreboard players set @e[tag=demonicblitz,c=1] knockdown 60
scoreboard players set @e[tag=demonicblitz,c=1] Stun 30
scoreboard players add @e[tag=demonicblitz,c=1] Evade 45
scoreboard players set @e[tag=demonicblitz,c=1] Hit 10

execute as @s if entity @e[tag=griefable] run effect @e[r=20] resistance 1 10 true
execute as @s if entity @e[tag=griefable] run summon ds:red_reversal ~~~
execute as @s if entity @e[tag=griefable] run summon ds:red_reversal ~~~
execute as @s if entity @e[tag=griefable] run summon ds:red_reversal ~~~


playsound mob.burst @a[r=200] ~~~ 99999 1.15 99999

playsound random.explode @a[r=200] ~~~ 99999 0.5 99999

playsound random.explode @a[r=200] ~~~ 99999 0.3 99999

playsound random.explode @a[r=200] ~~~ 99999 0.6 99999

camerashake add @a[r=30] 4 0.5 rotational

particle ds:slam_dust1 ~~~

particle ds:slam_dust2 ~~~

camera @s fade time 0.1 0.5 0.5 color 0 0 0

particle ds:large_impact1 ~~~
particle ds:large_impact2 ~~~
particle ds:large_impact3 ~~~

particle ds:large_slam1 ~~~
particle ds:large_slam2 ~~~
particle ds:large_slam3 ~~~
particle ds:dirt4 ~~1~
particle ds:fissure2
scoreboard players set @s Move 25
scoreboard players set @s Camera 25
scoreboard players set @s move 3