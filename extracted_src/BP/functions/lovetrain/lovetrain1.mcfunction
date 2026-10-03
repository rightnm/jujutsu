playanimation @s[scores={move=20}] animation.lovetrain.shutter_doors1

scoreboard players set @s[scores={move=3..}] Move 5

tag @s[scores={move=1..2}] remove form1

tag @s[scores={move=16..,Stun=1..}] remove form1
scoreboard players set @s[scores={move=16..,Stun=1..}] move 0


execute as @s[scores={move=14..16}] at @s run tp @s @s
execute as @s[scores={move=17}] at @s run scoreboard players random @s chance 1 100
execute as @s[scores={move=17},tag=gambler] at @s run scoreboard players random @s chance 41 100

scoreboard players set @s[scores={move=11..17}] Frames 7
execute as @s[scores={move=16,chance=1..40}] at @s run summon ds:shutterdoors1 ^^1^0.25 facing ^^^20 none "Shutter Doors"
execute as @s[scores={move=16,chance=41..70}] at @s run summon ds:shutterdoors2 ^^1^0.25 facing ^^^20 none "Shutter Doors"
execute as @s[scores={move=16,chance=71..90}] at @s run summon ds:shutterdoors3 ^^1^0.25 facing ^^^20 none "Shutter Doors"
execute as @s[scores={move=16,chance=91..100}] at @s run summon ds:shutterdoors4 ^^1^0.25 facing ^^^20 none "Shutter Doors"

scoreboard players add @s[scores={move=16,chance=41..70}] fever 1
scoreboard players add @s[scores={move=16,chance=71..90}] fever 3 
scoreboard players add @s[scores={move=16,chance=91..100}] fever 5

execute as @s[scores={move=16}] at @s run scoreboard players set @e[name="Shutter Doors",c=1] Deleter 41

execute as @s[scores={move=19}] at @s run playsound mob.wither.shoot @a ~~~ 1 1.4
execute as @s[scores={move=11,chance=1..}] at @s run playsound random.anvil_land @a ~~~ 1 0.94