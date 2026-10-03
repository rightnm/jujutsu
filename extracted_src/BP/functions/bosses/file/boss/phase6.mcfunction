



playanimation @s[scores={cutscene=200..}] animation.primesoul.minion_phase
scoreboard players set @s[scores={move=1..}] move 0
scoreboard players set @s[scores={chance=1..}] chance 0

tp @s -59936 260 -59936 facing @p
execute as @s[scores={cutscene=180}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＥＮＯＵＧＨ！"}]}
execute as @s[scores={cutscene=120}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＣＯＭＥ ＦＯＲＴＨ，"}]}
execute as @s[scores={cutscene=100}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＣＨＡＯＳ！"}]}

execute as @s[scores={cutscene=40}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ＹＯＵ ＷＩＬＬ ＤＩＥ ＢＹ ＭＹ ＨＡＮＤＳ！"}]}

execute as @s[scores={cutscene=100}] at @s run execute as @a[r=300] at @s run playsound music.soul @s ~~~ 99999 0.75 99999
execute as @s[scores={cutscene=120}] at @s run execute as @a[r=300] at @s run playsound music.eye @s ~~~ 99999 0.5 99999
execute as @s[scores={cutscene=140}] at @s run camerashake add @a[r=200] 0.5 4 rotational
execute as @s[scores={cutscene=85}] at @s run execute as @a[r=300] at @s run playsound music.chaos @s ~~~ 99999 0.2 99999
execute as @s[scores={cutscene=100}] at @s run camera @a[r=300] fade time 0.5 1 0.5 color 255 255 255
execute as @s[scores={cutscene=90}] at @s unless entity @e[type=ds:chaos] run summon ds:chaos -59936 260 -59936 facing @p
execute as @s[scores={cutscene=87..90}] at @s run playanimation @e[type=ds:chaos,c=1] animation.chaos_awaken
execute as @s[scores={cutscene=87}] at @s run  particle ds:riftaura3 ~~~
execute as @s[scores={cutscene=87}] at @s run  particle ds:riftaura4 ~~~

execute as @s[scores={cutscene=120..200}] at @s run stopsound @a music.ultra2
execute as @s[scores={cutscene=115..119}] at @s run execute as @a[r=200] at @s run playsound music.ultra2 @s ~~~ 99999 0.92 99999

scoreboard players set @s[scores={cutscene=1..}] phase 7
tag @s[scores={cutscene=1..5}] remove phase6