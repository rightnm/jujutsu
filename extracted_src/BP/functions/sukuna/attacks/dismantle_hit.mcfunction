
execute as @p unless entity @e[type=ds:dismantle_horizontal,r=1] run summon ds:dismantle_horizontal ^^^0.1 facing ^^^10

particle ds:cleave_aureole ~~~
tp @s ~~-200~
kill @s[type=ds:dismantle]