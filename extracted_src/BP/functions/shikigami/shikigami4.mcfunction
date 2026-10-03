playanimation @s[scores={move=20}] animation.nue_spawn

tag @s[scores={move=1..2}] remove form4

tag @s[scores={move=14..,Stun=1..}] remove form4
scoreboard players set @s[scores={move=14..,Stun=1..}] move 0

execute as @s[scores={move=13..15}] at @s run tp @s @s

tag @s[scores={move=1..14,detect_jump=1..}] add nuefly

execute as @s[scores={move=14}] at @s run summon ds:nue "Nue Sweep"
execute as @s[scores={move=14}] at @s run tp @e[name="Nue Sweep",c=1] ^^1^1 facing ^^1^30
execute as @s[scores={move=14}] at @s run scoreboard players set @e[name="Nue Sweep",c=1] Deleter 40
execute as @s[scores={move=12..14}] at @s run playanimation @e[name="Nue Sweep",c=1] animation.nue.sweep
execute as @s[scores={move=14..16}] at @s run playsound mob.nue @a ~~~ 1000000 1.15 1000000

execute as @s[scores={move=14..16}] at @s run scoreboard players set @s Frames 25

execute as @s[scores={move=14..16}] at @s run particle ds:shikigami_appear3 ^^1^1
execute as @s[scores={move=14..16}] at @s run camerashake add @a[r=20] 1 0.15
