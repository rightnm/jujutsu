scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] BasicM1 12
scoreboard players add @s[scores={punch=1,Disabled2=0,Stun=0}] scroll 1
scoreboard players set @s[scores={punch=1,Disabled2=0,Stun=0}] Disabled2 13

scoreboard players set @s[scores={scroll=3..}] scroll 1
playanimation @s[scores={BasicM1=11..12,scroll=1}] animation.sword.slash1
playanimation @s[scores={BasicM1=11..12,scroll=2}] animation.sword.slash2

execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run damage @e[tag=!Frames,r=1.9] 8 suicide
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.9] Stun 5
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run scoreboard players set @e[tag=!Frames,r=1.9] Hit 3
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run playsound mob.swordslash @a ~~~ 0.2 2 
execute as @s[scores={BasicM1=5}] at @s positioned ^^^2 run camerashake add @a[r=10] 0.25 0.15


tag @s[tag=itemUse:ds:butter_blade,scores={move=0,wep1=0,Stun=0,Sneaking=0}] add butter_bladeab1
scoreboard players set @s[tag=itemUse:ds:butter_blade,scores={move=0,wep1=0,Stun=0,Sneaking=0}] move 26
scoreboard players set @s[tag=itemUse:ds:butter_blade,scores={move=25..,wep1=0,Stun=0,Sneaking=0}] wep1 100
tellraw @s[tag=itemUse:ds:butter_blade,scores={move=0,wep1=1..,Stun=0,Sneaking=0}] {"rawtext":[{"text":"§cThe Sword needs recharging: §e"},{"score":{"name": "@p","objective": "wep1"}},{"text":"§c."}]}


tag @s[tag=itemUse:ds:butter_blade,scores={move=0,wep2=0,Stun=0,Sneaking=1..}] add butter_bladeab2
scoreboard players set @s[tag=itemUse:ds:butter_blade,scores={move=0,wep2=0,Stun=0,Sneaking=1..}] move 41
scoreboard players set @s[tag=itemUse:ds:butter_blade,scores={move=60..,wep2=0,Stun=0,Sneaking=1..}] wep2 400
tellraw @s[tag=itemUse:ds:butter_blade,scores={move=0,wep2=1..,Stun=0,Sneaking=1..}] {"rawtext":[{"text":"§cThe Sword needs recharging: §e"},{"score":{"name": "@p","objective": "wep2"}},{"text":"§c."}]}

tag @s[scores={move=0},tag=butter_bladeab1] remove butter_bladeab1
tag @s[scores={move=0},tag=butter_bladeab2] remove butter_bladeab2

execute as @s[tag=butter_bladeab1,scores={move=1..}] at @s run function bosses/file/boss/summons/butter_ab1
execute as @s[tag=butter_bladeab2,scores={move=1..}] at @s run function bosses/file/boss/summons/butter_ab2
execute as @e[type=ds:butterjaffa_sword,name=butter_sword,c=1] at @s run function bosses/file/boss/summons/butter_sword2