
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] at @s run function remove_ct
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] at @s run function clear_skills

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=sight] {"rawtext":[{"text":"§cYou are already using Immobilizing Sight Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!sight] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=sight] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] {"rawtext":[{"text":"\n§g\n"},{"text":"§g- §eYou are now using the: §7Immobilizing Sight Technique§f§g\n"},{"text":"§g"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] forms 1

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!sight] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000


tag @s add sight

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..,invest=10..},tag=sight]  {"rawtext":[{"text":"§cThis technique cannot be upgraded."}]}

tag @s remove cantupgrade

clear @s ds:sight_technique
scoreboard objectives add sight dummy
