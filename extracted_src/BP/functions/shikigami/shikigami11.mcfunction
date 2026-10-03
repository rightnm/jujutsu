playanimation @s[scores={move=39},tag=form11,tag=shikigami] animation.agito_spawn

scoreboard players set @s[scores={move=3..},tag=form11,tag=shikigami] Move 5
scoreboard players set @s[scores={move=3..},tag=form11,tag=shikigami] Camera 5


tag @s[scores={move=1..2},tag=form11,tag=shikigami] remove form11

execute as @s[scores={move=35..},tag=form11,tag=shikigami] at @s run tp @s @s

execute as @s[scores={move=35},tag=form11,tag=shikigami] at @s run summon ds:projectile AgitoSummon ^^^1
execute as @s[scores={move=34..35},tag=form11,tag=shikigami] at @s run tp @e[type=!item,name=AgitoSummon,c=1] ^^^1 facing ^^^20

execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run tp @s @s
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run tp @s ^^^0.21
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:swamp_puddle1 ~~0.44~
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:swamp_puddle2
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:swamp_puddle3
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shikigami_bubble
execute as @s[scores={move=17..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s[scores={move=17..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shikigami_appear3 ~~0.75~
execute as @s[scores={move=17..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shikigami_appear3 ~~1.5~
execute as @s[scores={move=17..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shikigami_appear3 ~~2.25~
execute as @s[scores={move=20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run effect @a[r=7] blindness 2 1 true
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run playsound bubble.up @a ~~~3 1 1 1
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run playsound bubble.up @a ~3~~ 1 1.15 1
execute as @s[scores={move=7..31},tag=form11,tag=shikigami] at @s run playsound bubble.up @a ~1~~4 1 0.7 1

execute as @s[scores={move=18..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run scoreboard players set @e[type=!item,type=ds:rounddeer,r=60] Deleter 4
execute as @s[scores={move=18..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run scoreboard players set @e[type=!item,type=ds:serpent,r=60] Deleter 4
execute as @s[scores={move=18..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run particle ds:shock_punch1 ~~2~
execute as @s[scores={move=18..20},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run playsound mob.electricity @a ~~~ 100000 0.5 10000
execute as @s[scores={move=19},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run function shikigami/shikigami/agito_spawn
execute as @s[scores={move=18},tag=form11,tag=shikigami] at @s run execute as @e[type=!item,name=AgitoSummon] at @s run kill @s

scoreboard players set @s[scores={move=5..17},tag=form11,tag=shikigami] move 4