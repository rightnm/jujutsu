playanimation @s[scores={move=60..}] animation.frogdog.ab3

execute as @s[scores={move=34..},type=!player] at @s run tp @s ~~~ facing @p[m=!c,r=80]

execute as @s[scores={move=40}] at @s run playsound music.sekiro @a[r=80]
execute as @s[scores={move=40}] at @s run particle ds:unparrymarker ~~1~

execute as @s[scores={move=58}] at @s run playsound mob.red1 @a[r=100] ~~~ 9999 0.5 9999

execute as @s[scores={move=40..}] at @s run  particle ds:red1_star ~~1~


execute as @s[scores={move=35}] at @s run playsound mob.cero @a ^^1^3 99999 0.5 99999
execute as @s[scores={move=35}] at @s run execute as @a[r=300] at @s run playsound music.cero @s ^^1^3 99999 0.5 99999
execute as @s[scores={move=34}] at @s run playsound mob.red2 @a[r=300] ^^1^3 99999 4 99999

execute as @s[scores={move=34}] at @s run camerashake add @a[r=30] 2 0.5 rotational
execute as @s[scores={move=33}] at @s run execute as @a[r=100] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=32}] at @s run execute as @a[r=100] at @s run particle ds:invert ^^5^5
execute as @s[scores={move=33}] at @s run summon gg:impact_frame
execute as @s[scores={move=31}] at @s run function clear_impframe
execute as @s[scores={move=29}] at @s run summon gg:impact_frame
execute as @s[scores={move=28}] at @s run function clear_impframe
execute as @s[scores={move=27}] at @s run execute as @a[r=100] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=25..34}] at @s anchored eyes positioned ^^^6 run function bosses/file/boss/summons/cero_hit2


tag @s[scores={move=1..5}] remove frog_ceroab1