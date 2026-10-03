
tag @s[tag=itemUse:ds:devastator,scores={move=0,wep5=0,Stun=0}] add devastator
scoreboard players set @s[tag=itemUse:ds:devastator,scores={move=0,wep5=0,Stun=0}] move 31
scoreboard players set @s[tag=itemUse:ds:devastator,scores={move=20..,wep5=0,Stun=0}] wep5 50
tellraw @s[tag=itemUse:ds:devastator,scores={move=0,wep5=1..,Stun=0}] {"rawtext":[{"text":"§cThe Cannon needs recharging: §e"},{"score":{"name": "@p","objective": "wep5"}},{"text":"§c."}]}

playanimation @s[scores={move=0}] animation.devastator_hold

playanimation @s[scores={move=5..30},tag=devastator] animation.devastator_shoot
effect @s[scores={move=30..}] slowness 2 3 true

execute as @s[scores={move=30},tag=devastator] at @s run playsound music.bassboost @a[r=50] ~~~ 9999 2 9999
execute as @s[scores={move=8..30},tag=devastator] at @s run camerashake add @a[r=20] 2 0.15

execute as @s[scores={move=12},tag=devastator] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=12},tag=devastator] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=12},tag=devastator] at @s positioned ^^^5 run function devastate

execute as @s[scores={move=10},tag=devastator] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=10},tag=devastator] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=10},tag=devastator] at @s positioned ^^^5 run function devastate

execute as @s[scores={move=8},tag=devastator] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=8},tag=devastator] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=8},tag=devastator] at @s positioned ^^^5 run function devastate

execute as @s[scores={move=6},tag=devastator] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=6},tag=devastator] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=6},tag=devastator] at @s positioned ^^^5 run function devastate

execute as @s[scores={move=4},tag=devastator] at @s run playsound mob.distort2 @a ~~~ 99999 0.5 99999
execute as @s[scores={move=4},tag=devastator] at @s run camerashake add @a[r=100] 4 0.15 rotational
execute as @s[scores={move=4},tag=devastator] at @s positioned ^^^5 run function devastate

tag @s[scores={move=1..3}] remove devastator

