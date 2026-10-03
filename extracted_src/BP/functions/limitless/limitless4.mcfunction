playanimation @s[scores={move=15}] animation.spatial_blitz

tag @e[scores={move=1..2}] remove form4

tag @s[scores={move=6..,Stun=1..}] remove form4
scoreboard players set @s[scores={move=6..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Frames 4

execute as @s[scores={move=5}] at @s run playsound beacon.deactivate @a ~~~ 1000 1.5 1000
execute as @s[scores={move=5}] at @s run playsound random.fizz @a ~~~ 1000 1.25 1000
execute as @s[scores={move=5}] at @s run playsound random.fizz @a ~~~ 1000 1.75 1000

execute as @s[scores={move=15}] at @s run particle ds:lapse_pull4 ^^1^1

execute as @s[scores={move=5}] at @s run particle ds:lapse_pull2 ^^1^1
execute as @s[scores={move=5}] at @s run camerashake add @a[r=40] 0.1 0.15
execute as @s[scores={move=5}] at @s run particle ds:spatial_blitz1 ^^1^1
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^-0.4^1 run function limitless/blitz
