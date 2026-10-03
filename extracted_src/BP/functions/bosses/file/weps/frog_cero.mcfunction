
tag @s[tag=itemUse:ds:frog_cero,scores={move=0,wep1=0,Stun=0,Sneaking=0}] add frog_ceroab1
scoreboard players set @s[tag=itemUse:ds:frog_cero,scores={move=0,wep1=0,Stun=0,Sneaking=0}] move 31
tellraw @s[tag=itemUse:ds:frog_cero,scores={move=0,wep1=1..,Stun=0,Sneaking=0}] {"rawtext":[{"text":"§cNeeds recharging: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}

scoreboard players set @s[scores={move=15..}] Move 8

tag @s[tag=itemUse:ds:frog_cero,scores={move=0,wep2=0,Stun=0,Sneaking=1..}] add frog_ceroab2
scoreboard players set @s[tag=itemUse:ds:frog_cero,scores={move=0,wep2=0,Stun=0,Sneaking=1..}] move 61
scoreboard players set @s[tag=itemUse:ds:frog_cero,scores={move=60..,wep2=0,Stun=0,Sneaking=1..}] Frames  65
scoreboard players set @s[tag=itemUse:ds:frog_cero,scores={move=60..,wep2=0,Stun=0,Sneaking=1..}] wep2 600
tellraw @s[tag=itemUse:ds:frog_cero,scores={move=0,wep2=1..,Stun=0,Sneaking=1..}] {"rawtext":[{"text":"§cNeeds recharging: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}

tag @s[scores={move=0},tag=frog_ceroab1] remove frog_ceroab1
tag @s[scores={move=0},tag=frog_ceroab2] remove frog_ceroab2

execute as @s[tag=frog_ceroab1,scores={move=1..}] at @s run function bosses/file/boss/summons/frogdog_ab1
execute as @s[tag=frog_ceroab2,scores={move=1..}] at @s run function bosses/file/boss/summons/frogdog_ab2
