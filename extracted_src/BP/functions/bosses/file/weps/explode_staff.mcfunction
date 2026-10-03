
tag @s[tag=itemUse:ds:explode_staff,scores={move=0,wep5=0,Stun=0}] add explosionstaff
scoreboard players set @s[tag=itemUse:ds:explode_staff,scores={move=0,wep5=0,Stun=0}] move 21
scoreboard players set @s[tag=itemUse:ds:explode_staff,scores={move=20..,wep5=0,Stun=0}] wep5 1200
tellraw @s[tag=itemUse:ds:explode_staff,scores={move=0,wep5=1..,Stun=0}] {"rawtext":[{"text":"§cThe Staff needs recharging: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}

playanimation @s[scores={move=10},tag=explosionstaff] animation.point
execute as @s[scores={move=5},tag=explosionstaff] at @s run summon ds:projectile "xero_explode" ^^^40
execute as @s[scores={move=5},tag=explosionstaff] at @s run playsound mob.wither.spawn @a[r=50] ~~~ 99999 2 99999
execute as @s[scores={move=5},tag=explosionstaff] at @s run particle ds:red_impact1 ~~1~
execute as @s[scores={move=5},tag=explosionstaff] at @s run particle ds:red_impact2 ~~1~
execute as @s[scores={move=5},tag=explosionstaff] at @s run particle ds:red_impact3 ~~1~
execute as @s[scores={move=5},tag=explosionstaff] at @s run particle ds:red_impact4 ~~1~
tag @s[scores={move=1..3}] remove explosionstaff

execute as @e[name="xero_explode"] at @s run function bosses/file/weps/explosion