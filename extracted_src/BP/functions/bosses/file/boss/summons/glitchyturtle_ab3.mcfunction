playanimation @s[scores={move=80..}] animation.glitchyturtle.ab3


tp @s ~~~
playanimation @s[scores={Stun=1..,move=7}] animation.stunned
scoreboard players set @s[scores={Stun=1..,move=7}] move 6

execute as @s[scores={move=70}] at @s run playsound random.splash @a[r=200] ~~~ 9999 0.25 9999
execute as @s[scores={move=10..70}] at @s run playsound random.swim @a ~~~ 0.1 0.25
execute as @s[scores={move=10..70}] at @s run particle ds:glitchy_water1
execute as @s[scores={move=10..70}] at @s run particle ds:glitchy_water2
execute as @s[scores={move=10..70}] at @s run particle ds:glitchy_water3
execute as @s[scores={move=10..70}] at @s run particle ds:glitchy_water4
execute as @s[scores={move=10..70}] at @s run effect @e[family=heroic,type=!ds:primesoul,r=50] regeneration 2 4 true
execute as @s[scores={move=10..70}] at @s run execute as @e[family=heroic,type=!ds:primesoul,r=50] at @s run particle ds:healing_aura
execute as @s[scores={move=10..70}] at @s run damage @e[family=!heroic,r=50] 1