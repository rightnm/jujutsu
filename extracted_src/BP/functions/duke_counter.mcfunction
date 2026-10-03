playanimation @s[scores={move=40..}] animation.duke_counter

tp @s ~~~ 
tp @s ~~~ facing @p[m=!c]

execute as @s[scores={move=3..37}] at @s run playsound mob.wind @a ~~~ 0.07 3

execute as @s[scores={move=3..37}] at @s run effect @s slowness 1 3 true
execute as @s[scores={move=3..37}] at @s run particle ds:wind_shield ~~1~
execute as @s[scores={move=3..37}] at @s run particle ds:wind_shield2 ~~1~


execute as @s[scores={move=3..37}] at @s if entity @e[scores={atk=1..2},type=!ds:duke,r=3] run scoreboard players set @e[scores={atk=1..2},type=ds:duke,r=3] Stun 5
execute as @s[scores={move=3..37}] at @s if entity @e[scores={atk=1..2},type=!ds:duke,r=3] run function dukeparry
execute as @s[scores={move=3..37,Hit=1..}] at @s run function dukeparry
execute as @s[scores={move=3..37,Hit=1..}] at @s run scoreboard players set @s Hit 0
execute as @s[scores={move=3..37,Flourish=1..}] at @s run scoreboard players set @s Flourish 0
execute as @s[scores={move=3..37,Stun=1..}] at @s run scoreboard players set @s Stun 0