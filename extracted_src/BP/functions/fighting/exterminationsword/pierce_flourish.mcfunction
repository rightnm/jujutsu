playanimation @s[scores={move=60},tag=wep2,tag=exterminationsword] animation.extermination_ab2


tag @s[scores={move=1..32},tag=wep2,tag=exterminationsword] remove wep2

tag @s[scores={move=57..,Stun=1..},tag=wep2,tag=exterminationsword] remove wep2
scoreboard players set @s[scores={move=57..,Stun=1..},tag=wep2,tag=exterminationsword] move 0

scoreboard players set @e[scores={move=4..56},tag=wep2,tag=exterminationsword] Hyper 4
scoreboard players set @e[scores={move=4..56},tag=wep2,tag=exterminationsword] Move 4

execute as @s[scores={move=53..},tag=wep2,tag=exterminationsword] at @s if block ~~-1~ air run tp @s ~~-1~

execute as @s[scores={move=41..53},tag=wep2,tag=exterminationsword] at @s run tp @s @s
execute as @s[scores={move=38..41},tag=wep2,tag=exterminationsword] at @s run summon ds:dash ^^^1

execute as @s[scores={move=56},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run  playsound mob.slice @a[r=100] ~~~ 9999999 1.15 999999

execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run tag @e[tag=!Frames,r=2.2,c=1] add PierceFlourish
execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] Stun 35
execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Hit 5
execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Evade 6
execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24] 6 override entity @s
execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 if entity @e[tag=Frames,r=2.24] run playsound mob.sword @a ~~~

execute as @s[scores={move=55},tag=wep2,tag=exterminationsword] at @s run function damages/slash_damage
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s run function damages/blunt_damage

execute as @s[scores={move=44..50},tag=wep2,tag=exterminationsword] at @s unless entity @e[tag=PierceFlourish] run scoreboard players set @s move 3

execute as @s[scores={move=42..50},tag=wep2,tag=exterminationsword] at @s run tp @e[tag=PierceFlourish,c=1,r=20] ^^^1 facing @s
playanimation @s[scores={move=49},tag=wep2,tag=exterminationsword] animation.extermination_ab2b

execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s run tag @e[tag=PierceFlourish] remove PierceFlourish 
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] knockdown 95
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players set @e[tag=!Frames,r=2.24] Stun 35
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Hit 5
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run scoreboard players add @e[tag=!Frames,r=2.24] Evade 6
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run damage @e[tag=!Frames,r=2.24] 6 override entity @s
execute as @s[scores={move=44},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 if entity @e[tag=Frames,r=2.24] run playsound mob.sword @a ~~~
execute as @s[scores={move=44},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 if entity @e[tag=Frames,r=2.24] run playsound random.explode @a ~~~ 1 2 1
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^2.25 run effect @e[tag=Frames,r=2.24] levitation 1 5 true
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^ run camerashake add @a[r=20] 2 0.15
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^ run summon ds:knockback ~~~
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^ run summon ds:knockback ~~~
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^ run summon ds:knockback ~~~
execute as @s[scores={move=42},tag=wep2,tag=exterminationsword] at @s positioned ^^^ run summon ds:knockback ~~~

scoreboard players set @s[scores={move=4..35},tag=wep2,tag=exterminationsword] move 3