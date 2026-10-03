playanimation @s[scores={move=39},tag=form6,tag=shikigami] animation.piercingox_spawn

scoreboard players set @s[scores={move=3..},tag=form6,tag=shikigami] Move 5
scoreboard players set @s[scores={move=3..},tag=form6,tag=shikigami] Camera 5


tag @s[scores={move=1..2},tag=form6,tag=shikigami] remove form6

tag @s[scores={move=34..,Stun=1..},tag=form6,tag=shikigami] remove form6
scoreboard players set @s[scores={move=34..,Stun=1..},tag=form6,tag=shikigami] move 0

execute as @s[scores={move=35..},tag=form6,tag=shikigami] at @s run tp @s @s

execute as @s[scores={move=35},tag=form6,tag=shikigami] at @s run summon ds:projectile OxSummon ^^^1
execute as @s[scores={move=34..35},tag=form6,tag=shikigami] at @s run tp @e[name=OxSummon,c=1] ^^^1 facing ^^^20

execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run tp @s @s
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run particle ds:swamp_puddle2
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run particle ds:swamp_puddle3
execute as @s[scores={move=7..31},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run particle ds:shikigami_bubble
execute as @s[scores={move=17..20},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~~~3 9999 1 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~3~~ 9999 1.15 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~1~~4 9999 0.7 9999


execute as @s[scores={move=19},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run function shikigami/shikigami/ox_boss_spawn
execute as @s[scores={move=18},tag=form6,tag=shikigami] at @s run execute as @e[name=OxSummon] at @s run kill @s

scoreboard players set @s[scores={move=5..17},tag=form6,tag=shikigami] move 4