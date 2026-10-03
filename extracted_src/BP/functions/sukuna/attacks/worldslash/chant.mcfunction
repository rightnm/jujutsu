tellraw @s[scores={move=20..,wcschant=3..}] {"rawtext":[{"text":"§4I have already chanted 3 times."}]}
execute as @s[scores={move=20..,wcschant=3..}] at @s run scoreboard players add @s Energy 200
execute as @s[scores={move=20..,wcschant=3..}] at @s run scoreboard players set @s move 3

playanimation @s[scores={move=20..21}] animation.world_slash_chant

execute as @s unless entity @s[scores={wcschant=0..}] run scoreboard players set @s wcschant 0

effect @s[scores={move=20..}] slowness 1 2 true
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity1 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity2 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity3 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:turbo_intensity4 ~~0.5~
execute as @s[scores={move=10}] at @s run particle ds:unparrymarker ~~1~
execute as @s[scores={move=10}] at @s run playsound mob.chant @a[r=100] ~~1~ 9999 0.65 9999
execute as @s[scores={move=10}] at @s run camerashake add @a[r=10] 2 0.15
execute as @s[scores={move=19..}] at @s run scoreboard objectives add wcschant dummy

execute as @s[scores={move=11}] at @s run scoreboard players add @s wcschant 1

execute as @s[scores={move=10,wcschant=1}] at @s anchored eyes run particle ds:wcs_chant3 ^2^-1.5^
execute as @s[scores={move=10,wcschant=2}] at @s anchored eyes run particle ds:wcs_chant2 ^-2^-1.5^
execute as @s[scores={move=10,wcschant=3}] at @s anchored eyes run particle ds:wcs_chant1 ^2^-1.5^

tag @s[scores={move=1..4}] remove form8s