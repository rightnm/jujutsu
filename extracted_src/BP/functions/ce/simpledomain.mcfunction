
playanimation @s[scores={move=60..}] animation.simple_domain_use

scoreboard players set @s[scores={move=15..}] Move 6
scoreboard players set @s[scores={move=15..}] Camera 6
scoreboard players set @s[scores={move=15..}] infinity 7

execute as @s[scores={move=60}] at @s run tp @s @s
execute as @s[scores={move=60},type=player] at @s run camera @s fade time 0 0.6 0.45 color 0 0 0
execute as @s[scores={move=59..60},type=player] at @s run camera @s set minecraft:free pos ^^^10 facing ^^2^-1
execute as @s[scores={move=57..58},type=player] at @s run camera @s set minecraft:free ease 2 in_out_circ pos ^^1^4 facing ~~1~

execute as @s[scores={move=50}] at @s run particle ds:simpledomain1 ^-1.85^1.5^1
execute as @s[scores={move=30}] at @s run particle ds:simpledomain2 ^1.85^1^1

execute as @s[scores={move=24}] at @s run particle ds:simple_domain_start1
execute as @s[scores={move=24}] at @s run particle ds:simple_domain_start2
execute as @s[scores={move=24}] at @s run particle ds:simple_domain_start3
execute as @s[scores={move=20}] at @s run summon ds:simple_domain ~~~
execute as @s[scores={move=19..20},type=!player] at @s run tag @e[type=ds:simple_domain,r=5,c=1] add simpledomain_mobs
execute as @s[scores={move=20}] at @s run scoreboard players operation @e[type=ds:simple_domain,r=5,c=1] Deleter += @s Energy
execute as @s[scores={move=20}] at @s run scoreboard players operation @e[type=ds:simple_domain,r=5,c=1] Deleter /= ten endurance
execute as @s[scores={move=20}] at @s run scoreboard players add @e[type=ds:simple_domain,r=5,c=1] Deleter 300

execute as @s[scores={move=20}] at @s run playsound beacon.power @a[r=100] ~~~ 9999 0.64 9999
execute as @s[scores={move=20}] at @s run playsound mob.bass @a[r=100] ~~~ 9999 1.2 9999
execute as @s[scores={move=20}] at @s run playsound mob.wither.shoot @a[r=10] ~~~ 0.2 0.5
execute as @s[scores={move=18..20}] at @s run camerashake add @a[r=15] 1.25 0.15

scoreboard players set @s[scores={move=4..15}] move 3

tag @s[scores={move=1..5},tag=simpledomain] remove simpledomain