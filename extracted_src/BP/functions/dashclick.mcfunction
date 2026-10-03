tellraw @s[scores={Sneaking=1..,agility=0..39}] {"rawtext":[{"text":"§cFlashstep requires 40+ agility"}]}
tag @s[scores={DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=1..,detect_jump=0,agility=40..}] add ChargeDash

execute as @s[scores={moveAngle=246..295,DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=0}] at @s run function dashleft
execute as @s[scores={moveAngle=66..116,DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=0}] at @s run function dashright
execute as @s[scores={moveAngle=136..225,DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=0}] at @s run function dashback

scoreboard players set @s[scores={DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=1..,detect_jump=0,agility=40..}] Dash 28

scoreboard players set @s[scores={DashCD=0,Hit=0,Stun=0,Disabled=0,Sneaking=0}] Dash 12