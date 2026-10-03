particle ds:ground_slam2 ~~-1.5~
tag @s[tag=itemUse:ds:dash] remove itemUse:ds:dash
execute unless entity @s[scores={move=1..}] unless entity @s[scores={Move=1..}] run playanimation @s[tag=!Big,type=!ds:beru_curse] animation.dash_back
execute as @s[tag=delusional] at @s run playanimation @e[type=ds:takada_chan,c=1] animation.dash_back
playanimation @s[tag=Big,type=!ds:beru_curse] animation.dash_back_tall
playanimation @s[type=ds:beru_curse] animation.dash_back_tall
scoreboard players add @s[type=!player] hitdodge 1
scoreboard players set @s Frames 9
scoreboard players set @s[type=player] DashCD 20
scoreboard players set @s[scores={agility=50..},type=player] DashCD 10
playsound mob.enderdragon.flap @a[r=50] ~~~ 0.25 0.5 
camerashake add @s[type=player] 0.065 0.17 rotational
scriptevent ds:knockback -7