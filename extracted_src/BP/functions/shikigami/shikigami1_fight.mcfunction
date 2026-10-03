playanimation @s[scores={move=39}] animation.rabbit_spawn

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5


tag @s[scores={move=1..2}] remove form1

tag @s[scores={move=34..,Stun=1..}] remove form1
scoreboard players set @s[scores={move=34..,Stun=1..}] move 0

execute as @s[scores={move=40}] at @s run tp @s @s

execute as @s[scores={move=1..21}] at @s run execute as @e[type=ds:rabbitescapeboss,r=15] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={move=1..21}] at @s run execute as @e[type=ds:rabbitescapeboss,r=15] at @s run particle ds:swamp_puddle2
execute as @s[scores={move=1..21}] at @s run execute as @e[type=ds:rabbitescapeboss,r=15] at @s run particle ds:swamp_puddle3
execute as @s[scores={move=1..21}] at @s run execute as @e[type=ds:rabbitescapeboss,r=15] at @s run particle ds:shikigami_bubble
execute as @s[scores={move=3..21}] at @s run playsound bubble.up @a[r=30] ~~~3 9999 1 9999
execute as @s[scores={move=3..21}] at @s run playsound bubble.up @a[r=30] ~3~~ 9999 1.15 9999
execute as @s[scores={move=3..21}] at @s run playsound bubble.up @a[r=30] ~1~~4 9999 0.7 9999
execute as @s[scores={move=21}] at @s run tag @s add rabbit_fight
execute as @s[scores={move=21}] at @s run function shikigami/shikigami/rabbit_boss_spawn
execute as @s[scores={move=1..25}] at @s run spreadplayers ~ ~ 12 11 @e[type=ds:rabbitescapeboss,r=10]

scoreboard players set @s[scores={move=5..17}] move 4