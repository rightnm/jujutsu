playanimation @s[scores={move=75..}] animation.glitchyturtle.ab2

playanimation @s[scores={Stun=1..,move=7}] animation.stunned
scoreboard players set @s[scores={Stun=1..,move=7}] move 6

tp @s[scores={move=10..}] ~ 245 ~ facing @p[m=!c]
tp @s[scores={move=1..9}] ~ 240 ~ facing @p[m=!c]


execute as @s[scores={move=72..}] at @s run playsound mob.wind @a[r=200] ~~1~ 99999 0.8 99999
execute as @s[scores={move=50}] at @s run playsound mob.wind @a[r=200] ~~1~ 99999 0.8 99999
execute as @s[scores={move=72..}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=55}] at @s run particle ds:dirt0 ~~~
execute as @s[scores={move=26..}] at @s run particle ds:glitchy_air1 ~~1~
execute as @s[scores={move=26..}] at @s run particle ds:glitchy_air2 ~~1~
execute as @s[scores={move=26..}] at @s run particle ds:glitchy_air3 ~~1~


execute as @s[scores={move=25}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=25}] at @s run summon ds:red_reverse ~~~
execute as @s[scores={move=25}] at @s run playsound mob.wind @a[r=200] ~~1~ 99999 2 99999
execute as @s[scores={move=25}] at @s run camerashake add @a[r=50] 2 0.15 rotational
execute as @s[scores={move=25}] at @s run particle ds:glitchy_air_ex1 ~~1~
execute as @s[scores={move=25}] at @s run particle ds:glitchy_air_ex2 ~~1~
execute as @s[scores={move=25}] at @s run particle ds:glitchy_air_ex3 ~~1~
execute as @s[scores={move=25}] at @s run damage @e[tag=!Frames,family=!heroic,r=15] 30
execute as @s[scores={move=25}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=15] Stun 25


