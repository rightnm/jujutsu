playanimation @s[scores={move=30..}] animation.astaroth_slash2

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

scoreboard players set @s[scores={move=5..13}] Frames 5
execute as @s[scores={move=10}] at @s run tp @s @s
execute as @s[scores={move=10}] at @s run summon ds:projectile  ^^^1 facing ^^^20 none equinoxslash
execute as @s[scores={move=10}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=10}] at @s run summon gg:impact_frame
execute as @s[scores={move=10}] at @s run camerashake add @a[r=100] 2 0.1
execute as @s[scores={move=10}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 1.5 9999
execute as @s[scores={move=10}] at @s run playsound mob.swordslash @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s run playsound mob.distort2 @a[r=100] ~~~ 9999 1.5 9999