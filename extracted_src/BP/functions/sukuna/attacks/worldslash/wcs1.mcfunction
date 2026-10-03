

playanimation @s[scores={move=30..}] animation.world_slash_small1
scoreboard players set @s[scores={move=30..}] Move 33
scoreboard players set @s[scores={move=30..}] wcschant 0

effect @s[scores={move=30..}] speed 1 25 true
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity1 ~~~
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity2 ~~~
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity3 ~~~
execute as @s[scores={move=29..}] at @s run particle ds:turbo_intensity4 ~~~

execute as @s[scores={move=30}] at @s run playsound mob.wcssay @a[r=100] ~~~ 9999 1 9999



execute as @s[scores={move=12}] at @s run summon gg:impact_frame
execute as @s[scores={move=12}] at @s run particle ds:invert ^^1^1
execute as @s[scores={move=11}] at @s run function clear_impframe
execute as @s[scores={move=11}] at @s run camerashake add @a[r=200] 1 0.1 rotational
execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^1 run function sukuna/attacks/worldslash/charge_vfx
execute as @s[scores={move=10}] at @s run playsound portal.travel @a ~~~ 99999 5 99999
execute as @s[scores={move=12}] at @s run playsound mob.slash @a ~~~ 99999 0.4 99999
execute as @s[scores={move=13}] at @s run playsound mob.slash1 @a ~~~ 99999 0.75 99999
execute as @s[scores={move=10}] at @s run playsound mob.bang @a ~~~ 99999 1 99999
execute as @s[scores={move=9}] at @s run playsound mob.shock1 @a ~~~ 99999 0.6 99999
execute as @s[scores={move=10}] at @s run playsound music.bang @s

execute as @s[scores={move=10}] at @s anchored eyes positioned ^^^7 run function wcs_damage3

tag @s[scores={move=1..3}] remove form9s
tag @s[scores={move=1..3}] remove form9s2

