scoreboard objectives add parrycd dummy
tag @s add Frames
scoreboard players add @s Evade 2
damage @e[type=ds:primesoul,c=1] 20
scoreboard players add @e[type=ds:primesoul,c=1] Energy 15
execute if entity @e[type=ds:primesoul,c=1] run effect @s instant_health 1 2 true
scoreboard players set @s Frames 8
execute as @s unless entity @s[type=ds:kaiguy] run playsound mob.parry @a[r=25] ~~4~ 99999 1 99999
execute as @s if entity @s[type=ds:kaiguy] run playsound random.explode @a[r=25] ~~4~ 99999 4 99999
particle ds:parry1
particle ds:parry2
particle ds:parry3
camerashake add @a[r=5] 0.05 0.08
kill @s[type=ds:projectile]
execute as @s unless entity @s[type=ds:kaiguy] run scoreboard players add @e[type=ds:kaiguy,scores={Mode=0..11}] Mode 1