execute as @e[tag=demonicblitz,c=1] at @s unless entity @s[scores={detect_health=0..10}] run damage @s 5 override
scoreboard players set @e[tag=demonicblitz,c=1] Hit 3

summon ds:lapse_explode
particle ds:heavy_impact1 ~~~
particle ds:large_impact1 ~~~
particle ds:large_impact2 ~~~
particle ds:ground_slam2 ~~~
particle ds:slam_dust2 ~~~
particle ds:slam_dust1 ~~~
particle ds:crater2
kill @e[type=item,r=15]
playsound random.explode @a[r=50] ~~~ 99999 0.8 99999
playsound mob.wither.break_block @a[r=50] ~~~ 99999 0.8 99999
particle ds:dirt2 ~~0.5~
camerashake add @a[r=50] 2.5 0.2