playanimation @s[scores={move=40}] animation.judgement

scoreboard players set @s[scores={move=30..,Stun=1..}] move 3

tag @s[scores={move=1..2},tag=form3] remove form3

scoreboard players set @s[scores={move=7..35}] Camera 5
execute as @s[scores={move=5..35}] at @s run tp @s ~~~

execute as @s[scores={move=38..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=38..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=38..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=38..}] at @s if block ~~-1.5~ air run tp @s ~~-1.5~
execute as @s[scores={move=38..}] at @s if block ~~-2.5~ air run tp @s ~~-2.5~

execute as @s[scores={move=20}] at @s run summon ds:judgeman ^^^-1.5 facing ^^^10 none Judgeman
execute as @s[scores={move=19..20}] at @s run scoreboard players set @e[name=Judgeman,c=1,r=5] Deleter 201
execute as @s[scores={move=15}] at @s run tellraw @a[r=30] {"rawtext":[{"text":"§c(!) All Techniques cannot be used in the Judgeman's sight."}]}
execute as @s[scores={move=20}] at @s run playsound mob.wither.hurt @a[r=30] ~~~ 99999 0.5 99999
execute as @s[scores={move=20}] at @s run playsound mob.wither.hurt @a[r=30] ~~~ 99999 0.25 99999
execute as @s[scores={move=20}] at @s run playsound beacon.power @a[r=30] ~~~ 99999 0.5 99999


