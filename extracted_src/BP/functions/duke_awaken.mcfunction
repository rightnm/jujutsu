execute as @s[scores={cutscene=480..}] at @s run execute as @a[r=100]  at @s run playsound music.toji_awaken @s ~~~ 0.75 0.25

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=479..}] animation.duke_awaken

execute as @s[scores={cutscene=470}] at @s run  tp @s ~~2~

execute as @s[scores={cutscene=470}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fHm.. now this is strange."}]}

execute as @s[scores={cutscene=420}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fWhat luminant is this? Something feels off, did someone's resonance bring me here?"}]}
execute as @s[scores={cutscene=340}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fThis place feels strange, it has an unrecognisable feeling or energy of some sorts."}]}
execute as @s[scores={cutscene=290}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fIt's fascinating..."}]}
execute as @s[scores={cutscene=240}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fHey you there, is this your doing? Is there something you need from me?"}]}

execute as @s[scores={cutscene=200}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fWhich way is back to Er-"}]}
execute as @s[scores={cutscene=180}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kSYSTEM ACCEPTED, INITIATING ENTITY TAKEOVER"}]}
execute as @s[scores={cutscene=171..180}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=172..180}] at @s run playsound music.prowess @a 
execute as @s[scores={cutscene=172..180}] at @s run stopsound @a
execute as @s[scores={cutscene=172..180}] at @s run camerashake add @a[r=100] 2 0.15
execute as @s  if block ~~-1~ air run particle ds:wind_levitation


execute as @s[scores={cutscene=100}] at @s run playsound mob.dukelaugh @a ~~~ 99999 1 99999
execute as @s[scores={cutscene=100}] at @s run execute as @a[r=100] at @s run playsound music.dukelaugh @s ~~~ 99999 1 99999
execute as @s[scores={cutscene=120}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§fWhat the.. Why do I feel like I'm.. overflowing with power."}]}
execute as @s[scores={cutscene=60}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§c§lHeh... Change of plans..."}]}
execute as @s[scores={cutscene=15}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Erisia §r> §o§c§lI'm not sure why but I have to kill you now."}]}

execute as @s[scores={cutscene=15}] at @s run effect @a blindness 2 1 true
execute as @s[scores={cutscene=24..25}] at @s run execute as @a[r=100] at @s run playsound music.prowess @s ~~~ 0.75 0.25

execute as @s[scores={cutscene=1..4}] at @s run tag @s remove duke_awaken


