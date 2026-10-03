playanimation @s[scores={sukunacutscene=20..}] animation.sukuna_finger.eat2



scoreboard players set @s Move 6
scoreboard players set @s infinity 6
scoreboard players set @s Frames 6
scoreboard players set @s Camera 6
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]


execute as @s[scores={sukunacutscene=15}] at @s run playsound mob.slime.jump @a[r=10] ~~~ 1 2
execute as @s[scores={sukunacutscene=14}] at @s run playsound random.eat @a[r=10] ~~~ 
execute as @s[scores={sukunacutscene=13}] at @s run playsound random.burp @a[r=10] ~~~ 
kill @e[type=item,r=5]

execute as @s[scores={sukunacutscene=10}] at @s run kill @e[family=purecurse,r=100,family=!special_grade]

execute as @s[scores={sukunacutscene=15}] at @s run effect @s darkness 5 2 true

execute as @s[scores={sukunacutscene=14}] at @s run playsound mob.heartbeat @s ~~~ 1 1.15

event entity @s[scores={sukunacutscene=13}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=12}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=11}] sukuna_markings_red
event entity @s[scores={sukunacutscene=7}] sukuna_markings_red1
event entity @s[scores={sukunacutscene=6}] sukuna_markings_red0
event entity @s[scores={sukunacutscene=5}] sukuna_markings
event entity @s[scores={sukunacutscene=1..4},tag=!sukuna] sukunatextureoff

scoreboard players add @s[scores={sukunacutscene=6}] finger 0
scoreboard players add @s[scores={sukunacutscene=5,finger=1..19}] EnergyCap 300
scoreboard players add @s[scores={sukunacutscene=5,finger=1..19}] expadd 100
scoreboard players add @s[scores={sukunacutscene=5,finger=1..19}] finger 1

clear @s[scores={sukunacutscene=12,finger=0..19}] ds:sukuna_finger 0 1

execute as @s[scores={sukunacutscene=14}] at @s run playsound mob.wither.hurt @a ~~~ 0.3 0.7
execute as @s[scores={sukunacutscene=6..14}] at @s run particle ds:divergent_ac5
execute as @s[scores={sukunacutscene=6..14}] at @s run camerashake add @s 0.45 0.15

execute as @s[scores={sukunacutscene=4..5}] at @s run function sukuna/grant_skills

tellraw @s[scores={sukunacutscene=4}] {"rawtext":[{"text":"§r§4Fingers Consumed:\n"},{"text":"§5- §l§c"},{"score":{"name":"@s","objective":"finger"}}]}
tellraw @s[scores={sukunacutscene=4}] {"rawtext":[{"text":"§r§b+300 Cursed Energy\n§9+100 Exp\n§g+3 Invest Points"}]}
scoreboard players add @s[scores={sukunacutscene=4}] invest 3



tag @s[scores={sukunacutscene=1..3}] remove finger_rejected
tag @s[scores={sukunacutscene=1..3}] remove sukuna_awakening
tag @s[scores={sukunacutscene=1..3}] remove finger_eaten2 