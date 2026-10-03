playanimation @s[scores={move=70..}] animation.primesoul.katana_ult2

tp @s ~ 240 ~ 

execute as @s[scores={move=70}] at @s run playsound mob.wither.shoot @a[r=200] ~~~ 99999 0.25 99999
execute as @s[scores={move=70}] at @s run playsound mob.wither.spawn @a[r=200] ~~~ 99999 0.25 99999
execute as @s[scores={move=70}] at @s run execute as @a[r=200] at @s run playsound music.sekiro @s ~~~ 99999 0.85 99999
execute as @s[scores={move=65..70}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=70}] at @s run particle ds:dirt0

execute as @s[scores={move=55}] at @s run event entity @s primekatana
execute as @s[scores={move=1..8}] at @s run event entity @s primekatana_sheathed

execute as @s[scores={move=55..70}] at @s run particle ds:equinox_judgement1 ~~~
execute as @s[scores={move=55..70}] at @s run particle ds:equinox_judgement2 ~~~
execute as @s[scores={move=55..70}] at @s run particle ds:primesoul_trg2 ~~~

execute as @s[scores={move=70}] at @s run tellraw @a[r=300] {"rawtext":[{"text":"§r§f< §o§lHeroic Prime §r§f> §4ʏᴏᴜ ꜱʜᴀʟʟ ᴅɪᴇ!"}]}

execute as @s[scores={move=50}] at @s run camera @a[r=50] set minecraft:free pos ^25^15^-30 facing ~~1~
execute as @s[scores={move=47..49}] at @s run camera @a[r=50] set minecraft:free ease 1.5 in_out_circ pos ^^1.25^4 facing ~~1~
execute as @s[scores={move=1..7}] at @s run camera @a[r=50] clear

execute as @s[scores={move=55}] at @s run camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=35..55}] at @s run scoreboard players set @a[tag=!Frames,r=26] Stun 35
execute as @s[scores={move=50..55}] at @s run playsound mob.slash1 @a[r=100] ~~7~ 99999 4 99999
execute as @s[scores={move=50..55}] at @s run playsound mob.slash @a[r=100] ~~7~ 99999 5 99999
execute as @s[scores={move=50..55}] at @s run particle ds:equinox_judgement3 ~~7~
execute as @s[scores={move=50..55}] at @s run particle ds:equinox_judgement4 ~~7~
execute as @s[scores={move=50..55}] at @s run particle ds:equinox_judgement5 ~~7~
execute as @s[scores={move=50..55}] at @s run particle ds:equinox_judgement6 ~~7~
execute as @s[scores={move=55}] at @s run particle ds:invert
execute as @s[scores={move=15..40}] at @s run summon gg:impact_frame
execute as @s[scores={move=49..50}] at @s run particle ds:equinox_judgement_glass1 ~~10~
execute as @s[scores={move=51}] at @s run execute as @a[r=200] at @s run playsound music.domainbreak @s ~~~ 99999 0.7 99999

execute as @s[scores={move=12}] at @s run playsound mob.parry @a[r=200] ~~~ 99999 6 99999
execute as @s[scores={move=10}] at @s run playsound mob.slash1 @a[r=200] ~~~ 99999 2 99999
execute as @s[scores={move=10}] at @s run  damage @a[tag=!Frames,r=26] 100 suicide
execute as @s[scores={move=10}] at @s run scoreboard players set @a[tag=!Frames,r=26] Hit 15
execute as @s[scores={move=7..10}] at @s run particle ds:equinox_judgement_glass2 ~~10~
execute as @s[scores={move=7..10}] at @s run particle ds:equinox_judgement_glass3 ~~10~
execute as @s[scores={move=10}] at @s run  camerashake add @a[r=200] 2 0.15
execute as @s[scores={move=10}] at @s run particle ds:invert
execute as @s[scores={move=9}] at @s run particle ds:blue_tint
execute as @s[scores={move=10}] at @s run summon gg:impact_frame
tag @s[scores={move=1..3}] remove katanault2