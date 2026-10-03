playanimation @s[scores={move=40..}] animation.rift_prison.pulse

execute as @s[scores={move=11..}] at @s run camerashake add @a[r=200] 0.08 0.04 rotational
execute as @s[scores={move=11..}] at @s run particle ds:white_lightning2 ~~3.5~
execute as @s[scores={move=18..}] at @s run playsound mob.electricity @a[r=200]  ~~~ 99999 2 99999


execute as @s[scores={move=12}] at @s run particle ds:invert ~~3.5~
execute as @s[scores={move=10}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=10}] at @s run playsound mob.distort2 @a ~~~ 99999 1.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.distort3 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10}] at @s run playsound mob.shock1 @a ~~~ 99999 1.5 99999
execute as @s[scores={move=8..9}] at @s run damage @e[type=!ds:rift_prison,tag=!Frames,r=66] 33 suicide

execute as @s[scores={move=11..16}] at @s run particle ds:rift_charging3 ~~3.5~

execute as @s[scores={move=10}] at @s run particle ds:equinox_pulse ~~3.5~
execute as @s[scores={move=10}] at @s run particle ds:rift_explode ~~3.5~
execute as @s[scores={move=1..10}] at @s run particle ds:rift_explode2 ~~3.5~
execute as @s[scores={move=1..10}] at @s run particle ds:rift_explode3 ~~3.5~
