tag @p[tag=shikigami] add dog_fight
execute as @s[name=DogSummonW] at @s run summon ds:white_wolfboss "Light Divine Dog" ~~~
execute as @s[name=DogSummonB] at @s run summon ds:black_wolfboss "Shadow Divine Dog" ~~~



effect @e[tag=divinedogs,c=2] speed 99999991 1 true
tellraw @p {"rawtext":[{"text":"§cYou do not have this Shikigami tamed, defeat the Divine Dogs to tame the Shikigami."}]}
playsound note.pling @p ~~~ 1 0.4
camerashake add @a[r=15] 0.2 1




