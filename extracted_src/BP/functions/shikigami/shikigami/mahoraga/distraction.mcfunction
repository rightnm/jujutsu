playanimation @s[scores={move=15}] animation.iverted_spear.ab2
execute as @s[scores={move=14..}] at @s run tp @s @s


execute as @s[scores={move=5..9}] at @s run particle ds:large_slam1
execute as @s[scores={move=5..9}] at @s run particle ds:large_slam2
execute as @s[scores={move=5..9}] at @s run particle ds:large_dust ~~3~

scoreboard players set @s[scores={move=5}] flashstep 7
scoreboard players set @s[scores={move=5}] chance 1
scoreboard players set @s[scores={move=5}] Disabled 0
scoreboard players set @s[scores={move=5}] move 0


