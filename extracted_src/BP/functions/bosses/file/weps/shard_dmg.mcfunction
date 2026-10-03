

execute as @e[tag=!Frames,family=!heroic,r=9.9] at @s run playsound mob.blood3 @a ~~~ 0.15 1.8
damage @e[tag=!Frames,family=!heroic,r=9.9] 18 suicide
scoreboard players set @e[tag=!Frames,family=!heroic,r=9.9] Hit 2
execute if entity @p[tag=griefable]  run function 4x4sphere
execute if entity @p[tag=griefable]  positioned ^^^-4 run function 4x4sphere
execute if entity @p[tag=griefable]  positioned ^^^4 run function 4x4sphere

execute if entity @e[hasitem={item=ds:the_shard,location=slot.weapon.mainhand},scores={move=19..21}] run particle ds:impact2
execute if entity @e[hasitem={item=ds:the_shard,location=slot.weapon.mainhand},scores={move=19..21}] run particle ds:shard_end
execute if entity @e[hasitem={item=ds:the_shard,location=slot.weapon.mainhand},scores={move=19..21}] run particle ds:shard_end2