
execute as @p if entity @e[tag=griefable] run function 4x4sphere
execute as @p if entity @e[tag=griefable] positioned ^2^^ run function 4x4sphere
execute as @p if entity @e[tag=griefable] positioned ^-2^^ run function 4x4sphere
execute as @p  run damage @e[tag=!Frames,r=2.99] 14 override
execute as @p  run damage @e[tag=!Frames,r=4.99,tag=big] 14 override
execute as @p if entity @e[tag=glocks,r=50]  positioned ^^^3 run function limitless/glocks
