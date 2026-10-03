playanimation @s[scores={move=20..}] animation.primesoul.cero

execute as @s[scores={move=11..}] at @s run tp @s ~~~ facing @p[m=!c,r=80]

execute as @s[scores={move=23}] at @s run playsound music.sekiro @a[r=200]
execute as @s[scores={move=23}] at @s run particle ds:unparrymarker ~~1~

execute as @s[scores={move=20}] at @s run playsound mob.red1 @a[r=100] ~~~ 9999 1.5 9999

execute as @s[scores={move=10}] at @s run camerashake add @a[r=30] 2.5 0.15 rotational
execute as @s[scores={move=11}] at @s run playsound music.cero @a[r=300] ^^1^3 99999 1.1 99999
execute as @s[scores={move=11}] at @s run playsound mob.red2 @a[r=300] ^^1^3 99999 5 99999
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^4 run function bosses/file/boss/cero_dmg
execute as @s[scores={move=10}] at @s positioned ^^^4 run particle ds:invert
execute as @s[scores={move=9}] at @s positioned ^^^4 run summon gg:impact_frame
execute as @s[scores={move=7}] at @s run function clear_impframe

tag @s[scores={move=1..4}] remove ranged3