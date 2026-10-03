
execute as @p[tag=bladeult1,r=80] unless entity @e[tag=bladetrg,r=50] run tag @e[type=!item,family=!projectile,r=6.99,c=1,tag=!Frames] add bladetrg
execute as @p[tag=bladeult1,r=80] positioned ^^^7 run function bosses/file/boss/blade/trg


