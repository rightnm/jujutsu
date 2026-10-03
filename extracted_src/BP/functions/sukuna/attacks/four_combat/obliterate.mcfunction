scoreboard players set @s[scores={move=11..}] Frames 14
scoreboard players set @s[scores={move=11..}] Move 14
scoreboard players set @s[scores={move=11..}] Camera 14
scoreboard players set @e[tag=obliterate] Camera 14
scoreboard players set @e[tag=obliterate] Move 14
scoreboard players set @e[tag=obliterate] Stun 15
scoreboard players set @e[tag=obliterate] stunned 15
tag @s add Frames
effect @s resistance 1 6 true

execute as @s[scores={move=14}] at @s run playsound mob.enderdragon.flap @a[r=10] ~~~ 1 0.4
execute as @s[scores={move=14}] at @s run particle ds:ground_slam1
execute as @s[scores={move=14}] at @s run particle ds:ground_slam1

execute as @s[scores={move=10..14}] at @s run particle ds:turbo_intensity2 ~~-1~
execute as @s[scores={move=10..14}] at @s run particle ds:turbo_intensity4 ~~1~

playanimation @s[scores={move=15..16}] animation.heian_sukuna.demonic_counter

execute as @s[scores={move=4..14}] at @s  run scoreboard objectives add atk dummy


execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[r=4.99,type=ds:knockback_dummy] atk 2
execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[r=4.99,type=ds:no_knockback_dummy] atk 2


execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[type=!player,scores={move=1..},r=4] atk 2
execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[r=4.99,tag=!Frames,scores={detect_left=1..},c=1,rm=0.15] atk 2
execute as @s[scores={move=4..14}] at @s  run tag @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] add obliterate
execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] Stun 15
execute as @s[scores={move=4..14}] at @s  run scoreboard players set @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] stunned  15
execute as @s[scores={move=4..14}] at @s  run execute as @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,rm=0.15] at @s run function cancel_attack

execute as @s[scores={move=7..14}] at @s if entity @e[r=4.99,tag=!Frames,scores={atk=1..},c=1,tag=obliterate] run scoreboard players set @s move 1001




playanimation @s[scores={move=994..1001}] animation.heian_sukuna.demonic_counter2
execute as @s[scores={move=1000..1001}] at @s run playanimation @e[tag=obliterate,c=1] animation.vanishing_blow2
execute as @s[scores={move=1000..1001}] at @s run tp @s @s

execute as @s[scores={move=1000..1001}] at @s run camera @a[r=20] fade time 0 0.1 0.15 color 0 0 0
execute as @s[scores={move=994..1001}] at @s run particle ds:flashstep
execute as @s[scores={move=994..1001}] at @s run playsound mob.blaze.shoot @a ~~~ 0.15 2
execute as @s[scores={move=994..1001}] at @s run playsound mob.enderdragon.flap @a ~~~ 0.15 2

execute as @s[scores={move=100..1001}] at @s run particle ds:cutscene_black1
execute as @s[scores={move=100..1001}] at @s run particle ds:cutscene_black3 ~~0.1~

execute as @s[scores={move=994..995}] at @s run execute as @a[r=50] at @s run playsound music.bass3 @s ~~~ 99999 0.8 99990

execute as @s[scores={move=994..1001}] at @s run tp @s @e[tag=obliterate,c=1]
execute as @s[scores={move=991..997}] at @s run tp @e[tag=obliterate,c=1] ^^^1.25
execute as @s[scores={move=991..997}] at @s run camera @s set minecraft:free pos ^1^1.5^1.5 facing ^^1.5^
execute as @s[scores={move=989..990}] at @s run camera @s set minecraft:free ease 1.5 in_sine pos ^0.5^1.5^2.5 facing ^^1.5^


execute as @s[scores={move=962..985}] at @s run camerashake add @a[r=15] 0.5 0.08
execute as @s[scores={move=962..985}] at @s run particle ds:obliterate1 ~~1~
execute as @s[scores={move=962..980}] at @s run particle ds:obliterate2 ~~1~
execute as @s[scores={move=962..968}] at @s run particle ds:obliterate3 ~~1~

execute as @s[scores={move=955..956}] at @s run camera @s set minecraft:free pos ^5^1.5^ facing ^^1.5^

execute as @s[scores={move=954..956}] at @s run tp @s ^^^1.5
execute as @s[scores={move=954..956}] at @s run camerashake add @a[r=100] 1 0.15 rotational

execute as @s[scores={move=968}] at @s run particle ds:invert ^^^
execute as @s[scores={move=974}] at @s run particle ds:invert ^^^

execute as @s[scores={move=954..956}] at @s run playanimation @e[tag=obliterate,c=1] animation.stunned

execute as @s[scores={move=955..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run playsound mob.blood @a[r=100] ~~~ 99999 0.85 99999
execute as @s[scores={move=955..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run playsound mob.slice @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=955..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run playsound mob.slash1 @a[r=100] ~~~ 99999 0.75 99999
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run playsound mob.sword @a[r=100] ~~~ 99999 0.5 99999
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:blood_splat ~~~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:blood ~~~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:blood_2 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve1 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve2 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve3 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve4 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve5 ~~1~
execute as @s[scores={move=950..956}] at @s run execute as @e[tag=obliterate,c=1] at @s run particle ds:carve6 ~~1~
execute as @s[scores={move=956}] at @s run scoreboard players set @e[tag=obliterate,c=1] Stun 40
execute as @s[scores={move=954}] at @s run damage @e[tag=obliterate,c=1] 150 override
execute as @s[scores={move=956}] at @s run scoreboard players set @e[tag=obliterate,c=1] Hit 10
execute as @s[scores={move=955}] at @s run summon gg:impact_frame
execute as @s[scores={move=954}] at @s run particle ds:invert ^3^^
execute as @s[scores={move=950..954}] at @s run tag @e[r=30] remove obliterate

tag @s[scores={move=1..3}] remove wep2s3

scoreboard players set @s[scores={move=100..950}] move 3