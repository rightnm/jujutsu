playanimation @s[scores={move=30}] animation.kaiguy_uppercut

effect @s[scores={move=11..}] slowness 1 3 true

tp @s ~~~
tp @s ~~~ facing @p[m=!c]

scoreboard players set @s[scores={move=16}] atk 2
execute as @s[scores={move=16}] run execute as @a[scores={punch=1..},r=4] at @s positioned ^^1^0.25 run function parry


execute as @s[scores={move=11..14}] at @s run tp @s ~~1~
execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run camerashake add @a[r=15] 1 0.15

execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run particle ds:ground_slam2 ~~~
execute as @s[scores={move=12..15}] at @s positioned ^^1^ run particle ds:azure_fireball2b
execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run particle ds:azure_fire2
execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run particle ds:azure_fire3
execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run particle ds:rift_azure1 
execute as @s[scores={move=12..15}] at @s positioned ^^1^1 run particle ds:rift_azure2
execute as @s[scores={move=15}] at @s positioned ^^1^1 run playsound mob.burn @a ~~~ 0.1 1.25

execute as @s[scores={move=14..15}] at @s run summon ds:knockback ~~~
execute as @s[scores={move=16}] at @s positioned ^^1^1 run playsound mob.blaze.shoot @a[r=50] ~~~ 9999 0.85 9999
execute as @s[scores={move=15}] at @s positioned ^^1^2.5 run execute as @e[tag=!Frames,r=2.49] at @s run playsound mob.punch1 @a[r=50] ~~~ 9999 0.7 9999
execute as @s[scores={move=15}] at @s positioned ^^1^2.5 run execute as @e[tag=!Frames,r=2.49] at @s run playsound mob.shock1 @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run damage @e[tag=!Frames,r=2.49] 75 suicide
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run effect @e[tag=!Frames,r=2.49] levitation 1 20 true
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run tag @e[tag=!Frames,r=2.49] add bluefire
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] onfire 50
execute as @s[scores={move=15}] at @s positioned ^^^2.5 run scoreboard players add @e[tag=!Frames,r=2.49] Stun 45

scoreboard players set @s[scores={move=1..7}] chance 0

