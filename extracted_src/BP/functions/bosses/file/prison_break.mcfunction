playanimation @s[scores={move=1000..}] animation.rift_prison.break
execute as @s[scores={move=1000..}] at @s run execute as @a[r=200] at @s run playsound music.buildup @s ~~~ 9999 4 9999
execute as @s[scores={move=1000..}] at @s run stopsound @a music.ultra1

execute as @s[scores={move=1000..}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=1000}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=1000..}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=997}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=997}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=997}] at @s run particle ds:large_impact2 ~~3.5~


execute as @s[scores={move=990}] at @s run playsound mob.alarm @a ~~~ 99999 0.8 99999


execute as @s[scores={move=970}] at @s run playsound mob.alarm @a ~~~ 99999 0.8 99999


execute as @s[scores={move=950}] at @s run playsound mob.alarm @a ~~~ 99999 0.8 99999

execute as @s[scores={move=993}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=993}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=993}] at @s run particle ds:large_impact2 ~~3.5~


execute as @s[scores={move=990}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 99999 0.5 99999
execute as @s[scores={move=921..990}] at @s run playsound random.explode @a[r=200] ~~15~ 99999 0.8 99999
execute as @s[scores={move=921..990}] at @s run particle ds:prison_break1 ~~3.5~
execute as @s[scores={move=921..960}] at @s run particle ds:prison_break_glow1 ~~3.5~
execute as @s[scores={move=921..990}] at @s run camerashake add @a[r=200] 2 0.09


execute as @s[scores={move=981}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=981}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=981}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=944}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=944}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=944}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=977}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=977}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=977}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=963}] at @s run playsound mob.shock1 @a ~~~ 99999 1 99999
execute as @s[scores={move=963}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=963}] at @s run particle ds:large_impact2 ~~3.5~

execute as @s[scores={move=920}] at @s run particle ds:invert
execute as @s[scores={move=916}] at @s run summon gg:impact_frame ~ 240 ~
execute as @s[scores={move=915}] at @s run particle ds:invert
execute as @s[scores={move=1..916}] at @s run playsound mob.impact @a ~~~ 9999 0.5 9999
execute as @s[scores={move=1..920}] at @s run playsound mob.distort3 @a ~~~ 9999 0.5 9999
execute as @s[scores={move=1..920}] at @s run particle ds:reactor_activate2
execute as @s[scores={move=1..920}] at @s run particle ds:rift_explode2 ~~3.5~
execute as @s[scores={move=1..920}] at @s run particle ds:rift_explode3 ~~3.5~
execute as @s[scores={move=1..920}] at @s run particle ds:rift_explode4 ~~3.5~
execute as @s[scores={move=919..920}] at @s run particle ds:demons_descent1 ~~3.5~
execute as @s[scores={move=919..920}] at @s run particle ds:demons_descent2 ~~3.5~
execute as @s[scores={move=919..920}] at @s run particle ds:demons_descent3 ~~3.5~
execute as @s[scores={move=1..920}] at @s run particle ds:demons_descent4 ~~3.5~
execute as @s[scores={move=1..915}] at @s run tag @a add darkness
execute as @s[scores={move=1..}] at @s run tag @a[r=300,tag=!arenaboss] add arenaboss
execute as @s[scores={move=1..916}] at @s unless entity @e[name="primeorb"] run summon ds:projectile "primeorb" ~ 263.5 ~
execute as @s[scores={move=1..915}] at @s run event entity @s ds:disappear
