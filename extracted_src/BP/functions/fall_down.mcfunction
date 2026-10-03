execute as @s if block ~~-0.5~ air run scriptevent ds:downfall
playanimation @s[tag=!abilitying] animation.fall
particle ds:falldown
camerashake add @s 0.15 0.09
effect @s slow_falling 0 20 true
effect @s levitation 0 20 true
execute as @s unless entity @s[scores={falling=0..}] run scoreboard objectives add falling dummy
execute as @s at @s if block ~~-1~ air if block ~~-2~ air run scoreboard players add @s falling 1
execute as @s[scores={falling=3..}] unless block ~~-5.5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-6~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-4.5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-4~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-3.5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-3~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-2~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-1~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-0.5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-1.5~ air run function fall_down_slam
execute as @s[scores={falling=3..}] unless block ~~-2.5~ air run function fall_down_slam