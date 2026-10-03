playanimation @s[scores={move=39}] animation.toad_spawn

scoreboard players set @s[scores={move=3..}] Move 5
scoreboard players set @s[scores={move=3..}] Camera 5


tag @s[scores={move=1..2}] remove form2

tag @s[scores={move=34..,Stun=1..}] remove form2
scoreboard players set @s[scores={move=34..,Stun=1..}] move 0

execute as @s[scores={move=35..}] at @s run tp @s @s
execute as @s[scores={move=35}] at @s run summon ds:projectile ToadSummon ^^^1
execute as @s[scores={move=34..35}] at @s run tp @e[name=ToadSummon,c=1] ^^^1 facing ^^^20

execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run tp @s @s
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run tp @s ^^^0.11
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run tp @s ^^^0.11
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run tp @s ^^^0.11
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run particle ds:swamp_puddle2
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run particle ds:swamp_puddle3
execute as @s[scores={move=7..31}] at @s run execute as @e[name=ToadSummon] at @s run particle ds:shikigami_bubble
execute as @s[scores={move=17..20}] at @s run execute as @e[name=ToadSummon] at @s run particle ds:shikigami_appear ~~1~
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~~~3 9999 1 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~3~~ 9999 1.15 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~1~~4 9999 0.7 9999


execute as @s[scores={move=19}] at @s run execute as @e[name=ToadSummon] at @s run function shikigami/shikigami/toad_spawn
execute as @s[scores={move=19}] at @s run execute as @e[name=ToadSummon] at @s run kill @s

scoreboard players set @s[scores={move=5..17}] move 4