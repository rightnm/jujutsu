

execute as @p[tag=curse,scores={grade=1..2},tag=high_sorcerer_quest] run scoreboard players random @e[name=waypoint,c=1] chance -2 3
execute as @p[tag=curse,scores={grade=3..4},tag=high_sorcerer_quest] run scoreboard players random @e[name=waypoint,c=1] chance -2 5
execute as @p[tag=curse,scores={grade=5..},tag=high_sorcerer_quest] run scoreboard players random @e[name=waypoint,c=1] chance -2 9


execute as @s[scores={chance=-2}] at @s run summon ds:sorcerer_male_grade1 ~~1~
execute as @s[scores={chance=-2}] at @s run summon ds:sorcerer_male_grade1 ~~1~
execute as @s[scores={chance=-1}] at @s run summon ds:juzo ~~1~
execute as @s[scores={chance=0}] at @s run summon ds:miwa ~~1~
execute as @s[scores={chance=1}] at @s run summon ds:megumi ~~1~
execute as @s[scores={chance=2}] at @s run summon ds:yuji_itadori ~~1~
execute as @s[scores={chance=3}] at @s run summon ds:kusakabe ~~1~
execute as @s[scores={chance=4}] at @s run summon ds:maki_cullinggames ~~1~
execute as @s[scores={chance=5}] at @s run summon ds:higuruma ~~1~
execute as @s[scores={chance=6}] at @s run summon ds:hakari ~~1~
execute as @s[scores={chance=7}] at @s run summon ds:toji ~~1~
execute as @s[scores={chance=8}] at @s run summon ds:kashimo ~~1~
execute as @s[scores={chance=9}] at @s run summon ds:yuji_itadori_awakened ~~1~
execute as @s[scores={chance=10}] at @s run summon ds:student_gojo ~~1~




tellraw @a[tag=high_sorcerer_quest,r=40] {"rawtext":[{"text":"§e- Eliminate them."}]} 

execute as @s at @s run playsound mob.wither.shoot @a[r=100] ~~~ 99999 0.2 99999
camerashake add @a[r=40] 0.5 2
tickingarea remove high_sorcerer_curse_quest
kill @s