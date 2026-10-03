playanimation @s[scores={move=39},tag=form10,tag=shikigami] animation.mahoraga_summon2

scoreboard players set @s[scores={move=3..},tag=form10,tag=shikigami] Move 5
scoreboard players set @s[scores={move=3..},tag=form10,tag=shikigami] Camera 5


tag @s[scores={move=1..5}] remove form10

tag @s[scores={move=34..,Stun=1..},tag=form10,tag=shikigami] remove form10
scoreboard players set @s[scores={move=34..,Stun=1..},tag=form10,tag=shikigami] move 0

execute as @s[scores={move=35..},tag=form10,tag=shikigami] at @s run tp @s @s

execute as @s[scores={move=35},tag=form10,tag=shikigami] at @s run summon ds:projectile MahoragaSummon ^^^1
execute as @s[scores={move=34..35},tag=form10,tag=shikigami] at @s run tp @e[name=MahoragaSummon,c=1] ^^^1 facing ^^^20

execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run tp @s @s
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:swamp_puddle2
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:swamp_puddle3
execute as @s[scores={move=7..31},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:shikigami_bubble
execute as @s[scores={move=17..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s[scores={move=17..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:shikigami_appear3 ~~0.75~
execute as @s[scores={move=17..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:shikigami_appear3 ~~1.5~
execute as @s[scores={move=17..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:shikigami_appear3 ~~2.25~
execute as @s[scores={move=20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run effect @a[r=7] blindness 2 1 true
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~~~3 9999 1 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~3~~ 9999 1.15 9999
execute as @s[scores={move=7..31}] at @s run playsound bubble.up @a[r=30] ~1~~4 9999 0.7 9999

execute as @s[scores={move=18..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run particle ds:dog_combine1 ~~2.5~
execute as @s[scores={move=18..20},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.5 10000
execute as @s[scores={move=19},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run function shikigami/shikigami/mahoraga_spawn
execute as @s[scores={move=18},tag=form10,tag=shikigami] at @s run execute as @e[name=MahoragaSummon] at @s run kill @s

scoreboard players set @s[scores={move=5..17},tag=form10,tag=shikigami] move 4