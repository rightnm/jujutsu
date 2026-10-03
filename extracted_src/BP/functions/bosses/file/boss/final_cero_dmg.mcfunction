

execute as @e[tag=!Frames,family=!heroic,r=7.99] at @s run playsound mob.blood3 @a ~~~ 1 1.8
damage @e[tag=!Frames,family=!heroic,r=7.99] 80 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=7.99] Stun 20
scoreboard players set @e[tag=!Frames,family=!heroic,r=7.99] Hit 5
particle ds:cero_stars ~~1~
execute if entity @e[type=ds:primesoul,scores={move=1..},r=80] positioned ^^^8 run function bosses/file/boss/final_cero_dmg

