playanimation @s[scores={sukunacutscene=120..}] animation.sukuna_finger.reject

tag @s[scores={sukunacutscene=130..141}] remove finger_rejected
tag @s[scores={sukunacutscene=1..}] remove sukuna_awakening
tag @s[scores={sukunacutscene=1..}] remove finger_eaten

scoreboard players set @s Move 6
scoreboard players set @s infinity 6
scoreboard players set @s Frames 6
scoreboard players set @s Camera 6
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]

kill @e[type=item,r=5]

execute as @s[scores={sukunacutscene=120}] at @s run tp @s @s 

execute as @s[scores={sukunacutscene=120}] at @s anchored eyes run camera @s set minecraft:free pos ^^^1 facing ~~~
execute as @s[scores={sukunacutscene=110}] at @s anchored eyes run camera @s set minecraft:free ease 0.5 in_out_circ pos ^^^5 facing ~~~

effect @s[scores={sukunacutscene=110}] blindness 5 1 true
effect @s[scores={sukunacutscene=110..}] darkness 5 10 true

execute as @s[scores={sukunacutscene=100}] at @s run playsound mob.heartbeat @s ~~1~ 

tellraw @s[scores={sukunacutscene=80}] {"rawtext":[{"text":"§l§4The Finger rejects you..."}]}

execute as @s[scores={sukunacutscene=70..80}] at @s anchored eyes run particle ds:blood ^^-2^0.15

tag @s[scores={sukunacutscene=1..17}] remove finger_rejected

execute as @s[scores={sukunacutscene=21..24}] at @s run scoreboard objectives add dying dummy
scoreboard players set @s[scores={sukunacutscene=21..23}] dying 22