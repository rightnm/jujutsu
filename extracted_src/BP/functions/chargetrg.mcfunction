
execute as @p[scores={Dash=1..},r=80] unless entity @e[tag=ChargeTRG,r=50] run tag @e[type=!item,type=!ds:projectile,family=!projectile,family=!despawncito,family=!damage,type=!xp_orb,type=!ds:dash0,type=!ds:dash,type=!ds:dash2,type=!arrow,tag=!unselect,type=!falling_block,type=!ds:knockback,type=!ds:lapse_explode,type=!ds:red_reversal,type=!armor_stand,r=6.99,c=1,tag=!Frames] add ChargeTRG
execute as @p[scores={Dash=1..},r=80] positioned ^^^7 run function chargetrg


