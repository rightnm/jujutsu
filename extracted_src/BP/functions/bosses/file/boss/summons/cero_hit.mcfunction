execute as @e[tag=!Frames,family=!heroic,r=3.99,scores={detect_left=1,punch=0..2}] at @s run scoreboard players set @e[type=ds:frogdog,c=1] Stun 50
execute as @e[tag=!Frames,family=!heroic,r=3.99,scores={detect_left=1,punch=0..2}] at @s run scoreboard players set @e[type=ds:frogdog,c=1] Hit 50
execute as @e[tag=!Frames,family=!heroic,r=3.99,scores={detect_left=1,punch=0..2}] at @s run damage @e[type=ds:frogdog,c=1] 12 suicide
execute as @e[tag=!Frames,family=!heroic,r=3.99,scores={detect_left=1,punch=0..2}] at @s anchored eyes positioned ^^^1 run function parry
execute as @e[tag=!Frames,family=!heroic,r=3.99] at @s run playsound mob.blood3 @a ~~~ 1 1.8

damage @e[tag=!Frames,family=!heroic,r=3.99] 20 suicide

scoreboard players set @e[tag=!Frames,family=!heroic,r=3.99] Hit 5
execute if entity @e[type=ds:frogdog,scores={move=1..},r=36] positioned ^^^4 run function bosses/file/boss/summons/cero_hit
execute if entity @e[hasitem={item=ds:frog_cero,location=slot.weapon.mainhand},scores={move=1..},r=36] positioned ^^^4 run function bosses/file/boss/summons/cero_hit

