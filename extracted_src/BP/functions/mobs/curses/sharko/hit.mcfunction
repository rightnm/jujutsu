playanimation @s[scores={move=15}] animation.sharko.hit1

execute as @s[scores={move=7}] at @s run function damages/slash_damage

execute as @s[scores={move=1..}] at @s run tp @s ~~~

execute as @s[scores={move=7}] at @s positioned ^^^4 run scoreboard players set @e[r=3.99,tag=!Frames] Stun 15
execute as @s[scores={move=7}] at @s positioned ^^^4 run scoreboard players add @e[r=3.99,tag=!Frames] Evade 20
execute as @s[scores={move=7}] at @s positioned ^^^4 run scoreboard players set @e[r=3.99,tag=!Frames] Hit 5
execute as @s[scores={move=7}] at @s positioned ^^^4 run damage @e[r=3.99,tag=!Frames] 5 override entity @s

execute as @s[scores={move=7}] at @s positioned ^^^4 run playsound mob.witch.throw @a[r=120] ~~~ 9999 0.75 9999
execute as @s[scores={move=7}] at @s positioned ^^^4  if entity @e[tag=!Frames,r=3.99] run playsound mob.sword @a[r=120] ~~~ 9999 0.5 9999
execute as @s[scores={move=7}] at @s positioned ^^^4 run camerashake add @a[r=30] 0.25 0.1 rotational
execute as @s[scores={move=7}] at @s run particle ds:ground_slam2 ^^1^2