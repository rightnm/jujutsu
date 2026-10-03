execute as @s[scores={cutscene=340..}] at @s run execute as @a[r=100]  at @s run playsound music.toji_awaken @s ~~~ 0.75 0.25

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=339..}] animation.astaroth_awaken

execute as @s[scores={cutscene=340}] at @s run  tp @s ~~2~

execute as @s[scores={cutscene=340}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fI'm finally free... It's been so long since I've seen the sky, I could've sworn.. I had died."}]}

execute as @s[scores={cutscene=265}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fWhat is this place anyways? This isn't the Island or Meridia?"}]}

execute as @s[scores={cutscene=184}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fTell me NOW. How do I get back to my reali-"}]}
execute as @s[scores={cutscene=160}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§fWh§ka§rt th§ke§r h§ke§rll!?"}]}
execute as @s[scores={cutscene=158}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kSYSTEM ACCEPTED, INITIATING ENTITY TAKEOVER"}]}
execute as @s[scores={cutscene=151..158}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=152..158}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={cutscene=110}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§c§lWhat is this!? I feel like I'm overflowing with power... but"}]}
execute as @s[scores={cutscene=60}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§c§lHowever all I feel is this irresistable urge..."}]}
execute as @s[scores={cutscene=15}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Balance §r> §o§c§lT o  d e s t r o y  y o u  a n d  e v e r y t h i n g..."}]}
execute as @s[scores={cutscene=15}] at @s run effect @a blindness 2 1 true
execute as @s[scores={cutscene=4..5}] at @s run execute as @a[r=100] at @s run playsound music.mahoraga @s ~~~ 0.75 0.25

execute as @s[scores={cutscene=1..4}] at @s run tag @s remove astaroth_awaken


