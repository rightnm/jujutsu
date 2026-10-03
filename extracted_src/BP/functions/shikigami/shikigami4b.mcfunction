playanimation @s[scores={move=20}] animation.nue_spawn

tag @s[scores={move=1..2}] remove form4b

tag @s[scores={move=14..,Stun=1..}] remove form4b
scoreboard players set @s[scores={move=14..,Stun=1..}] move 0


execute as @s[scores={move=14}] at @s run summon ds:nue "Nue Flap"
execute as @s[scores={move=5..14}] at @s run tp @e[name="Nue Flap",c=1] ^^7^-8 facing ^^1^30
execute as @s[scores={move=14}] at @s run scoreboard players set @e[name="Nue Flap",c=1] Deleter 50
execute as @s[scores={move=12..14}] at @s run playanimation @e[name="Nue Flap",c=1] animation.nue.dive
execute as @s[scores={move=14..16}] at @s run scoreboard players set @s Frames 25
execute as @s[scores={move=14..16}] at @s run particle ds:shikigami_appear3 ^^7^-8
execute as @s[scores={move=14..16}] at @s run camerashake add @a[r=20] 1 0.15
execute as @s[scores={move=14..16}] at @s run playsound mob.nue @a ^^7^-7 100000 0.9 10000

execute as @s[scores={move=5}] at @s run summon ds:projectile NueBoltTRG ^^^56
execute as @s[scores={move=4..5}] at @s run tp @e[name=NueBoltTRG,c=1] ^^^56
execute as @s[scores={move=5}] at @s positioned ^^^56 run scoreboard players set @e[name=NueBoltTRG,c=1] Deleter 64

