gamemode s @a[m=c,r=2.99,tag=!jfk]
execute as @p  run particle ds:spatial_blitz2
execute as @p  run particle ds:spatial_blitz3
execute as @p if entity @e[tag=griefable] run function 2x2sphere
execute as @p  run damage @e[tag=!Frames,r=2.99] 69420 suicide
execute as @p  run damage @e[tag=!Frames,r=4.99,tag=big] 69420 suicide
execute as @p  positioned ^^^2 run function limitless/scoped

