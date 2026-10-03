execute as @s[name=Reversal,tag=!Stopped] at @s run tp @s ^^^3 facing @e[name=ReversalTRG,c=1]
execute as @s[name=Reversal,tag=!Stopped] at @s run tp @s ^^^3 facing @e[name=ReversalTRG,c=1]
execute as @s[name=Reversal,tag=!Stopped] at @s run tp @s ^^^3 facing @e[name=ReversalTRG,c=1]

playanimation @s animation.phase_red

execute as @s[scores={Deleter=3..}] if entity @e[name=ReversalTRG,r=3] run scoreboard players set @s Deleter 2

execute as @e[name=ReversalTRG] at @s run tp @s ~~~
tag @s[name=Reversal] add GojoProj
tag @e[name=ReversalTRG] add GojoProj

execute as @s[name=Reversal] at @s run playanimation @s animation.reversal_red
execute as @s[name=Reversal] at @s run particle ds:red_ex6
execute as @s[name=Reversal] at @s run particle ds:red_ex4
execute as @s[name=Reversal] at @s run particle ds:red_ex
execute as @s[name=Reversal] at @s run particle ds:air_effect1

execute as @e[name=ReversalTRG] at @s run tickingarea add ~3~3~3~-3~-3~-3 reversal

execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run kill @e[type=item,r=35]
execute as @s[name=Reversal,scores={Deleter=1..}] at @s run effect @e[r=100] resistance 1 2 true

execute as @s[name=Reversal,scores={Deleter=1..16}] at @s  run execute as @e[scores={ab=1..},tag=limitless,c=1] at @s run function damages/explosion_damage
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run damage @e[tag=!Frames,r=20,tag=!limitless] 26 override entity @p[tag=limitless]
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reversal ^^-1^-9  0 ~ minecraft:crystal_explode
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reversal ^3^-1^-9  0 ~ minecraft:crystal_explode
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reversal ^-3^-1^-9  0 ~ minecraft:crystal_explode
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reverse ^^-1^-9
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reverse ^-3^-1^-9
execute as @s[name=Reversal,scores={Deleter=1..16}] at @s run summon ds:red_reverse ^3^-1^-9