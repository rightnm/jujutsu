playanimation @s[scores={move=39}] animation.maxelephant_spawn

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5


tag @s[scores={move=1..2}] remove form7b

tag @s[scores={move=34..,Stun=1..}] remove form7b
scoreboard players set @s[scores={move=34..,Stun=1..}] move 0

execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=39}] at @s run tp @s ~~-0.1~
execute as @s[scores={move=1..}] at @s run tp @s @s

execute as @s[scores={move=36}] at @s run playsound mob.elephant @a ^^3^6 100000 1 10000
execute as @s[scores={move=36}] at @s run particle ds:shikigami_appear3 ^^1.5^6
execute as @s[scores={move=1..9}] at @s run particle ds:shikigami_appear3 ^^1.5^6
execute as @s[scores={move=36}] at @s run summon ds:maxelephant2 ^^^6
execute as @s[scores={move=1..35}] at @s run tp @e[type=ds:maxelephant2,c=1] ^^^6 facing ^^^50
execute as @s[scores={move=34..35}] at @s run scoreboard players set @e[type=ds:maxelephant2,c=1] Deleter 31
execute as @e[type=ds:maxelephant2,c=1] at @s run function shikigami/shikigami/maxelephantstomp