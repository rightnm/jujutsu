scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] BasicM1 12
scoreboard players add @s[scores={punch=1,Disabled2=0,Stun=0}] scroll 1
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] Disabled2 13

scoreboard players set @s[scores={scroll=3..}] scroll 1
playanimation @s[scores={BasicM1=11..12,scroll=1}] animation.truesword.slash1
playanimation @s[scores={BasicM1=11..12,scroll=2}] animation.truesword.slash2

execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run damage @e[family=heroic,tag=!Frames,r=6] 20 suicide
execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run scoreboard players set @e[family=heroic,tag=!Frames,r=6] Stun 5
execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run scoreboard players set @e[family=heroic,tag=!Frames,r=6] Hit 3
execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run playsound portal.travel @a ~~~ 0.2 7 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run playsound mob.swordslash @a ~~~ 0.2 2 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^3 run camerashake add @a[r=10] 0.25 0.15


tag @s[tag=itemUse:ds:truesword,scores={move=0,wep1=0,Stun=0}] add trueswordab1
scoreboard players set @s[tag=itemUse:ds:truesword,scores={move=0,wep1=0,Stun=0}] move 61
scoreboard players set @s[tag=itemUse:ds:truesword,scores={move=60..,wep1=0,Stun=0}] wep1 400
tellraw @s[tag=itemUse:ds:truesword,scores={move=0,wep1=1..,Stun=0}] {"rawtext":[{"text":"§cThe Sword needs recharging: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}



playanimation @s[scores={move=60..61},tag=trueswordab1] animation.truesword.slash_ab

scoreboard players set @s[scores={move=38..}] Move 18
execute as @s[scores={move=30..37},tag=trueswordab1] at @s run scriptevent ds:knockback 5

execute as @s[scores={move=38..},tag=trueswordab1] at @s run scriptevent ds:antiair
execute as @s[scores={move=20..33},tag=trueswordab1] at @s run scriptevent ds:antiair
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run damage @e[family=heroic,tag=!Frames,r=10] 100 suicide
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run scoreboard players set @e[family=heroic,tag=!Frames,r=10] Stun 30
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run scoreboard players set @e[family=heroic,tag=!Frames,r=10] Hit 3
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run playsound portal.travel @a[r=200] ~~~ 9999 4  9999
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run playsound mob.swordslash @a[r=200] ~~~ 9999 0.75 9999 
execute as @s[scores={move=30},tag=trueswordab1] at @s positioned ^^^5 run camerashake add @a[r=10] 1 0.15
tag @s[scores={move=1..4},tag=trueswordab1] remove trueswordab1