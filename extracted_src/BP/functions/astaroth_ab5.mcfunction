playanimation @s[scores={move=65..}] animation.astaroth_slash3

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=11..}] at @s run particle ds:reality_start ~~1~
execute as @s[scores={move=25..}] at @s run playsound mob.wither.spawn @a[r=100] ~~~ 99999 0.5 99999

scoreboard players set @s[scores={move=5..13}] Frames 5
execute as @s[scores={move=10}] at @s run tp @s @s
execute as @s[scores={move=10}] at @s run summon ds:projectile  ^^^1 facing ^^^20 none realityslash
execute as @s[scores={move=16}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=15}] at @s run summon gg:impact_frame
execute as @s[scores={move=10}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=10}] at @s run summon gg:impact_frame
execute as @s[scores={move=9}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=5}] at @s run summon gg:impact_frame
execute as @s[scores={move=5}] at @s run effect @a blindness 1 1 true

execute as @s[scores={move=10}] at @s run camerashake add @a[r=100] 3 0.15 rotational
execute as @s[scores={move=10}] at @s run playsound mob.slash @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=10}] at @s run playsound mob.swordslash @a[r=100] ~~~ 9999 0.25 9999
execute as @s[scores={move=10}] at @s run playsound mob.distort2 @a[r=100] ~~~ 9999 0.5 9999
execute as @s[scores={move=10}] at @s run playsound mob.distort2 @a[r=100] ~~~ 9999 5 9999