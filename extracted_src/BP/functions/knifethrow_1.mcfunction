execute as @s[scores={Deleter=5..}] unless entity @e[scores={infinity=1..},r=3] if block ^^^0.8 air run tp @s ^^^0.8
execute as @s[scores={Deleter=5..}] unless entity @e[scores={infinity=1..},r=3] if block ^^^0.8 air run tp @s ^^^0.8


execute unless entity @s[scores={Deleter=1..}] at @s run scoreboard players set @s Deleter 35

tp @s ~~~~ 0 


execute if entity @e[tag=!Frames,type=!ds:knife,type=!ds:knives,type=!ds:bayer,r=2.25] run scoreboard players set @s[scores={Deleter=5..}] Deleter 4

execute as @s[scores={Deleter=3}] at @s run particle ds:punch1 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:punch2 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:punch3 ~~~
execute as @s[scores={Deleter=3}] at @s run particle ds:punch4 ~~~
execute as @s[scores={Deleter=3}] at @s run playsound mob.slice2 @a[r=40] ~~~ 99999 1.8 99999
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=2.25] Hit 3
execute as @s[scores={Deleter=3}] at @s run scoreboard players add @e[tag=!Frames,r=2.25] Evade 5
execute as @s[scores={Deleter=3}] at @s run scoreboard players set @e[tag=!Frames,r=2.25] Stun 5
execute as @s[scores={Deleter=3}] at @s run damage @e[tag=!Frames,r=2.25] 6 override

event entity @s[scores={Deleter=0..2}] ds:disappear