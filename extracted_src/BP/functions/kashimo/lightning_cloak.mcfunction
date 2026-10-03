effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0,detect_sprint=1..}] speed 1 16 true
effect @s[scores={BasicM1s=0,BasicM1=0,AfterAnim=0}] jump_boost 1 4 true
effect @s[type=!player,scores={move=0,cutscene=0,Stun=0}] speed 1 3 true

execute as @s[scores={Dash=3..10}] run particle ds:lightning_cloak_dash


execute as @s[scores={Energy=1..}] if block ~~~ water run function kashimo/water_conduct

execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak1
execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak2
execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak3
execute as @s[scores={countdown1=1..3,Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak4
execute as @s[scores={Dash=0..2},tag=!abilitying] run particle ds:lightning_cloak5

scoreboard players add @s ability2 1

execute unless entity @s[scores={countdown1=0..}] run scoreboard objectives add countdown1 dummy
execute unless entity @s[scores={countdown1=0..}] run scoreboard players add @s countdown1 0

scoreboard players remove @s[scores={countdown1=1..}] countdown1 1

execute as @s[scores={countdown1=0}] at @s run playsound mob.electricity @a ~~~ 0.025 2
execute as @s[scores={countdown1=0..2}] at @s run playsound mob.electricity @a ~~~ 0.025 1.75
scoreboard players set @s[scores={countdown1=0}] countdown1 7

