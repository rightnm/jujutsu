playanimation @s[scores={move=14}] animation.levitation


tag @s[scores={move=1..2}] remove form1c

tag @s[scores={move=13..,Stun=1..}] remove form1c
scoreboard players set @s[scores={move=13..,Stun=1..}] move 0

execute as @s[scores={move=3..11}] at @s run effect @s levitation 1 60 true
execute as @s[scores={move=1..2}] at @s run effect @s levitation 0 80 true
execute as @s[scores={move=8}] at @s run particle ds:double_jump1 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:double_jump2 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:double_jump3 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:levitate_1 ~~1~
execute as @s[scores={move=8}] at @s run particle ds:levitate_2 ~~1~
execute as @s[scores={move=8}] at @s run effect @s slow_falling 10 5 true
execute as @s[scores={move=9}] at @s run scoreboard objectives add countdown1 dummy
execute as @s[scores={move=9}] at @s run scoreboard objectives add levitate dummy
execute as @s[scores={move=8}] at @s run scoreboard players operation @s levitate += @s Energy
execute as @s[scores={move=8}] at @s run scoreboard players set @s countdown1 11
execute as @s[scores={move=8}] at @s run playsound mob.wither.shoot @a[r=50] ~~~ 9999 0.5 9999
execute as @s[scores={move=8}] at @s run camerashake add @a[r=10] 0.15 0.15
