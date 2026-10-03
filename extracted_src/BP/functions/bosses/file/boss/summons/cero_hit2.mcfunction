

execute as @e[tag=!Frames,family=!heroic,r=5.99] at @s run playsound mob.blood3 @a ~~~ 1 1.8
damage @e[tag=!Frames,family=!heroic,r=5.99] 4 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=5.99] Stun 20
scoreboard players set @e[tag=!Frames,family=!heroic,r=5.99] Hit 5
execute if entity @e[type=ds:frogdog,scores={move=1..},r=76] positioned ^^^6 run function bosses/file/boss/summons/cero_hit2
execute if entity @e[hasitem={item=ds:frog_cero,location=slot.weapon.mainhand},scores={move=1..},r=76] positioned ^^^6 run function bosses/file/boss/summons/cero_hit2

