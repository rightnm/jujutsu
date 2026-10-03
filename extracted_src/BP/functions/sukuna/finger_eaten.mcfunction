playanimation @s[scores={sukunacutscene=140..}] animation.sukuna_finger.eat


tag @s[scores={sukunacutscene=130..141}] remove finger_rejected
tag @s[scores={sukunacutscene=130..141}] remove sukuna_awakening

scoreboard players set @s Move 6
scoreboard players set @s infinity 6
scoreboard players set @s Frames 6
scoreboard players set @s Camera 6
kill @e[type=ds:red_reverse,r=30]
kill @e[type=ds:knockback,r=30]
kill @e[type=ds:mahoraga_knockback1,r=40]


scoreboard players set @s finger 1

kill @e[type=item,r=5]

execute as @s[scores={sukunacutscene=139}] at @s run playsound mob.enderdragon.flap @a[r=20] ~~~ 0.15 0.45 
execute as @s[scores={sukunacutscene=104}] at @s run playsound mob.witch.throw @a[r=20] ~~~ 0.15 1.15 
execute as @s[scores={sukunacutscene=104}] at @s run camerashake add @a[r=5] 0.1 0.12

execute as @s[scores={sukunacutscene=90}] at @s run playsound mob.slime.jump @a[r=10] ~~~ 1 2
execute as @s[scores={sukunacutscene=90}] at @s run playsound random.eat
execute as @s[scores={sukunacutscene=85}] at @s run playsound random.burp

execute as @s[scores={sukunacutscene=1..85}] at @s run kill @e[family=purecurse,r=100,family=!special_grade]

execute as @s[scores={sukunacutscene=70}] at @s run effect @s blindness 5 2 true

scoreboard players random @s[scores={sukunacutscene=25},tag=!sukunachancerig] chance 1 10
scoreboard players random @s[scores={sukunacutscene=25},tag=!sukunachancerig,hasitem={item=ds:yuji_fists,quantity=1..}] chance 6 10
scoreboard players set @s[scores={sukunacutscene=25},tag=sukunachancerig] chance 10

camera @s[scores={sukunacutscene=40}] fade time 0.8 0.85 0.5 color 0 0 0

clear @s[scores={sukunacutscene=25}] ds:sukuna_finger 0 1

tag @s[scores={sukunacutscene=20..23,chance=1..9}] add finger_rejected
scoreboard players set @s[scores={sukunacutscene=1..23,chance=1..9},tag=finger_rejected] sukunacutscene 121


tag @s[scores={sukunacutscene=20..23,chance=10..}] add sukuna_awakening
scoreboard players set @s[scores={sukunacutscene=1..23,chance=10..},tag=sukuna_awakening] sukunacutscene 1001
