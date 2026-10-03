playanimation @s[scores={cutscene=300..}] animation.duke_death

scoreboard players set @s Energy 100
scoreboard players set @s Stun 100
scoreboard players set @s move 0

execute as @s[scores={cutscene=201}] at @s run playsound mob.distort2 @a[r=100] ~~~ 0.2 1.5
execute as @s[scores={cutscene=200..240}] at @s run playsound portal.trigger @a[r=100] ~~~ 0.2 2
execute as @s[scores={cutscene=200..240}] at @s run particle ds:rift1 ~~2.25~
execute as @s[scores={cutscene=230},type=ds:frogdog] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§f< §cFrogdog §r§f> §l§4§kfortnite battle pass i just shat out my ass"}]}
execute as @s[scores={cutscene=230},type=ds:butterjaffa] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§f< §eButterjaffa §r§f> §l§4§kfortnite battle pass i just shat out my ass"}]}
execute as @s[scores={cutscene=230},type=ds:magroic] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§f< §8Magroic §r§f> §l§4§kfortnite battle pass i just shat out my ass"}]}
execute as @s[scores={cutscene=230},type=ds:glitchyturtle] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§f< §bGlitchyTurtle §r§f> §l§4§kfortnite battle pass i just shat out my ass"}]}


execute as @s[scores={cutscene=1..170}] at @s run event entity @s ds:disappear