
execute as @a[scores={move=1..}] at @s run tp @s ~~~
scoreboard players set @a[scores={move=20}] Hyper 20

playanimation @a[scores={move=20..}] animation.ebony_swirl

execute as @a[scores={move=5..15}] at @s run tag @s add Frames
execute as @a[scores={move=1..4}] at @s run tag @s remove Frames

execute as @a[scores={move=5..14}] at @s run execute as @e[tag=!Frames,r=7] at @s run tp @s ~~~ facing @p[scores={move=10..11}]
execute as @a[scores={move=11..14}] at @s run particle ds:ebony1 ~~1~
execute as @a[scores={move=5..14}] at @s run playsound mob.slime.jump @a ~~~ 1 0.5
execute as @a[scores={move=5..14}] at @s run camerashake add @a[r=10] 2 0.1
execute as @a[scores={move=5..14}] at @s run execute as @e[tag=!Frames,r=17] at @s run particle ds:slice1
execute as @a[scores={move=5..14}] at @s run execute as @e[tag=!Frames,r=17] at @s run playsound random.explode @a ~~~ 0.2 2.75
execute as @a[scores={move=5..14}] at @s run damage @e[tag=!Frames,r=17] 10  magic
execute as @a[scores={move=5..14}] at @s run scoreboard players set @e[tag=!Frames,r=17] Stun 20

tag @s[scores={move=1..3}] remove wep2
