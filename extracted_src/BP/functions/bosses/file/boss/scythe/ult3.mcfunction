playanimation @s[scores={move=145..}] animation.primesoul.scythe_ult3

execute as @s[scores={move=145}] at @s run playsound mob.wither.hurt @a[r=200] ~~~ 9999 0.5 9999

execute as @s[scores={move=125},type=!player] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=125},type=!player] at @s run playsound music.sekiro @a[r=200]

scoreboard players set @s Frames 7
scoreboard players set @s Move 7


execute as @s[scores={move=115}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=115}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=116}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=116}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=109}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=109}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=106}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=106}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=103}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=103}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=100}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=100}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=97}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=97}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=94}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.2 9999
execute as @s[scores={move=94}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.2 9999

execute as @s[scores={move=95..115},type=!player] at @s run tp @s ^^^2.5 facing @p[m=!c]
execute as @s[scores={move=95..115},type=!player] at @s run tp @s ~ 240 ~

execute as @s[scores={move=95..115},type=player] at @s run scriptevent ds:autoJump2

execute as @s[scores={move=95..115}] at @s run damage @e[tag=!Frames,family=!heroic,r=16] 3 suicide
execute as @s[scores={move=95..115}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=16] Hit 3
execute as @s[scores={move=95..115}] at @s run camerashake add @a[r=200] 0.07 0.08
execute as @s[scores={move=95..115}] at @s run particle ds:origin_spin1 ~~1~
execute as @s[scores={move=94}] at @s run particle ds:demons_descent1 ~~1~
execute as @s[scores={move=94}] at @s run particle ds:demons_descent2 ~~1~
execute as @s[scores={move=94}] at @s run particle ds:demons_descent3 ~~1~
execute as @s[scores={move=94}] at @s run particle ds:demons_descent4 ~~1~
execute as @s[scores={move=94}] at @s run summon ds:red_reverse
execute as @s[scores={move=94}] at @s run summon ds:red_reverse

execute as @s[scores={move=65},type=!player] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=65},type=!player] at @s run playsound music.sekiro @a[r=200]

execute as @s[scores={move=55}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=55}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=52}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=52}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=49}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=49}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=46}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=46}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=43}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=43}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=30}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=30}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=37}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=37}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999 
execute as @s[scores={move=34}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=34}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=31}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=31}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=28}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=28}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=25}] at @s run playsound mob.slash @a[r=200] ~~~ 9999 1.25 9999
execute as @s[scores={move=25}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 9999 1.25 9999

execute as @s[scores={move=25..55},type=!player] at @s run tp @s ^^^2.5 facing @p[m=!c]
execute as @s[scores={move=25..55},type=!player] at @s run tp @s ~ 240 ~

execute as @s[scores={move=25..55},type=player] at @s run scriptevent ds:autoJump2

execute as @s[scores={move=1..25}] at @s run tp @s ~~~

execute as @s[scores={move=25..55}] at @s run damage @e[tag=!Frames,family=!heroic,r=16] 3 suicide
execute as @s[scores={move=25..55}] at @s run scoreboard players set @e[tag=!Frames,family=!heroic,r=16] Hit 3
execute as @s[scores={move=25..55}] at @s run camerashake add @a[r=200] 0.07 0.08
execute as @s[scores={move=25..55}] at @s run particle ds:origin_spin1 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:demons_descent1 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:demons_descent2 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:demons_descent3 ~~1~
execute as @s[scores={move=24}] at @s run particle ds:demons_descent4 ~~1~
execute as @s[scores={move=24}] at @s run summon ds:red_reverse
execute as @s[scores={move=24}] at @s run summon ds:red_reverse


tag @s[scores={move=1..3}] remove scytheult3
