playanimation @s[scores={move=10}] animation.place
tag @s[scores={move=1..2},tag=form2b] remove form2b

tag @s[scores={move=6..,Stun=1..},tag=form2b] remove form2b
playanimation @s[scores={move=6..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=6..,Stun=1..}] move 2

scoreboard players set @s[scores={move=6}] Move 4
scoreboard players set @s[scores={move=6}] Camera 4


execute as @s[scores={move=5..6}] at @s run tp @s @s
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^2.5 if block ~~~ air at @s positioned ^^^1 run summon ds:geyser "Volcanic Mine" ~~~
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^2.5 if block ~~~ air at @s positioned ^^^1 run scoreboard players set @e[type=ds:geyser,name="Volcanic Mine",r=0.15,c=1] Deleter 401

execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^2.5 unless block ~~~ air run summon ds:geyser ~~~ facing ^^^-1 none "Volcanic Wall Mine" 
execute as @s[scores={move=5}] at @s anchored eyes positioned ^^^2.5 unless block ~~~ air run scoreboard players set @e[type=ds:geyser,name="Volcanic Wall Mine",r=0.15,c=1] Deleter 401

execute as @s[scores={move=4..6}] at @s run playsound mob.blaze.shoot @a ~~~ 0.2 0.7
execute as @s[scores={move=4..6}] at @s run playsound dig.grass @a ~~~ 0.2 0.25
execute as @s[scores={move=4..6}] at @s run camerashake add @a[r=7] 0.15 0.5





scoreboard players set @s[scores={move=4}] Move 2
scoreboard players set @s[scores={move=4}] Camera 2