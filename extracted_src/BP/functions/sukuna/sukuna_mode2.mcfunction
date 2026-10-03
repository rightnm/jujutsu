playanimation @s[scores={sukunacutscene=50..}] animation.sukuna.mode2


tag @s[scores={sukunacutscene=1..2},tag=sukuna_mode2] remove sukuna_mode2

scoreboard players set @s Move 10
scoreboard players set @s infinity 10
scoreboard players set @s Frames 10
scoreboard players set @s Camera 10
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

execute as @s[scores={sukunacutscene=50}] at @s run playsound mob.heartbeat @s ~~~ 1 0.8
effect @s[scores={sukunacutscene=50..}] darkness 2 1 true

event entity @s[scores={sukunacutscene=48}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=47}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=45}] sukuna_markings_red
event entity @s[scores={sukunacutscene=40}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=39}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=35..38},has_property={property:sukuna_markings=!1}] sukuna_markings


scoreboard players random @s[scores={sukunacutscene=45}] chance 1 4
scoreboard players set @s[scores={sukunacutscene=18}] chance 0

execute as @s[scores={sukunacutscene=34,chance=1}] at @s run playsound mob.brat @a[r=50] ~~~ 9999 0.97 9999
execute as @s[scores={sukunacutscene=34,chance=1}] at @s anchored eyes positioned ^-1.25^^ run particle ds:youbrat

execute as @s[scores={sukunacutscene=44,chance=2}] at @s run playsound mob.sukuna_taste @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={sukunacutscene=44,chance=2}] at @s anchored eyes positioned ^-1.25^^ run particle ds:tasting

execute as @s[scores={sukunacutscene=44,chance=3}] at @s run playsound mob.getready @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={sukunacutscene=44,chance=3}] at @s anchored eyes positioned ^1.25^^ run particle ds:prepareyourself

execute as @s[scores={sukunacutscene=44,chance=4}] at @s run playsound mob.comeatme @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={sukunacutscene=44,chance=4}] at @s anchored eyes positioned ^1.25^^ run particle ds:comeatme

tag @s[scores={sukunacutscene=18..20},tag=!sukuna] add sukuna

tag @s[scores={sukunacutscene=21},tag=!sukuna,tag=reversecursed] add reversecursedown
tag @s[scores={sukunacutscene=21},tag=!sukuna,tag=rctmaster] add rctmasterown
tag @s[scores={sukunacutscene=21,hollowbasketown=1},tag=!sukuna] add hollowbasketown
execute as @s[scores={sukunacutscene=17}] at @s run function sukuna/grant_skills

scoreboard players set @s[scores={sukunacutscene=18..20}] sukunamode 2000
scoreboard players operation @s[scores={sukunacutscene=17}] sukunamode *= @s[scores={sukunacutscene=17}] finger