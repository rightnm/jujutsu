damage @s 1 suicide
execute as @s at @s run playsound particle.soul_escape @a[r=20] ~~~ 99999 0.8 99999
execute as @s at @s run particle ds:curse_warded1b ~~1~
execute as @s at @s run particle ds:curse_warded2b ~~1~
execute as @s run execute as @e[type=ds:curse_warder_v4,c=1] at @s run spreadplayers ~ ~ 96 128 @e[family=purecurse,r=40]
