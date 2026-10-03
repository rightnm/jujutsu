scoreboard players random @s[type=player,scores={move=30..}] chance 3 4
playanimation @s[scores={move=30..,chance=3}] animation.frogdog.ab1
playanimation @s[scores={move=30..,chance=4}] animation.frogdog.ab2
scoreboard players set @s[type=player,scores={move=28..29}] chance 0

execute as @s[scores={move=20..},type=!player] at @s run tp @s ~~~ facing @p[m=!c,r=80]

execute as @s[scores={move=23}] at @s run playsound mob.flash @a[r=80] ~~~ 9999 1.25 9999
execute as @s[scores={move=23}] at @s run particle ds:parrymarker ~~1~

execute as @s[scores={move=28}] at @s run playsound mob.red1 @a[r=100] ~~~ 9999 1.5 9999

execute as @s[scores={move=20}] at @s run camerashake add @a[r=30] 2.5 0.15 rotational
execute as @s[scores={move=20}] at @s run playsound music.cero @a[r=300] ^^1^3 99999 1.1 99999
execute as @s[scores={move=20}] at @s run playsound mob.red2 @a[r=300] ^^1^3 99999 5 99999
execute as @s[scores={move=19}] at @s run execute as @a[r=100] at @s run particle ds:red_tint ^^5^5
execute as @s[scores={move=20}] at @s anchored eyes positioned ^^^4 run function bosses/file/boss/summons/cero_hit
execute as @s[scores={move=19}] at @s positioned ^^^4 run summon gg:impact_frame
execute as @s[scores={move=17}] at @s run function clear_impframe

tag @s[scores={move=1..5}] remove frog_ceroab1
