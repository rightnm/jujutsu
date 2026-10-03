
execute as @e[scores={move=30..34},r=50,c=1] unless entity @e[tag=flashstrike,r=50] run tag @e[type=!item,type=!xp_orb,family=!projectile,r=6.99,c=1,tag=!Frames] add flashstrike
execute as @e[scores={move=30..34},r=50,c=1] positioned ^^^7 run function fighting/shadow_style_katana/flashstrike_tp2



