
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run function remove_ct
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run function clear_skills

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=miracles] {"rawtext":[{"text":"§cYou are already using Miracles Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!miracles] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=miracles] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] {"rawtext":[{"text":"§eYou are now using the: §uMiracles Technique"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] forms 1

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run scoreboard objectives add miracles dummy
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run scoreboard players set @s miracles 0
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run event entity @s miracle0
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!miracles] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000


tag @s add miracles

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..,invest=10..},tag=miracles]  {"rawtext":[{"text":"§cThis technique cannot be upgraded."}]}

tag @s remove cantupgrade

clear @s ds:miracles_technique
scoreboard objectives add miracles dummy
