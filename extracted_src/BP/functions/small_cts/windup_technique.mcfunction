
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] at @s run function remove_ct
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] at @s run function clear_skills

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=windup] {"rawtext":[{"text":"§cYou are already using Wind-up Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!windup] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=windup] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] {"rawtext":[{"text":"\n§g\n"},{"text":"§g- §eYou are now using the: §6 Wind-up Technique      §f§g\n"},{"text":"§g"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] forms 1

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!windup] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000


tag @s add windup

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..,invest=10..},tag=windup]  {"rawtext":[{"text":"§cThis technique cannot be upgraded as it relies on your Strength and time."}]}

tag @s remove cantupgrade

scoreboard objectives add windup dummy
