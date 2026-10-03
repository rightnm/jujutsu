playanimation @s[scores={move=151}] animation.eternal_blitz

tag @s[scores={move=1..2},tag=form1e] remove form1e

tag @s[scores={move=141..,Stun=1..},tag=form1e] remove form1e
playanimation @s[scores={move=141..,Stun=1..},tag=!noStunnedAnim] animation.stunned
scoreboard players set @s[scores={move=141..,Stun=1..}] move 0

scoreboard players set @s[scores={move=11..}] Frames 5
scoreboard players set @s[scores={move=11..}] Move 4
scoreboard players set @s[scores={move=120..}] Camera 5

execute as @s[scores={move=145..}] at @s if block ~~-0.1~ air run tp @s ~~-0.1~
execute as @s[scores={move=145..}] at @s if block ~~-0.25~ air run tp @s ~~-0.25~
execute as @s[scores={move=145..}] at @s if block ~~-0.33~ air run tp @s ~~-0.33~
execute as @s[scores={move=145..}] at @s if block ~~-0.5~ air run tp @s ~~-0.5~
execute as @s[scores={move=145..}] at @s if block ~~-1~ air run tp @s ~~-1~
execute as @s[scores={move=145..}] at @s if block ~~-2~ air if block ~~-1~ air run tp @s ~~-2~

execute as @s[scores={move=150}] at @s run tp @s @s
camera @s[scores={move=140..149},type=player] set minecraft:free pos ^^1.25^3 facing ^^1.25^
camera @s[scores={move=139},type=player] set minecraft:free ease 0.5 in_sine pos ^^1.25^2 facing ^^1.25^

camera @s[scores={move=101},type=player] fade time 0.5 0.25 0.5 color 255 255 255

execute as @s[scores={move=120..150}] at @s run playsound mob.blaze.shoot @a[r=40] ~~~ 9999 1.2 9999
execute as @s[scores={move=120..150}] at @s run playsound mob.blaze.shoot @a[r=40] ~~~ 9999 0.8 9999
execute as @s[scores={move=120..150}] at @s run playsound mob.burn @a[r=40] ~~~ 9999 1.2 9999
execute as @s[scores={move=120..150}] at @s run camerashake add @a[r=10] 0.1 0.1 rotational

execute as @s[scores={move=74}] at @s run particle ds:invert ^^^-10

execute as @s[scores={move=68}] at @s run particle ds:invert ^^^-10


execute as @s[scores={move=122}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=122}] at @s run particle ds:flashstep2 ~~~
execute as @s[scores={move=122}] at @s run particle ds:crater1 
execute as @s[scores={move=122}] at @s run particle ds:leap
execute as @s[scores={move=121}] at @s run tp @s ~~25~
execute as @s[scores={move=120}] at @s run particle ds:flashstep1 ~~~
execute as @s[scores={move=120}] at @s run particle ds:flashstep2 ~~~

execute as @s[scores={move=115..120}] at @s run fill ~3~3~3~-3~-3~-3 barrier [] replace air
execute as @s[scores={move=115..119}] at @s run fill ~1 ~1 ~1 ~-1 ~ -1 air [] replace barrier
execute as @s[scores={move=25..118},type=player] at @s anchored eyes run camera @s set minecraft:free ease 0.1 in_sine pos ^5^9^-33 facing ^^^125
execute as @s[scores={move=1..24},type=player] at @s anchored eyes run camera @s clear

execute as @s[scores={move=90}] at @s anchored eyes positioned ^^^14 run camerashake add @a[r=100] 4 0.5 rotational

execute as @s[scores={move=85..90}] at @s anchored eyes positioned ^^^1 run particle ds:flame_stars ^^1^1 

execute as @s[scores={move=151}] at @s anchored eyes positioned ^^^14 run fog @a[r=100] push minecraft:hell blaze
execute as @s[scores={move=1..24}] at @s anchored eyes positioned ^^^14 run fog @a remove blaze
execute as @s[scores={move=92}] at @s anchored eyes positioned ^^^14 run playsound music.bassboost @a[r=1000] ~~~ 99999 0.7 99999
execute as @s[scores={move=25..84}] at @s anchored eyes positioned ^^^14 run function flames/eternalblaze
execute as @s[scores={move=25..84}] at @s anchored eyes positioned ^^^14 run playsound mob.blaze.shoot @a[r=1000] ~~~ 99999 0.5 99999
execute as @s[scores={move=25..84}] at @s anchored eyes positioned ^^^14 run playsound mob.blaze.shoot @a[r=1000] ~~~ 99999 0.25 99999
execute as @s[scores={move=35..84}] at @s anchored eyes positioned ^^^14 run playsound mob.burn @a[r=1000] ~~~ 99999 0.85 99999

execute as @s[scores={move=1..5}] at @s run function cancel_attack