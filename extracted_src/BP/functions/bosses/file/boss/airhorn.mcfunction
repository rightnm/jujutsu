playanimation @s[scores={move=50..}] animation.primesoul.horn

tp @s ~ 240 ~ facing @p[m=!c]

event entity @s[scores={move=45..}] airhorn_on
event entity @s[scores={move=1..6}] airhorn_off

execute as @s[scores={move=40}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=40}] at @s run playsound music.sekiro @a[r=200] 

execute as @s[scores={move=50}] at @s run playsound mob.wither.death @a[r=200] ~~~ 99999 0.7 99999

execute as @s[scores={move=40}] at @s run particle ds:large_impact2 ~~1.4~
execute as @s[scores={move=35}] at @s run particle ds:large_impact2 ~~1.4~
execute as @s[scores={move=30}] at @s run particle ds:large_impact2 ~~1.4~
execute as @s[scores={move=30}] at @s positioned ^^^4 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={move=30}] at @s positioned ^5^^4 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={move=30}] at @s positioned ^-5^^4 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={move=30}] at @s positioned ^10^^4 run summon ds:windhorn ~~~ facing ^^^10
execute as @s[scores={move=30}] at @s positioned ^-10^^4 run summon ds:windhorn ~~~ facing ^^^10


tag @s[scores={move=1..3}] remove ranged4