
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] at @s run function remove_ct
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] at @s run function clear_skills

tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=painkiller] {"rawtext":[{"text":"§cYou are already using Pain-killer Technique you bozo!"}]}
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=!painkiller] fade time 0.15 0.33 0.15 color 0 0 0
camera @s[r=0.2,scores={Stun=0,Disabled=0},tag=painkiller] fade time 0.15 0.33 0.15 color 0 0 0
tellraw @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] {"rawtext":[{"text":"§g- §eYou are now using the: §2 Pain-Killer Technique"}]}
scoreboard players set @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] forms 1

execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] at @s run playsound mob.wither.hurt @a ~~~ 100000 0.25 100000
execute as @s[r=0.2,scores={Sneaking=0,Stun=0,Disabled=0},tag=!painkiller] at @s run playsound random.levelup @a ~~~ 100000 0.85 100000


tag @s add painkiller

give @s ds:painkiller1 1 0 {"minecraft:keep_on_death":{},"minecraft:item_lock":{"mode":"lock_in_inventory"}}
clear @s ds:painkiller_technique

tellraw @s[r=0.2,scores={Sneaking=1..,Stun=0,Disabled=0,forms=1..,invest=10..},tag=painkiller]  {"rawtext":[{"text":"§cThis technique cannot be upgraded as it grows with your Cursed Energy amount."}]}

tag @s remove cantupgrade

scoreboard objectives add painkiller dummy
