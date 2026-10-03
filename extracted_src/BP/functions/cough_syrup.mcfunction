playanimation @s animation.drink
playsound random.drink @a[r=10] ~~~ 999999 0.3 999999
clear @s[tag=!unselect] ds:cough_syrup 0 1
scoreboard players remove @s[scores={speech=1..}] speech 15
scoreboard players set @s[scores={speech=-99999..-1}] speech 0
scoreboard players add @s[tag=!unselect] overdose 15
effect @s[scores={overdose=120..},tag=!unselect] slowness 10 1 true
effect @s[scores={overdose=120..},tag=!unselect] wither 10 1 true
effect @s[scores={overdose=120..},tag=!unselect] nausea 10 1 true
tellraw @s[scores={overdose=120..},tag=!unselect] {"rawtext":[{"text":"§2- You are overdosing!"}]}
damage @s[scores={overdose=200..},tag=!unselect] 5 suicide
damage @s[scores={overdose=240..},tag=!unselect] 25 suicide
damage @s[scores={overdose=300..},tag=!unselect] 50 suicide
effect @s[scores={overdose=150..},tag=!unselect] slowness 30 1 true
effect @s[scores={overdose=150..},tag=!unselect] wither 30 1 true
effect @s[scores={overdose=150..},tag=!unselect] nausea 30 1 true


