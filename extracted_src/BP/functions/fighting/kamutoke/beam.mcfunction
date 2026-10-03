execute as @p if entity @e[hasitem={item=ds:kamutoke},scores={move=5..35},c=1,r=50] run tag @e[r=3.99,c=1,tag=!Frames,tag=!lightning,type=!ds:kashimo,tag=!wep4] add hltn
execute as @p if entity @e[hasitem={item=ds:kamutoke},scores={move=5..35},c=1,r=50] run damage @e[r=3.99,c=1,tag=!Frames,tag=!lightning,type=!ds:kashimo,tag=!wep4] 1 override
execute as @p if entity @e[hasitem={item=ds:kamutoke},scores={move=5..35},c=1,r=50] run scoreboard players set @e[r=3.99,c=1,tag=!Frames,tag=!lightning,type=!ds:kashimo,tag=!wep4] shocked 25
execute as @p if entity @e[hasitem={item=ds:kamutoke},scores={move=5..35},c=1,r=50] positioned ^^^4 run function fighting/kamutoke/beam



