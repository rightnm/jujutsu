playanimation @s[scores={move=25}] animation.pyro_beam

effect @s[scores={move=15..}] slowness 1 2 true
effect @s[scores={move=1..3}] slowness 0 20 true

tag @s[scores={move=1..2},tag=form3d] remove form3d

tag @s[scores={move=13..,Stun=1..},tag=form3d] remove form3d
playanimation @s[scores={move=13..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=13..,Stun=1..}] move 0

scoreboard players set @s[scores={move=1..}] Move 10
scoreboard players set @s[scores={move=3..10}] Camera 10

execute as @s[scores={move=10..13}] at @s run scriptevent ds:knockback 2

execute as @s[scores={move=25}] at @s run tp @s @s
execute as @s[scores={move=5..11}] at @s run tp @s ~~~


execute as @s[scores={move=11..}] at @s run playsound mob.blaze.shoot @a[r=20] ~~~ 99999 0.7 99999
execute as @s[scores={move=11..}] at @s run camerashake add @a[r=20] 0.08 0.08

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex1
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex2
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex3
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex4
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex5
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex6
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^1 run particle ds:fireball_l_ex7

execute as @s[scores={move=10},type=player] at @s anchored eyes positioned ^^-0.3^3 run camera @s set minecraft:free pos ^70^2^40 facing ^^2^40
execute as @s[scores={move=12}] at @s anchored eyes positioned ^^-0.3^3 run camera @a[r=50] fade time 0 0 0.1 color 255 255 255

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3 run playsound mob.shock1 @a[r=400] ~~~ 9999 0.75 9999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3 run playsound mob.shock2 @a[r=400] ~~~ 9999 0.75 9999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3 run playsound mob.wither.shoot @a[r=400] ~~~ 9999 0.35 9999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3 run playsound mob.red2 @a[r=400] ~~~ 9999 0.75 9999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^-0.3^3.5 run function flames/pyro_beam