playanimation @s[scores={Dash=11..},tag=infinitydash] animation.infinitydash_dash

effect @s[scores={Dash=3..},tag=infinitydash] speed 1 10 true
effect @s[scores={Dash=1..2},tag=infinitydash] speed 0 10 true

execute as @s[scores={Dash=8},tag=infinitydash] at @s run playsound mob.enderdragon.flap @a ~~~ 1 1.1
execute as @s[scores={Dash=8},tag=infinitydash] at @s run particle ds:evade ~~~
execute as @s[scores={Dash=8},tag=infinitydash] at @s run particle ds:dirt2 ~~~
execute as @s[scores={Dash=8},tag=infinitydash] at @s run particle ds:evade1 ~~~
execute as @s[scores={Dash=8},tag=infinitydash] at @s run particle ds:evade2 ~~~
execute as @s[scores={Dash=8},tag=infinitydash] at @s run particle ds:evade3 ~~~

execute as @s[scores={Dash=7},tag=infinitydash] at @s anchored eyes positioned ^^^1 run function infinity_dash2

tag @s[scores={Dash=1..4},tag=infinitydash] remove infinitydash
