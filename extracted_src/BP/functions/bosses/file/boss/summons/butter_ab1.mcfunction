playanimation @s[scores={move=25..}] animation.butterjaffa.ab1

execute as @s[scores={move=15}] at @s run particle ds:butter2 ^^1^1 
execute as @s[scores={move=15}] at @s run playsound mob.wither.shoot @a[r=100] ~~1~ 9999 2 9999
execute as @s[scores={move=15},type=!player] at @s run summon ds:butterjaffa_sword ^^1^1 facing @p[m=!c] none "butter_sword"
execute as @s[scores={move=15},type=player] at @s run summon ds:butterjaffa_sword ^^1^1 facing ^^^10 none "butter_sword"

tag @s[scores={move=1..5}] remove butter_bladeab1
scoreboard players set @s[scores={move=14..17}] Frames 5