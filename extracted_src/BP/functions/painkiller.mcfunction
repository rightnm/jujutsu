scoreboard players set @p[tag=itemUse:ds:painkiller1,scores={Sneaking=0,painkiller=2..}] painkiller 1
tellraw @p[scores={painkiller=1}] {"rawtext":[{"text":"§cYour Pain-Killer effect has ended."}]}
scoreboard players set @a[tag=painkiller,scores={painkiller=1..,ability1=0..4}] ability1 50

scoreboard players remove @e[scores={painkiller=1..}] painkiller 1
effect @e[scores={painkiller=1..}] resistance 1 2 true
scoreboard players remove @e[scores={painkiller=1..,Stun=22..,cutscene=0,move=0}] Stun 1
execute as @e[scores={painkiller=1..}] at @s run particle ds:painkiller