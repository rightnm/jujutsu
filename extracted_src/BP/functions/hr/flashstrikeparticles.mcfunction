particle ds:punch1 ~~1~
particle ds:punch2 ~~1~
particle ds:punch3 ~~1~
particle ds:punch4 ~~1~
playanimation @s animation.stunned i 0.2

camerashake add @a[r=20] 0.5 0.15
playsound random.explode @a[r=50] ~~~ 9999 2.75 9999
playsound mob.punch @a[r=50] ~~~ 9999 1.75 9999

execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run camerashake add @a[r=20] 4 0.25
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run playsound mob.shock1 @a[r=50] ~~~ 9999 1.754 9999
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:heavy_impact1 ~~1~
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:heavy_impact2 ~~1~
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:heavy_impact3 ~~1~
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:heavy_blow1 ~~1~
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:ground_slam2
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:ground_slam3
execute as @e[scores={move=5..7,Frames=4},r=40,c=1] run particle ds:dirt0

execute if entity @e[scores={move=1..4,Frames=4},r=40,c=1] run scoreboard players set @s knockdown 20
