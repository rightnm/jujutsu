playanimation @s[scores={sukunacutscene=90..}] animation.sukuna.mode


tag @s[scores={sukunacutscene=1..2},tag=sukuna_mode] remove sukuna_mode

scoreboard players set @s Move 60
scoreboard players set @s infinity 60
scoreboard players set @s Frames 60
scoreboard players set @s Camera 60
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

execute as @s[scores={sukunacutscene=89}] at @s run playsound mob.heartbeat @s ~~~ 1 0.8
effect @s[scores={sukunacutscene=90..}] darkness 3 1 true

event entity @s[scores={sukunacutscene=87}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=85}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=83}] sukuna_markings_red
event entity @s[scores={sukunacutscene=72}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=71}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=66..70},has_property={property:sukuna_markings=!1}] sukuna_markings


execute as @s[scores={sukunacutscene=57}] at @s run playsound mob.sukunamode @a[r=50] ~~~ 9999 1 9999
execute as @s[scores={sukunacutscene=55}] at @s run tellraw @a[r=50] {"rawtext":[{"text":"§r§f< §4"},{"selector":"@s"},{"text":" §r§f> §oI'm taking this brat hostage."}]}
execute as @s[scores={sukunacutscene=5}] at @s run tellraw @a[r=50] {"rawtext":[{"text":"§r§f< §4"},{"selector":"@s"},{"text":" §r§f> §oYou can be frightened now, I'll kill you."}]}

execute as @s[scores={sukunacutscene=61..62}] at @s run particle ds:blood_splat ~~~
execute as @s[scores={sukunacutscene=61..62}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=61..62}] at @s run particle ds:blood_drops2 ~~~
execute as @s[scores={sukunacutscene=61..62}] at @s run camerashake add @a[r=20] 4 0.15
execute as @s[scores={sukunacutscene=62}] at @s run playsound mob.blood @a[r=25] ~~~ 9999 1 9999
execute as @s[scores={sukunacutscene=62}] at @s run playsound mob.blood3 @a[r=25] ~~~ 9999 1.25 9999

event entity @s[scores={sukunacutscene=61..62},has_property={property:heart_wound=!1}] heart_wound_on
event entity @s[scores={sukunacutscene=43..45},has_property={property:heart=!1}] heart_on

damage @s[scores={sukunacutscene=60}] 10 suicide

event entity @s[scores={sukunacutscene=1..10},has_property={property:heart=!0}] heart_off
execute as @s[scores={sukunacutscene=20}] at @s run playsound mob.witch.throw @a[r=120] ~~~ 9999 1.2 9999

execute as @s[scores={sukunacutscene=43..45}] at @s run particle ds:blood_splat ~~~
execute as @s[scores={sukunacutscene=43..45}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=43..45}] at @s run particle ds:blood_drops2 ~~~
execute as @s[scores={sukunacutscene=43..45}] at @s run camerashake add @a[r=20] 2 0.15
execute as @s[scores={sukunacutscene=46}] at @s run playsound mob.blood3 @a[r=25] ~~~ 9999 0.8 9999
execute as @s[scores={sukunacutscene=46}] at @s run playsound mob.blood4 @a[r=25] ~~~ 9999 0.8 9999

tag @s[scores={sukunacutscene=21},tag=!sukuna,tag=reversecursed] add reversecursedown
tag @s[scores={sukunacutscene=21},tag=!sukuna,tag=rctmaster] add rctmasterown
tag @s[scores={sukunacutscene=21,hollowbasketown=1},tag=!sukuna] add hollowbasketown
execute as @s[scores={sukunacutscene=17}] at @s run function sukuna/grant_skills

tag @s[scores={sukunacutscene=18..20}] add sukuna
scoreboard players set @s[scores={sukunacutscene=18..20}] sukunamode 2000
scoreboard players operation @s[scores={sukunacutscene=17}] sukunamode *= @s[scores={sukunacutscene=17}] finger