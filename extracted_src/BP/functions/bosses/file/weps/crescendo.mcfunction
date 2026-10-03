
playanimation @s[scores={punch=1,Stun=0,Disabled=0,move=0}] animation.crescendo.slash


execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run damage @e[tag=!Frames,r=2.9] 30 suicide
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^6 run damage @e[tag=!Frames,r=2.9] 30 suicide
execute as @s[scores={punch=1..,Stun=0,Disabled=0,move=0}] at @s positioned ^^^6 run scoreboard players set @e[tag=!Frames,r=2.9] Hit 3
execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0}] at @s positioned ^^^3 run playsound mob.sword @a ~~~ 1 0.4 

execute as @s[scores={punch=1,Stun=0,Disabled=0,move=0}] at @s run scriptevent ds:knockback 8
tag @s[tag=!crescendo] add crescendo

scoreboard players set @s[scores={punch=1,Stun=0,Disabled=0,move=0}] Disabled 15

execute as @e[name=soulsteal] at @s run function bosses/file/weps/soulsteal

playanimation @s[tag=itemUse:ds:crescendo,scores={move=0,wep1=0,Stun=0,Sneaking=0,Disabled2=0}] animation.scythe.stun
execute as @s[tag=itemUse:ds:crescendo,scores={move=0,wep1=0,Stun=0,Sneaking=0,Disabled2=0}] at @s run playsound music.soul @a[r=100] 
execute as @s[tag=itemUse:ds:crescendo,scores={move=0,wep1=0,Stun=0,Sneaking=0,Disabled2=0}] at @s run summon ds:projectile soulsteal ^^1^1 
scoreboard players set @s[tag=itemUse:ds:crescendo,scores={move=0,wep1=0,Stun=0,Sneaking=0,Disabled2=0}] wep1 300
scoreboard players set @s[tag=itemUse:ds:crescendo,scores={move=0,wep1=1..,Stun=0,Sneaking=0,Disabled2=0}] Disabled2 33