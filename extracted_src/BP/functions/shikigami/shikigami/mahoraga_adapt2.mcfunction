playanimation @s[scores={cutscene=80..,Camera=0},tag=adapting,tag=!dismantlepummel] animation.mahoraga.adaption
effect @s[scores={cutscene=31..},tag=adapting] instant_health 1 10 true
effect @s[scores={cutscene=31..},tag=adapting] resistance 1 10 true
effect @s[scores={cutscene=41..},tag=adapting] slowness 1 10 true
execute as @s[scores={cutscene=5..},tag=adapting] at @s run tp @s ~~~

execute as @s[scores={cutscene=1..80},tag=adapting] at @s run particle ds:adapt_cutscene2 ~~3.5~

execute as @s[scores={cutscene=20},tag=adapting] at @s run playsound music.adapt @a[r=90] ~ ~ ~ 1000000 1 1000000
execute as @s[scores={cutscene=20},tag=adapting] at @s run camerashake add @a[r=90] 3 0.2
execute as @s[scores={cutscene=20},tag=adapting] at @s run function shikigami/shikigami/mahoraga_adaption

execute as @s[scores={cutscene=1..5},tag=adapting] at @s run tag @s add serious
execute as @s[scores={cutscene=1..5},tag=adapting] at @s run tag @s remove adapting