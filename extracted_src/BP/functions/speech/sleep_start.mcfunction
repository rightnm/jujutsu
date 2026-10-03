scoreboard players remove @s[scores={sleep_start=1..}] sleep_start 1
playanimation @s[scores={sleep_start=19..}] animation.cursed_speech.fallasleep
execute as @s[scores={sleep_start=19..}] at @s unless entity @s[scores={speech_effect=0..}] run scoreboard players set @s speech_effect 51
tp @s ~~~
scoreboard players set @s[scores={sleep_start=19..}] Camera 25
scoreboard players set @s[scores={sleep_start=19..}] Move 25
scoreboard players set @s[scores={sleep_start=19..}] Disabled 30

execute as @s[scores={sleep_start=12}] at @s run playsound mob.enderdragon.flap @a[r=50] ~~~ 999999 1 999999
execute as @s[scores={sleep_start=8}] at @s run playsound mob.asleep @a[r=50] ~~~ 999999 1 999999


camera @s[scores={sleep_start=19..},type=player] fade time 0.33 1 0 color 0 0 0
scoreboard players operation @s[scores={sleep_start=0..5}] sleep = @s speech_effect
scoreboard players operation @s[scores={sleep_start=0..5}] sleep *= two endurance

