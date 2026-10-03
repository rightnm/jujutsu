
tag @s[tag=itemUse:ds:mountain_buster,scores={move=0,wep5=0,Stun=0}] add mountain_buster
scoreboard players set @s[tag=itemUse:ds:mountain_buster,scores={move=0,wep5=0,Stun=0}] Move 81
scoreboard players set @s[tag=itemUse:ds:mountain_buster,scores={move=0,wep5=0,Stun=0}] move 81
scoreboard players set @s[tag=itemUse:ds:mountain_buster,scores={move=20..,wep5=0,Stun=0}] wep5 1200
tellraw @s[tag=itemUse:ds:mountain_buster,scores={move=0,wep5=1..,Stun=0}] {"rawtext":[{"text":"§cThe Gun needs recharging: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}

playanimation @s[scores={move=0}] animation.devastator_hold

playanimation @s[scores={move=25..80},tag=mountain_buster] animation.mountain_buster_shoot
effect @s[scores={move=40..}] slowness 2 3 true

execute as @s[scores={move=80},tag=mountain_buster] at @s run playsound mob.mountain_buster @a ~~~ 99999 1 99999
execute as @s[scores={move=25..},tag=mountain_buster] at @s run camerashake add @a[r=15] 0.1 0.2

execute as @s[scores={move=20},tag=mountain_buster] at @s run summon gg:impact_frame
execute as @s[scores={move=20},tag=mountain_buster] at @s run particle ds:invert ^^1^1 
execute as @s[scores={move=20},tag=mountain_buster] at @s run effect @a[r=50] night_vision 1 1 true
execute as @s[scores={move=20},tag=mountain_buster] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=20},tag=mountain_buster] at @s positioned ^^^5 run function mountain_bust

tag @s[scores={move=1..3}] remove mountain_buster

