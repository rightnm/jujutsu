scoreboard players remove @s[scores={plummet_start=1..}] plummet_start 1
playanimation @s[scores={plummet_start=19..}] animation.cursed_speech.plummeting
execute as @s[scores={plummet_start=19..}] at @s unless entity @s[scores={speech_effect=0..}] run scoreboard players set @s speech_effect 5
tp @s ~~~
scoreboard players set @s[scores={plummet_start=19..}] Camera 25
scoreboard players set @s[scores={plummet_start=19..}] Move 25
scoreboard players set @s[scores={plummet_start=19..}] Disabled 30

execute as @s[scores={plummet_start=16..}] at @s run playsound mob.infinity @a[r=50] ~~~ 999999 3.33 999999
execute as @s[scores={plummet_start=16..}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 999999 0.5 999999

execute as @s[scores={plummet_start=5..10}] at @s run particle ds:ground_slam1 ~~~
execute as @s[scores={plummet_start=5..}] at @s run particle ds:plummet1 ~~~
execute as @s[scores={plummet_start=5..}] at @s run particle ds:plummet2 ~~~
execute as @s[scores={plummet_start=5..}] at @s run particle ds:plummet3 ~~~
execute as @s[scores={plummet_start=5..}] at @s run camerashake add @a[r=10] 0.2 0.15

execute as @s[scores={plummet_start=5..6}] at @s run particle ds:ground_impact2_small
execute as @s[scores={plummet_start=5..6}] at @s run particle ds:fissure2
execute as @s[scores={plummet_start=5..6}] at @s run particle ds:dirt0
execute as @s[scores={plummet_start=6}] at @s run playsound mob.burst @a[r=100] ~~~ 9999 4 9999

scoreboard players set @s[scores={speech_effect=0,plummet_start=0..6}] speech_effect 8

scoreboard players operation @s[scores={plummet_start=0..5}] plummet = @s speech_effect
scoreboard players set @s[scores={plummet_start=0..5}] plummet_start 0

