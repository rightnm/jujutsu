

execute as @e[tag=!Frames,family=!heroic,r=5.99] at @s run playsound mob.blood3 @a ~~~ 1 1.8
damage @e[tag=!Frames,family=!heroic,r=5.99] 15 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=5.99] Stun 20
scoreboard players set @e[tag=!Frames,family=!heroic,r=5.99] Hit 5
execute if entity @e[type=ds:primesoul,scores={move=1..},r=42] positioned ^^^6 run function bosses/file/boss/cero_dmg

