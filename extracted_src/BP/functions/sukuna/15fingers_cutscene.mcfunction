playanimation @s[scores={sukunacutscene=1000..}] animation.sukuna_finger.eat3


scoreboard players set @s Move 6
scoreboard players set @s infinity 6
scoreboard players set @s Frames 6
scoreboard players set @s Camera 6
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

tag @s[scores={sukunacutscene=990..,sukunamode=21..},tag=reversecursed,tag=!reversecursedown] remove reversecursed
tag @s[scores={sukunacutscene=990..,sukunamode=21..},tag=rctmaster,tag=!rctmasterown] remove rctmaster
scoreboard players set @s[scores={sukunacutscene=990..,sukunamode=21..,hollowbasketown=1},tag=!hollowbasketown] hollowbasketown 0
tag @s[scores={sukunacutscene=990..},tag=sukuna] remove sukuna
tag @s[scores={sukunacutscene=990..},tag=reversecursedown] remove reversecursedown
tag @s[scores={sukunacutscene=990..},tag=rctmasterown] remove rctmasterown
tag @s[scores={sukunacutscene=990..},tag=hollowbasketown] remove hollowbasketown
scoreboard players set @s[scores={sukunacutscene=990..,sukunamode=1..}] sukunamode 0

execute as @s[scores={sukunacutscene=997..}] at @s run scoreboard objectives add sukunaperm dummy

execute as @s[scores={sukunacutscene=997}] at @s run playsound mob.slime.jump @a[r=10] ~~~ 1 2
execute as @s[scores={sukunacutscene=996}] at @s run playsound random.eat @a[r=10] ~~~ 
execute as @s[scores={sukunacutscene=995}] at @s run playsound random.burp @a[r=10] ~~~ 

execute as @s[scores={sukunacutscene=995}] at @s run  tp @s @s
execute as @s[scores={sukunacutscene=995}] at @s run  camera @s set minecraft:free pos ^^0.25^5 facing ~~1~
execute as @s[scores={sukunacutscene=980}] at @s run  camera @s set minecraft:free ease 3 in_sine pos ^^2^5 facing ~~1~
execute as @s[scores={sukunacutscene=919}] at @s run  camera @s set minecraft:free ease 1 in_sine pos ^^1^0.5 facing ^^1.25^

execute as @s[scores={sukunacutscene=1000}] at @s run kill @e[family=purecurse,r=100,family=!special_grade]

execute as @s[scores={sukunacutscene=997}] at @s run effect @s darkness 5 2 true

execute as @s[scores={sukunacutscene=998}] at @s run playsound mob.heartbeat @s ~~~ 1 0.8

event entity @s[scores={sukunacutscene=992}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=991}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=990}] sukuna_markings_red
event entity @s[scores={sukunacutscene=974}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=972}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=970}] sukuna_markings
event entity @s[scores={sukunacutscene=960..968}] sukunatextureoff

scoreboard players add @s[scores={sukunacutscene=996}] finger 0
scoreboard players add @s[scores={sukunacutscene=995,finger=1..19}] EnergyCap 300
scoreboard players add @s[scores={sukunacutscene=995,finger=1..19}] expadd 100
scoreboard players add @s[scores={sukunacutscene=995,finger=1..19}] finger 1

clear @s[scores={sukunacutscene=994,finger=0..19}] ds:sukuna_finger 0 1


camera @s[scores={sukunacutscene=930}] fade time 1.5 0.75 2 color 0 0 0
execute as @s[scores={sukunacutscene=898}] at @s positioned ~ 280 ~ run summon ds:sukuna_innate_domain
execute as @s[scores={sukunacutscene=21..898}] at @s run scoreboard players set @e[type=ds:sukuna_innate_domain,c=1] Deleter 30
execute as @s[scores={sukunacutscene=21..898}] at @s run scoreboard players set @e[type=ds:innate_sukuna,c=1] Deleter 30

execute as @s[scores={sukunacutscene=20..898}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run tp @s @s
execute as @s[scores={sukunacutscene=20..898}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run fill ~20~-1~20~-20~-2~-20 barrier [] replace air
execute as @s[scores={sukunacutscene=890}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run summon ds:innate_sukuna ^^4.7^20 facing ~~~ 
execute as @s[scores={sukunacutscene=20..898}] at @s run execute as @e[type=ds:sukuna_innate_domain,c=1] at @s run tp @e[type=ds:innate_sukuna,c=1] ^^4.7^20 facing ~~~ 


execute as @s[scores={sukunacutscene=885..898}] at @s positioned ~ 280 ~ run tp @s ~~~ facing @e[type=ds:innate_sukuna,c=1]

execute as @s[scores={sukunacutscene=870..890}] at @s run playanimation @e[type=ds:innate_sukuna,c=1,r=50] animation.innate_sukuna

execute as @s[scores={sukunacutscene=810}] at @s run playsound music.innate1 @s ~~~ 9999999 1 9999999
execute as @s[scores={sukunacutscene=682}] at @s run playsound music.innate2 @s ~~~ 9999999 1 9999999
execute as @s[scores={sukunacutscene=630}] at @s run playsound music.innate3 @s ~~~ 9999999 1 9999999
execute as @s[scores={sukunacutscene=400}] at @s run playsound music.innate4 @s ~~~ 9999999 1 9999999

execute as @s[scores={sukunacutscene=745..810}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cDon't poke around inside me. I hate it."}]}
execute as @s[scores={sukunacutscene=710..735}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cBrat."}]}

execute as @s[scores={sukunacutscene=690..700}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fWhat is this place?"}]}

execute as @s[scores={sukunacutscene=660..680}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cThis is my innate domain."}]}

execute as @s[scores={sukunacutscene=650}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fInnate Domain-?"}]}

execute as @s[scores={sukunacutscene=590..625}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cYou could also say we're in my mind."}]}
execute as @s[scores={sukunacutscene=525..580}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cIn other words, you're trapped here with me for now."}]}
execute as @s[scores={sukunacutscene=435..514}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cIf you accept my conditions, maybe I'll leave your body."}]}

execute as @s[scores={sukunacutscene=410..425}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fAlright, what conditions?"}]}

execute as @s[scores={sukunacutscene=265..400}] at @s run titleraw @a[r=50] title  {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§o§cWe'll fight to the death, and if you win, I will leave your body without any conditions..."}]}

execute as @s[scores={sukunacutscene=240..255}] at @s run titleraw @a[r=50] title {"rawtext":[{"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n§fSure! I'll beat you to-"}]}

execute as @s[scores={sukunacutscene=890}] at @s run camera @s set minecraft:free pos ^^^10 facing ^^^20
execute as @s[scores={sukunacutscene=885}] at @s run camera @s set minecraft:free ease 3 in_sine pos ^^16^-16 facing ^^^20

execute as @s[scores={sukunacutscene=825}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free pos ^^-1^12 facing ~~1.7~
execute as @s[scores={sukunacutscene=824}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free ease 4 in_sine pos ^^1.15^2 facing ~~1.5~

execute as @s[scores={sukunacutscene=700}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^1.25^^ facing ^^^0.15

execute as @s[scores={sukunacutscene=680}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-1^1^0.75 facing ~~1.27~

execute as @s[scores={sukunacutscene=650}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^1.25^^ facing ^^^0.15

execute as @s[scores={sukunacutscene=625}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-1^0.85^0.75 facing ~~1.25~
execute as @s[scores={sukunacutscene=624}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free ease 7 in_sine pos ^-1^1.15^0.75 facing ~~1.35~

execute as @s[scores={sukunacutscene=425}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^1.25^^ facing ^^^0.15

execute as @s[scores={sukunacutscene=400}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free pos ^-0.25^-1.85^12 facing ~~1.25~
execute as @s[scores={sukunacutscene=399}] at @s run execute as @e[type=ds:innate_sukuna,c=1] at @s run camera @a[r=50] set minecraft:free ease 7 in_sine pos ^^-1.25^11 facing ~~1.25~

execute as @s[scores={sukunacutscene=255}] at @s anchored eyes run camera @a[r=50] set minecraft:free pos ^^-0.8^0.35 facing ~~-0.5~
execute as @s[scores={sukunacutscene=254}] at @s anchored eyes run camera @a[r=50] set minecraft:free ease 1 in_out_circ pos ^^-0.35^1.35 facing ~~~

playanimation @s[scores={sukunacutscene=250}] animation.innate_im_ready

execute as @s[scores={sukunacutscene=220}] at @s run playsound mob.sword @a[r=200] ~~~ 99999 1.25 99999
execute as @s[scores={sukunacutscene=220}] at @s run playsound mob.slice2 @a[r=200] ~~~ 99999 1.5 99999
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:beheaded ~~0.39~
execute as @s[scores={sukunacutscene=220}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:invert ^^1.5^1
execute as @s[scores={sukunacutscene=219..220}] at @s run particle ds:blood_splat ~~1.4~
execute as @s[scores={sukunacutscene=219..220}] at @s run particle ds:blood_splat ~~1.4~
execute as @s[scores={sukunacutscene=219..220}] at @s run particle ds:blood_splat ~~1.4~
execute as @s[scores={sukunacutscene=219..220}] at @s run particle ds:blood_splat ~~1.4~
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=220}] at @s run particle ds:blood ~~~
execute as @s[scores={sukunacutscene=205}] at @s run playsound mob.button @a[r=200] ~~~ 99999 0.85 99999
camera @s[scores={sukunacutscene=205}] fade time 0 5.5 2 color 0 0 0

scoreboard players set @s[scores={sukunacutscene=130}] sukunacutscene 3

execute as @s[scores={sukunacutscene=185}] at @s run playsound music.sukuna_laugh1 @s ~~~ 99999 1 99999

execute as @s[scores={sukunacutscene=100..145}] at @s unless entity @s[scores={sukunaperm=1..}] run function sukuna/15finger_sukuna_takeover

tag @s[scores={sukunacutscene=1..3},tag=finger_rejected] remove finger_rejected
tag @s[scores={sukunacutscene=1..3},tag=15fingers_cutscene] remove 15fingers_cutscene
tag @s[scores={sukunacutscene=1..3},tag=sukuna_awakening] remove sukuna_awakening
tag @s[scores={sukunacutscene=1..3},tag=finger_eaten2] remove finger_eaten2 