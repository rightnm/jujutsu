playanimation @s[scores={move=55..56}] animation.primesoul.scythe_ult2

execute as @s[scores={move=55}] at @s run playsound music.bass3 @a[r=500]
execute as @s[scores={move=55}] at @s run playsound mob.wither.hurt @a ~~1~ 9999 2 9999
execute as @s[scores={move=55}] at @s run particle ds:dirt0
execute as @s[scores={move=55}] at @s run particle ds:leap
execute as @s[scores={move=55}] at @s run particle ds:large_impact1
execute as @s[scores={move=55}] at @s run particle ds:large_impact2
tp @s[scores={move=1..54},type=!player] ~ 260 ~

scoreboard players set @s Frames 15

tp @s[scores={move=54},type=player] ~ ~40 ~
tp @s[scores={move=1..53},type=player] ~ ~ ~

execute as @s[scores={move=35}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=35}] at @s run playsound music.sekiro @a[r=500]

execute as @s[scores={move=27}] at @s run particle ds:reality_teared
execute as @s[scores={move=27}] at @s run playsound music.tear @a[r=500]
execute as @s[scores={move=27}] at @s run camera @a[r=500] fade time 0.1 0.5 1 color 255 255 255
execute as @s[scores={move=25},type=!player] at @s run damage @e[family=!heroic,tag=!Frames,r=500] 80 suicide

execute as @s[scores={move=25},type=player] at @s run damage @e[family=!heroic,tag=!Frames,r=500] 200 suicide

execute as @s[scores={move=25}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=500] Stun 30
execute as @s[scores={move=25}] at @s run scoreboard players set @e[family=!heroic,tag=!Frames,r=500] Hit 15
execute as @s[scores={move=25}] at @s run particle ds:rift1b ~~1~
execute as @s[scores={move=20..25}] at @s run particle ds:rift_explode ~~1~
execute as @s[scores={move=20..25}] at @s run particle ds:rift_explode2 ~~1~
execute as @s[scores={move=20..25}] at @s run particle ds:reality_tear ~~1~

tp @s[scores={move=1..5},type=!player] ~ 240 ~
tag @s[scores={move=1..3}] remove scytheult2
