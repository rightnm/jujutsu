damage @s 1 suicide
execute as @s at @s run playsound particle.soul_escape @a[r=20] ~~~ 99999 1 99999
execute as @s at @s run particle ds:curse_warded1 ~~1~
execute as @s at @s run particle ds:curse_warded2 ~~1~
execute as @s run execute as @e[type=ds:curse_warder_v1,c=1] at @s run spreadplayers ~ ~ 30 40 @e[family=purecurse,family=!grade2,family=!grade1,family=!special_grade,r=25]
