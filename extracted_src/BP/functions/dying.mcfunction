
tag @s[tag=blackflash_finisher_gojo2] remove blackflash_finisher_gojo2
tag @s[tag=blackflash_finisher_itadori2] remove blackflash_finisher_itadori2
tag @s[tag=blackflash_finisher_yuta2] remove blackflash_finisher_yuta2
tag @s[tag=blackflash_finisher_nanami2] remove blackflash_finisher_nanami2
scoreboard players remove @s[scores={dying=1..}] dying 1
effect @s blindness 2 2 true
effect @s[type=!player,scores={dying=21..}] slowness 1 10 true
execute as @s[tag=!twinkick,type=player] at @s run tp @s ~~~
scoreboard players set @s Frames 5
scoreboard players set @s Stun 5
scoreboard players set @s Camera 5
scoreboard players set @s Move 5
tag @s[type=!player,scores={dying=3..},tag=!dying] add dying
tag @s[type=!player,scores={dying=1..2},tag=dying] remove dying

tag @s[tag=focus_striked] remove focus_striked

execute as @s[type=!player] at @s run tp @s ~~~~ 0

playanimation @s[tag=yujifinisher1] animation.knock

tellraw @s[tag=itemUse:ds:cursedenergy,tag=!reversecursed] {"rawtext":[{"text":"§cYou have not yet learned RCT..."}]}
tellraw @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=1..},tag=reversecursed,tag=!deathsentence] {"rawtext":[{"text":"§cReverse Cursed Technique is on cooldown: §e"},{"score":{"name": "@p","objective": "reversecursedCD"}},{"text":"§c."}]}
tag @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,Energy=300..},tag=reversecursed,tag=!deathsentence] add rctself
scoreboard players set @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,Energy=300..},tag=reversecursed,tag=!deathsentence] move 41
scoreboard players add @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=0,detect_sneak=0},tag=reversecursed,tag=!deathsentence] reversecursedCD 400
scoreboard players remove @s[tag=itemUse:ds:cursedenergy,scores={reversecursedCD=1..,Energy=300..,move=40..},tag=reversecursed,tag=!deathsentence] Energy 300

execute as @s[type=ds:student_gojo] at @s run tp @e[type=ds:toji,scores={move=0,cutscene=0},c=1,r=13] ~~~-12 facing ~~1~
execute as @s[type=ds:student_gojo] at @s run scoreboard players set @e[type=ds:toji,c=1,r=13] Stun 15

damage @s[scores={dying=2}] 999 suicide
kill @s[scores={dying=1..2},family=dummy,type=!ds:no_finishers_dummy]

execute as @s[type=!player] at @s run scoreboard players set @e[scores={Mode=1..},type=!player,r=15] Mode 0

execute as @s[tag=cleaved_finisher] at @s run function yuji/cleavedfinisher

execute as @s[tag=transfigure_death] at @s run function idle_transfig/transfigure_death
execute as @s[tag=transfigure_death2] at @s run function idle_transfig/transfigure_death2

