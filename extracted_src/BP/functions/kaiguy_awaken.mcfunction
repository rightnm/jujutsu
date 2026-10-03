execute as @s[scores={cutscene=310..}] at @s run execute as @a[r=100]  at @s run playsound music.toji_awaken @s ~~~ 0.75 0.25

tp @s ~~~ facing @p
playanimation @s[scores={cutscene=310..}] animation.kaiguy_awaken

execute as @s[scores={cutscene=310}] at @s run tp @s ~~2~

execute as @s[scores={cutscene=265..275}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=265..275}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=265..275}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={cutscene=265..275}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={cutscene=265..275}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~

execute as @s[scores={cutscene=276}] at @s run playsound mob.enderdragon.flap @a[r=25] ~~~ 9999 0.35 9999
execute as @s[scores={cutscene=270}] at @s run particle ds:dirt0

execute as @s[scores={cutscene=300}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Flames §r> §o§fWoahhh-.."}]}

execute as @s[scores={cutscene=260}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Flames §r> §o§fWhere am I? Did you bring me here to fight?"}]}
execute as @s[scores={cutscene=150}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Flames §r> §o§fHey, You look pretty str-"}]}

execute as @s[scores={cutscene=128}] at @s run tellraw @a {"rawtext":[{"text":"§l§4§kSYSTEM ACCEPTED, INITIATING ENTITY TAKEOVER"}]}

execute as @s[scores={cutscene=100}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Flames §r> §o§fWha- ow.. I don't know what just happened but.."}]}
execute as @s[scores={cutscene=50}] at @s run tellraw @a {"rawtext":[{"text":"§r< §r§o§lReminiscence of Flames §r> §o§cI feel great... I feel so STRONG!?... Hey you, lets fight §oright now§r§c!!!"}]}

execute as @s[scores={cutscene=6}] at @s run tellraw @a[r=100] {"rawtext":[{"text":"§cSomething or someone seems to be interfering with your cursed technique..."}]}

execute as @s[scores={cutscene=122..128}] at @s run playsound mob.distort1 @a ~~~ 99999 2 99999
execute as @s[scores={cutscene=122..128}] at @s run camerashake add @a[r=100] 2 0.15


execute as @s[scores={cutscene=24..25}] at @s run execute as @a[r=100] at @s run stopsound @s music.toji_awaken
execute as @s[scores={cutscene=24..25}] at @s run execute as @a[r=100] at @s run playsound music.prowess @s ~~~ 0.75 0.385

execute as @s[scores={cutscene=1..4}] at @s run tag @s remove kaiguy_awaken


