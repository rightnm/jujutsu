playanimation @s[scores={move=90..}] animation.primesoul.final_beam

execute as @s[scores={move=40..}] at @s run tp @s ~~~ facing @p[m=!c,r=80]

execute as @s[scores={move=35}] at @s run playsound music.sekiro @a[r=200]
execute as @s[scores={move=35}] at @s run particle ds:unparrymarker ~~1~

execute as @s[scores={move=40..}] at @s run particle ds:rift_charging1 ^^4.5^-4.5
execute as @s[scores={move=40..}] at @s run particle ds:rift_charging2 ^^4.5^-4.5
execute as @s[scores={move=40..}] at @s run particle ds:rift_charging3 ^^4.5^-4.5
execute as @s[scores={move=40..}] at @s run particle ds:rift5b ^^4.5^-4.5
execute as @s[scores={move=40..}] at @s run particle ds:rift6b ^^4.5^-4.5
execute as @s[scores={move=40..}] at @s run particle ds:rift7b ^^4.5^-4.5

execute as @s[scores={move=90}] at @s run playsound mob.red1 @a[r=100] ~~~ 9999 0.085 9999

execute as @s[scores={move=30}] at @s run camerashake add @a[r=30] 4 0.25 rotational
execute as @s[scores={move=33}] at @s run playsound music.cero @a[r=300] ^^1^3 99999 0.75 99999
execute as @s[scores={move=33}] at @s run playsound mob.red2 @a[r=300] ^^1^3 99999 0.5 99999
execute as @s[scores={move=30}] at @s anchored eyes positioned ^^^8 run function bosses/file/boss/final_cero_dmg
execute as @s[scores={move=27}] at @s anchored eyes positioned ^^^8 run function bosses/file/boss/final_cero_dmg
execute as @s[scores={move=24}] at @s anchored eyes positioned ^^^8 run function bosses/file/boss/final_cero_dmg
execute as @s[scores={move=21}] at @s anchored eyes positioned ^^^8 run function bosses/file/boss/final_cero_dmg
execute as @s[scores={move=18}] at @s anchored eyes positioned ^^^8 run function bosses/file/boss/final_cero_dmg

execute as @s[scores={move=30}] at @s positioned ^^^4 run particle ds:invert
execute as @s[scores={move=29}] at @s positioned ^^^4 run summon gg:impact_frame
execute as @s[scores={move=27}] at @s run function clear_impframe

tag @s[scores={move=1..4}] remove final_cero