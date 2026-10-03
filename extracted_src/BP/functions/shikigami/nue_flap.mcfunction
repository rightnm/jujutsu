execute as @s[scores={Deleter=39}] at @s run summon ds:projectile NueBolt ^^1^1
execute as @s[scores={Deleter=39}] at @s run scoreboard players set @e[name=NueBolt,c=1] Deleter 40
execute as @s[scores={Deleter=39}] at @s run camerashake add @a[r=50] 2 0.25

execute as @s[scores={Deleter=7..8}] at @s run particle ds:shikigami_appear3 ~~1~
execute as @s[scores={Deleter=1..2}] at @s run kill @s