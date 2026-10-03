execute as @s[scores={cutscene=460..}] at @s run execute as @a[r=100]  at @s run playsound music.toji_awaken @s ~~~ 0.75 0.25

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=459..}] animation.benedictus_awaken

execute as @s[scores={cutscene=460}] at @s run  tp @s ~~2~

execute as @s[scores={cutscene=193..204}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=193..204}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=193..204}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=193..204}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={cutscene=193..204}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={cutscene=197}] at @s run particle ds:dirt0

execute as @s[scores={cutscene=440}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fWhat? I've never been forced transported somewhere before?"}]}
execute as @s[scores={cutscene=380}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fIs this another reality?"}]}
execute as @s[scores={cutscene=315}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fTell me human, why was I summoned? Is this your doing?"}]}
execute as @s[scores={cutscene=200}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fI'm going to need answers now. I haven't got the time for this."}]}
execute as @s[scores={cutscene=100}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§fNow, tell me why you sum-"}]}


execute as @s[scores={cutscene=99}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kSYSTEM ACCEPTED, INITIATING ENTITY TAKEOVER"}]}
execute as @s[scores={cutscene=88..99}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=88..99}] at @s run camerashake add @a[r=100] 2 0.15

execute as @s[scores={cutscene=90}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> WHAT... §o§c§lWH§kA§r§l§cT A§kR§r§l§cE Y§kOU§r§l§c DOING TO ME!?"}]}
execute as @s[scores={cutscene=6}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Luminosity §r> §o§c§lThis MUST be your doing, a being like you cannot be allowed to roam free!"}]}
execute as @s[scores={cutscene=15}] at @s run effect @a blindness 2 1 true
execute as @s[scores={cutscene=4..5}] at @s run execute as @a[r=100] at @s run  stopsound @s music.toji_awaken
execute as @s[scores={cutscene=4..5}] at @s run execute as @a[r=100] at @s run playsound music.ultra1 @s ~~~ 0.75 0.275

execute as @s[scores={cutscene=1..4}] at @s run tag @s remove benedictus_awaken


