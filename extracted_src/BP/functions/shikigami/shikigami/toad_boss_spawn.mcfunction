tag @p[tag=shikigami]  add toad_fight
summon ds:toad ~~~
scoreboard players set @e[type=ds:toad,c=1] Deleter 2400
tellraw @p {"rawtext":[{"text":"§cYou do not have this Shikigami tamed, defeat the Toad to tame the shikigami."}]}
playsound note.pling @p ~~~ 1 0.4
camerashake add @a[r=15] 0.2 1




