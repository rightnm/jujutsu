execute if block ~~1~ water run tellraw @a[r=50] {"rawtext":[{"text":"§f< §bRiko Amanai §f> Help! I can't swim!"}]}
execute if block ~~1~ water run damage @s 2 drowning

effect @s instant_health 1 0 true


execute unless block ~~~ water run execute as @p[tag=special_mission_vessel] at @s if block ~~~ water run tellraw @a[r=50] {"rawtext":[{"text":"§f< §bRiko Amanai §f> I'm not getting in the water, I don't know how to swim :<"}]}

execute if entity @e[family=q_clan,r=10]  run tellraw @a[r=50] {"rawtext":[{"text":"§f< §bRiko Amanai §f> Help me!"}]}

execute unless entity @p[tag=special_mission_vessel,r=25] run tellraw @a[r=50] {"rawtext":[{"text":"§f< §bRiko Amanai §f> Hey don't leave me! I can't run that fast!"}]}

